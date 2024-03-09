 @extends('layouts.e-com admin layout.admin_layout')
@section('content')

<!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper text-capitalize">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>catalogues</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li> 
              <li class="breadcrumb-item active">shipping rate</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <section class="content"> 
      <div class="container-fluid">
        <x-e-com_alert/>
 {{--we need 2 action one for edit and other for add--}}       
      	<form action="{{url('/admin/edit_shipping_rate/'.$shippingrate['id'])}}" method="post" name="brand" id="brand" enctype="multipart/form-data">@csrf
      		{{--as id will not come for add category--}}
        <div class="card card-default">
          <div class="card-header">
            <h3 class="card-title">update shipping rates</h3>

            <div class="card-tools">
              <button type="button" class="btn btn-tool" data-card-widget="collapse"><i class="fas fa-minus"></i></button>
              <button type="button" class="btn btn-tool" data-card-widget="remove"><i class="fas fa-remove"></i></button>
            </div>
          </div>
          <div class="card-body">
          	<div class="row">
              <div class="col-md-6">
              	 <div class="form-group">
               	<label for="shippinh_charges">shipping country</label>
               	<input readonly="" class="form-control" value="{{$shippingrate['country']}}">
 {{--old function use for old validation for add data--}}               
               </div>
              </div>
          </div>

            <div class="row">
              <div class="col-md-6">
              	 <div class="form-group">
               	<label for="shippinh_charges">shipping charges</label>
               	<input type="text" name="shipping_charges" id="shippinh_charges" class="form-control" placeholder="enter shippinh charges" @if(!empty($shippingrate['shipping_charges'])) value="{{$shippingrate['shipping_charges']}}" @else value="{{old('shipping_charges')}}" @endif>
 {{--old function use for old validation for add data--}}               
               </div>
              </div>
          </div>
        </div>
          <div class="card-footer ">
            <button type="submit" class="btn btn-primary float-left">Submit</button>
          </div>
        </div>
    </form>

      
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
@endsection