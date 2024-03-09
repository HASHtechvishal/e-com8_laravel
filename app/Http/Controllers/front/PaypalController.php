<?php

namespace App\Http\Controllers\front;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;

use Session;
use App\Cart;
use Auth;
use App\Order;

class PaypalController extends Controller
{
    public function paypal(){
        if (Session::has('order_id')) {
            //empty the user cart
           $orderDetails = Order::where('id',Session::get('order_id'))->first()->toArray();
           $nameArr = explode(' ',$orderDetails['name']);
           //dd($nameArr); die;
           return view('front e-com.paypal.paypal')->with(compact('orderDetails','nameArr'));
        }else{
            return redirect('/cart');
        }
    }


    public function success(){
        if (Session::has('order_id')) {
            //empty the user cart if payment is success
           Cart::where('user_id',Auth::user()->id)->delete();
           return view('front e-com.paypal.success');
        }else{
            return redirect('/cart');
        }
    }


    public function fail(){
           return view('front e-com.paypal.fail');
        }


    public function ipn(Request $req){
        $data = $req->all();
        if ($data['payment_status']=="Completed") {
            // process the order
            $order_id = Session::get('order_id');

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
        }
    } 
}
