 @extends('layouts.e-com front layout.front_layout')
@section('content')


	<div class="span9">
    <ul class="breadcrumb">
		<li><a href="index.html">Home</a> <span class="divider">/</span></li>
		<li class="active"> THANKS</li>
    </ul>
	<h3>  THANKS  </h3>	
	<hr class="soft"/> 
	<div align="center">
		<h3>YOUR ORDER HAS BEEN PLACED SUCCESSFULLY</h3>
			<p>your order number is {{Session::get('order_id')}} and total amount is INR {{Session::get('grand_total')}}</p>
			<p>please make payment by clicking on below buttom</p>

			<form action="https://www.sandbox.paypal.com/cgi-bin/webscr{{--https://www.paypal.com/cgi-bin/webscr{{ https://www.sandbox.paypal.com/cgi-bin/webscr>>>link for developer--}}" method="post">
  <input type="hidden" name="cmd" value="_xclick">
  <input type="hidden" name="business" value="{{--vishalarora1087@gmail.com--}}sb-sqhrt5127305@business.example.com{{-->>for buisness account--}}">
  <input type="hidden" name="currency_code" value="INR">
  <input type="hidden" name="item_name" value="{{Session::get('order_id')}}">
  <input type="hidden" name="amount" value="{{round(Session::get('grand_total'),2)}}">
  <input type="hidden" name="first_name" value="{{$nameArr[0]}}">
  <input type="hidden" name="last_name" value="{{$nameArr[1]??''}}">
  <input type="hidden" name="address1" value="{{$orderDetails['address']}}">
  <input type="hidden" name="address2" value="">
  <input type="hidden" name="city" value="{{$orderDetails['city']}}">
  <input type="hidden" name="state" value="{{$orderDetails['state']}}">
  <input type="hidden" name="zip" value="{{$orderDetails['pincode']}}">
  <input type="hidden" name="email" value="{{$orderDetails['email']}}">
  <input type="hidden" name="country" value="{{$orderDetails['country']}}">

  <input type="hidden" name="return" value="{{url('paypal/success')}}">
  <input type="hidden" name="cancel_return" value="{{url('paypal/fail')}}">
  <input type="hidden" name="notify_url" value="{{url('paypal/ipn')}}">

    <input type="image" name="submit"
    src="https://www.paypalobjects.com/en_US/i/btn/btn_buynow_LG.gif"
    alt="PayPal - The safer, easier way to pay online">

</form>
	</div>
</div>
@endsection

<?php 
Session::forget('coupon_code');
Session::forget('couponAmount');
?>