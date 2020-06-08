@extends('admin.layout.dashadmin');
@section('title','Quản Lý Hệ Thống');
@section('main')

	<!-- Page header -->
			<!-- Info blocks -->
			<ul class="info-blocks">
					<li class="bg-primary ">
						<div class="top-info">
							<a href="#">Dashbroad</a>		
						</div>
						<a href="dashbroad_ad"><i class="icon-pencil"></i></a>
						<span class="bottom-info bg-danger">Dashbroad</span>
						
					</li>
		
				<a href="{{url('admin/giaovien/dsgiaovien')}}">
					<li class="bg-danger">
						<div class="top-info">
							<a href="{{url('admin/giaovien/dsgiaovien')}}">Teachers</a>
							
						</div>
						<a href="{{url('admin/giaovien/dsgiaovien')}}"><i class="fas fa-chalkboard-teacher"></i></a>
						<span class="bottom-info bg-primary">{{count($giaovien)}}</span>
						
					</li>
				</a>
				<a href="{{url('admin/hocsinh/dshocsinh')}}">
					<li class="bg-success">
						<div class="top-info">
							<a href="{{url('admin/giaovien/dshocsinh')}}">Students</a>
							
						</div>
						<a href="{{url('admin/giaovien/dshocsinh')}}"><i class="fas fa-user-graduate"></i> </a>
						<span class="bottom-info bg-primary">{{count($hocsinh)}}</span>
						
					</li>
				</a>

				<!--<a href="{{url('admin/user/dsuser')}}">
					<li class="bg-warning">
						<div class="top-info">
							<a href="{{url('admin/user/dsuser')}}">Users</a>		
						</div> 
						<a href="{{url('admin/user/dsuser')}}"><i class="fas fa-user"></i></a>
						<span class="bottom-info bg-primary">{{count($user)}}</span>
						{{-- <div class="anhmomo4"></div> --}}
					</li>
				</a>-->
			</ul>
			<!-- /info blocks -->

			<div id="container" style="width: 1000px; height: 600px;margin: 0 auto;padding-top: 30px; padding-bottom: 100px;"></div>
@stop