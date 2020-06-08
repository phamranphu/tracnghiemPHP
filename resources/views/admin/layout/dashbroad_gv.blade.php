@extends('admin.layout.master');
@section('title','Dashboad Giáo Viên');
@section('main')

	<!-- Page header -->
			<!-- Info blocks -->
			<ul class="info-blocks">
				
				
					<li class="bg-primary ">
						<div class="top-info">
							<a href="#">Dashbroad</a>
							
						</div>
						<a href="dashbroad_gv"><i class="icon-pencil"></i></a>
						<span class="bottom-info bg-danger">5</span>
						{{-- <div class="anhmomo"></div> --}}
					</li>
				 <a href="{{url('giaovien/kythi/dskythi')}}">
							<li class="bg-danger">
								<div class="top-info">
									<a href="{{url('giaovien/kythi/dskythi')}}">Kỳ thi</a>
									
								</div>
								<a href="{{url('giaovien/kythi/dskythi')}}"><i class="fas fa-chalkboard-teacher"></i> </a>
								<span class="bottom-info bg-primary">5</span>
								
							</li>
				</a> 
				
			<a href="{{url('giaovien/dethi/dsdethi')}}">
				<li class="bg-success exam">
					<div class="top-info">
						<a href="{{url('giaovien/dethi/dsdethi')}}">Đề thi</a>
						
					</div>
					<a href="{{url('giaovien/dethi/dsdethi')}}"><i class="fas fa-file-signature"></i></a>
					<span class="bottom-info bg-primary">{{count($dethi)}}</span>
					{{-- <div class="anhmomo5"></div> --}}
				</li>
			</a>
			<!-- <a href="{{url('giaovien/khoi/dskhoi')}}">
					<li class="bg-primary grade">
						<div class="top-info">
							<a href="{{url('giaovien/khoi/dskhoi')}}">Grades</a>
						
						</div>

						<a href="{{url('giaovien/khoi/dskhoi')}}"><i class="icon-stats2"></i></a>
						<span class="bottom-info bg-danger">{{count($khoi)}}</span>
						{{-- <div class="anhmomo6"></div> --}}
					</li>
				</a> -->
			<a href="{{url('giaovien/monthi/dsmonthi')}}">
				<li class="bg-warning import">
					<div class="top-info">
						<a href="{{url('giaovien/monthi/dsmonthi')}}">Môn thi</a>
						
					</div>
					<a href="{{url('giaovien/monthi/dsmonthi')}}"><i class="fas fa-book"></i></a>
					<span class="bottom-info bg-primary">{{count($monthi)}}</span>
					{{-- <div class="anhmomo8"></div> --}}
				</li>
			</a>
			<a href="{{url('giaovien/cauhoi/dscauhoi')}}">
					<li class="bg-success">
						<div class="top-info">
							<a href="{{url('giaovien/cauhoi/dscauhoi')}}">Câu hỏi</a>
							
						</div>
						<a href="{{url('giaovien/cauhoi/dscauhoi')}}"><i class="fas fa-question"></i> </a>
						<span class="bottom-info bg-primary">{{count($cauhoi)}}</span>
						{{-- <div class="anhmomo2"></div> --}}
					</li>
				</a>
			</ul>
			<!-- /info blocks -->


			

			<div id="container" style="width: 1000px; height: 600px;margin: 0 auto;padding-top: 30px; padding-bottom: 100px;"></div>
@stop