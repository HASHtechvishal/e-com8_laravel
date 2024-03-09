 @extends('layouts.e-com front layout.front_layout')
@section('content')


	<div class="span9">
    <ul class="breadcrumb">
		<li><a href="index.html">Home</a> <span class="divider">/</span></li>
		<li class="active"> SUCCESS</li>
    </ul>
	<h3>  SUCCESS  </h3>	
	<hr class="soft"/> 
	<div align="center">
		<h3>YOUR PAYMENT HAS BEEN PLACED SUCCESSFULLY</h3>
    <p>thanks for the payment. we will process your order very soon.</p>
			<p>your order number is {{Session::get('order_id')}} and total amount paid is INR {{Session::get('grand_total')}}</p>
	</div>
</div>
@endsection

<?php 
Session::forget('grand_total');
Session::forget('order_id');
Session::forget('coupon_code');
Session::forget('couponAmount');
?> 