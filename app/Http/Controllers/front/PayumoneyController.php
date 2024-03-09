<?php

namespace App\Http\Controllers\front;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Softon\Indipay\Facades\Indipay;
use Session;
use App\Order;
use App\Cart;
use Auth;

class PayumoneyController extends Controller
{
    public function payumoney(){
        $order_id = Session::get('order_id');
        $grand_total = Session::get('grand_total');
        $orderDetails = Order::where('id',$order_id)->first()->toArray();
        $nameArr = explode(' ',$orderDetails['name']);
        $parameters = [
            'txnid' => $order_id,
            'order_id' => $order_id,
            'amount' => $grand_total,
            'firstname' => $nameArr[0],
            'lastname' => $nameArr[1]?? '',
            'email' => $orderDetails['email'],
            'phone' => $orderDetails['mobile'],
            'productinfo' => $order_id,
            'service_provider' => '',
            'zipcode' => $orderDetails['pincode'],
            'city' => $orderDetails['city'],
            'state' => $orderDetails['state'],
            'country' => $orderDetails['country'],
            'address1' => $orderDetails['address'],
            'address2' => '',
            'curl' => url('payumoney/response'),
        ];

        $order = Indipay::prepare($parameters);
        return Indipay::process($order);
    }


    public function payumoneyResponse(Request $req){
        //for default gateway
        $response = Indipay::response($req);//it work when we take payu package
        //$response['status'] = "success";
        $response['unmappedstatus'] = "captured";
        if ($req['status']=="success" && $req['unmappedstatus']=="captured") {
            
           //update order status to paid
            Order::where('id',$order_id)->update(['order_status'=>'Paid']);

            //send order SMS
         /*   $message = "dear customer your order".$order_id."had been successfully placed with e-com website. we will intimate you once your order is shipped";
            $mobile = Auth::user()->mobile;
            Sms::sendSms($message,$mobile); */

            //send order email
            $orderDetails = Order::with('orders_products')->where('id',$order_id)->first()->toArray();
            //dd($orderDetails); die;


            foreach ($orderDetails['orders_products'] as $order) {
                // current product stock
                    $getProductStock = ProductsAttribute::where(['product_id'=>$order['product_id'],'size'=>$order['size']])->first()->toArray();

                //calculate new stock    
                    $newStock = $getProductStock['stock'] - $order['quantity'];

                //update new stock    
                    ProductsAttribute::where(['product_id'=>$order['product_id'],'size'=>$order['size']])->update(['stock'=>$newStock]);
            }
                                //reduce stock script



            //email
            $email = Auth::user()->email;
            $messageData = [
                'email' => $email,
                'name' => Auth::user()->name,
                'order_id' => $order_id,
                'orderDetails' => $orderDetails
            ];
            Mail::send('emails.order',$messageData,function($message) use($email){
                $message->to($email)->subject('order placed - e-com website');
            });

            //redirect user to success page 
            return redirect('/payumoney/success');

        }else{
             
             $order_id = Session::get('order_id');

              Order::where('id',$order_id)->update(['order_status'=>'Payment fail']);

              //redirect user to fail page 
            return redirect('/payumoney/fail');
        }
    }


    public function successPage(){
        if (Session::has('order_id')) {
            //empty the user cart if payment is success
           Cart::where('user_id',Auth::user()->id)->delete();
           return view('front e-com.payumoney.success');
        }else{
            return redirect('/cart');
        }
    }


    public function failPage(){
           return view('front e-com.payumoney.fail');
        }


    public function payumoneyVerify($id=null){

        if ($id>0) {
            // if checking for single order
            $orders = Order::where('id',$id)->get();
            //dd($orders); die;
        }else{
            //if checking for multiple orders get last 5 payumoney order
            $orders = Order::where('payment_gateway','payumoney')->take(5)->orderBy('id','Desc')->get();
        }

        foreach($orders as $key => $order){



            $key = 'gtKFFx';
        $salt = 'eCwWELxi';
        
        $command = "verify_payment";
        $var1 =$order->id;
        $hash_str = $key  . '|' . $command . '|' . $var1 . '|' . $salt ;
        $hash = strtolower(hash('sha512', $hash_str));
        $r = array('key' => $key , 'hash' =>$hash , 'var1' => $var1, 'command' => $command);

        $qs= http_build_query($r);
        $wsUrl = "https://test.payu.in/merchant/postservice?form=2";
        $c = curl_init();
        curl_setopt($c, CURLOPT_URL, $wsUrl);
        curl_setopt($c, CURLOPT_POST, 1);
        curl_setopt($c, CURLOPT_POSTFIELDS, $qs);
        curl_setopt($c, CURLOPT_CONNECTTIMEOUT, 30);
        curl_setopt($c, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($c, CURLOPT_SSL_VERIFYHOST, 0);
        curl_setopt($c, CURLOPT_SSL_VERIFYPEER, 0);
        $o = curl_exec($c);
        if (curl_errno($c)) {
          $sad = curl_error($c);
          throw new Exception($sad);
        }
        curl_close($c);

        $valueSerialized = @unserialize($o);
        if($o === 'b:0;' || $valueSerialized !== false) {
          print_r($valueSerialized);
        } 
        $o = json_decode($o);
        //echo "<pre>"; print_r($o); die;

        //get order details
        //$order = Order::where('id',$id)->first();

        foreach($o->transaction_details as $key => $val){
                if(($val->status=="success")&&($val->unmappedstatus=="captured")){
                    if($order->order_status == "Payment Cancelled"){
                        Order::where(['id' => $order->id])->update(['order_status' => 'Paid']);
                    } else if($order->order_status == "Payment Fail"){
                        Order::where(['id' => $order->id])->update(['order_status' => 'Paid']);
                    } else if($order->order_status == "New"){
                        Order::where(['id' => $order->id])->update(['order_status' => 'Paid']);
                    }else if($order->order_status == "Pending"){
                        Order::where(['id' => $order->id])->update(['order_status' => 'Paid']);
                    }                   
                }else{
                    if($order->order_status == "Paid"){
                        Order::where(['id' => $order->id])->update(['order_status' => 'Payment Cancelled']);
                    } else if($order->order_status == "New"){
                        Order::where(['id' => $order->id])->update(['order_status' => 'Payment Cancelled']);
                    }
                }
            }





        }  

    }
}
