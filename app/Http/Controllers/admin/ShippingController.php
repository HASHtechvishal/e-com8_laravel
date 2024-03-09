<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\ShippingCharge;
use Session;


class ShippingController extends Controller
{
    public function ShippingController(){
    	Session::put('page','shipping-charges');
    	$ShippingCharge = ShippingCharge::get()->toArray();
    	//dd($ShippingCharge); die;
    	return view('admin dashboard.shipping.shipping_charges')->with(compact('ShippingCharge'));
    }

    public function editShippingRate($id, Request $req){

    	if ($req->isMethod('post')) {
    		$data = $req->all();
    		//dd($data); die;
    		ShippingCharge::where('id',$id)->update(['shipping_charges'=>$data['shipping_charges']]);
    		$msg = "shipping charges updated successfully";
    		return redirect('admin/shipping-charges');
    	}
    	$shippingrate = ShippingCharge::where('id',$id)->first()->toArray();
    	//dd($shippingrate); die;
    	return view('admin dashboard.shipping.edit_shipping_charges')->with(compact('shippingrate'));
    } 


    public function editAdvShippingRate($id, Request $req){

        if ($req->isMethod('post')) {
            $data = $req->all();
            //dd($data); die;
            ShippingCharge::where('id',$id)->update(['0_500g'=>$data['500'],'501_1000g'=>$data['1000'],'1001_2000g'=>$data['2000'],'2001g_5000g'=>$data['5000'],'above_5000g'=>$data['above']]);
            $msg = "shipping charges updated successfully";
            return redirect('admin/shipping-charges');
        }
        $shippingrate = ShippingCharge::where('id',$id)->first()->toArray();
        //dd($shippingrate); die;
        return view('admin dashboard.shipping.advance_ship')->with(compact('shippingrate'));
    }
}
