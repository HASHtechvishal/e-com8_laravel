@extends('layouts.e-com admin layout.admin_layout')
@section('content')
<!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper text-capitalize">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Orders</h1>

          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">shipping charges</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content"> 
      <div class="row">
        <div class="col-12">
          <!-- /.card -->
          <x-e-com_alert/>

          
            <div class="card">
            <div class="card-header">
              <h3 class="card-title">shipping charges</h3>
              
            </div>
            <!-- /.card-header -->
            <div class="card-body">
              <table id="shipping charges" class="table table-bordered table-striped">
                <thead>
                <tr class="text-center">
                 <th>ID</th>
                 <th>country</th>
                 <th>shipping charges </th>
                 <th>0 to 500g</th>
                 <th>501g to 1000g</th>
                 <th>1001g to 2000g</th>
                 <th>2001g to 5000g</th>
                 <th>above 5000g</th>
                 <th>status</th>
                 <th>actions</th>
                </tr>
                </thead>
                <tbody>
 @foreach($ShippingCharge as $shipping)                  
                <tr>
                  <td>{{$shipping['id']}}</td>   
                  <td>{{$shipping['country']}}</td>
                  <td>INR {{$shipping['shipping_charges']}} 
                    <a title="general shipping" href="{{url('admin/edit_shipping_rate/'.$shipping['id'])}}"><i class="fas fa-edit"></i></a>
                  </td>
                  <td>INR {{$shipping['0_500g']}}</td>
                  <td>INR {{$shipping['501_1000g']}}</td>
                  <td>INR {{$shipping['1001_2000g']}}</td>
                  <td>INR {{$shipping['2001g_5000g']}}</td>
                  <td>INR {{$shipping['above_5000g']}}</td>
                  <td>{{$shipping['status']}}</td>
                <td style="width: 120px;">
                <a title="advance shipping" href="{{url('admin/edit_advShipping_rate/'.$shipping['id'])}}"><i class="fas fa-edit" style="color: #ff6b6b"></i></a>
                </td>
               </tr>
               
 @endforeach               
                </tbody>
                <tfoot>
              
                </tfoot>
              </table>
            </div>
            <!-- /.card-body -->
          </div>
          <!-- /.card -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
@endsection 