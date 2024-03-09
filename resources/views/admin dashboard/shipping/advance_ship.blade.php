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
      	<form action="{{url('/admin/edit_advShipping_rate/'.$shippingrate['id'])}}" method="post" name="brand" id="brand" enctype="multipart/form-data">@csrf
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
               	<label for="shipping_charges">shipping country</label>
               	<input readonly="" class="form-control" value="{{$shippingrate['country']}}">
 {{--old function use for old validation for add data--}}               
               </div>
              </div>
          </div>

            <div class="row">
              <div class="col-md-6">
              	 <div class="form-group">
               	<label for="shipping_charges">shipping charges (0 to 500g)</label>
               	<input type="text" name="500" id="500" class="form-control" placeholder="enter shipping charges">
 {{--old function use for old validation for add data--}}               
               </div>
              </div>



              <div class="col-md-6">
                 <div class="form-group">
                <label for="shipping_charges">shipping charges (501g to 1000g)</label>
                <input type="text" name="1000" id="1000" class="form-control" placeholder="enter shipping charges">
 {{--old function use for old validation for add data--}}               
               </div>
              </div>



              <div class="col-md-6">
                 <div class="form-group">
                <label for="shipping_charges">shipping charges (1001g to 2000g)</label>
                <input type="text" name="2000" id="2000" class="form-control" placeholder="enter shipping charges">
 {{--old function use for old validation for add data--}}               
               </div>
              </div>

              <div class="col-md-6">
                 <div class="form-group">
                <label for="shipping_charges">shipping charges (2001 to 5000g)</label>
                <input type="text" name="5000" id="5000" class="form-control" placeholder="enter shipping charges">
 {{--old function use for old validation for add data--}}               
               </div>
              </div>

              <div class="col-md-6">
                 <div class="form-group">
                <label for="shipping_charges">shipping charges (above 500g)</label>
                <input type="text" name="above" id="above" class="form-control" placeholder="enter shipping charges">
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