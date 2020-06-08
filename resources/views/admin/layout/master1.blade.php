<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from demo.interface.club/londinium/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 01 Oct 2017 04:29:02 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1, maximum-scale=1">
<title>@yield('title') </title>
<meta name="csrf-token" content="{{ csrf_token() }}">​
{{-- <base href="{{asset('')}}"> --}}
<link href="../../../../css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="../../../css/londinium-theme.css" rel="stylesheet" type="text/css">
<link href="../../../css/styles.css" rel="stylesheet" type="text/css">
<link href="../../../css/cauhoi.css" rel="stylesheet" type="text/css">
{{-- <link href="../../../css/test.css" rel="stylesheet" type="text/css"> --}}
<link href="../../../css/admin.css" rel="stylesheet" type="text/css">
<link href="../../../css/icons.css" rel="stylesheet" type="text/css">
<link href="../../../css/fontawesome/css/all.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="../../../editor/ckeditor/ckeditor.js"></script>

<script type="text/javascript" src="{{asset('js/jquery/1.10.1/jquery.min.js')}}"></script>
<script type="text/javascript" src="../../../js/jqueryui/1.10.2/jquery-ui.min.js"></script>

<script type="text/javascript" src="../../../js/plugins/charts/sparkline.min.js"></script>

<script type="text/javascript" src="../../../js/plugins/forms/uniform.min.js"></script>
<script type="text/javascript" src="../../../js/plugins/forms/select2.min.js"></script>
<script type="text/javascript" src="../../../js/plugins/forms/inputmask.js"></script>
<script type="text/javascript" src="../../../js/plugins/forms/autosize.js"></script>
<script type="text/javascript" src="../../../js/plugins/forms/inputlimit.min.js"></script>
<script type="text/javascript" src="../../../js/plugins/forms/listbox.js"></script>
<script type="text/javascript" src="../../../js/plugins/forms/multiselect.js"></script>
<script type="text/javascript" src="../../../js/plugins/forms/validate.min.js"></script>
<script type="text/javascript" src="../../../js/plugins/forms/tags.min.js"></script>
<script type="text/javascript" src="../../../js/plugins/forms/switch.min.js"></script>

<script type="text/javascript" src="../../../js/plugins/forms/uploader/plupload.full.min.js"></script>
<script type="text/javascript" src="../../../js/plugins/forms/uploader/plupload.queue.min.js"></script>

<script type="text/javascript" src="../../../js/plugins/forms/wysihtml5/wysihtml5.min.js"></script>
<script type="text/javascript" src="../../../js/plugins/forms/wysihtml5/toolbar.js"></script>

<script type="text/javascript" src="../../../js/plugins/interface/daterangepicker.js"></script>
<script type="text/javascript" src="../../../js/plugins/interface/fancybox.min.js"></script>
<script type="text/javascript" src="../../../js/plugins/interface/moment.js"></script>
<script type="text/javascript" src="../../../js/plugins/interface/jgrowl.min.js"></script>
<script type="text/javascript" src="../../../js/plugins/interface/datatables.min.js"></script>
<script type="text/javascript" src="../../../js/plugins/interface/colorpicker.js"></script>
<script type="text/javascript" src="../../../js/plugins/interface/fullcalendar.min.js"></script>
<script type="text/javascript" src="../../../js/plugins/interface/timepicker.min.js"></script>

<script type="text/javascript" src="../../../js/bootstrap.min.js"></script>
<script type="text/javascript" src="../../../js/application.js"></script>

<!-- {{-- <base href="{{asset('')}}"> --}} -->
<script type="text/javascript" src="../../../js/plugins/charts/sparkline.min.js"></script>
<script type="text/javascript" src="../../../js/plugins/charts/flot.js"></script>
<script type="text/javascript" src="../../../js/plugins/charts/flot.orderbars.js"></script>
<script type="text/javascript" src="../../../js/plugins/charts/flot.pie.js"></script>
<script type="text/javascript" src="../../../js/plugins/charts/flot.time.js"></script>
<script type="text/javascript" src="../../../js/plugins/charts/flot.animator.min.js"></script>
<script type="text/javascript" src="../../../js/plugins/charts/excanvas.min.js"></script>
<script type="text/javascript" src="../../../js/plugins/charts/flot.resize.min.js"></script>



<script type="text/javascript" src="../../../js/charts/full/vertical_bars.js"></script>
<script type="text/javascript" src="../../../js/charts/full/horizontal_bars.js"></script>
<script type="text/javascript" src="../../../js/charts/full/simple_graph.js"></script>
<script type="text/javascript" src="../../../js/charts/full/auto_filled.js"></script>
<script type="text/javascript" src="../../../js/charts/full/auto_empty.js"></script>
<script type="text/javascript" src="../../../js/charts/full/multiple_axes.js"></script>

<script type="text/javascript" src="../../../js/charts/full/animated_1.js"></script>
<script type="text/javascript" src="../../../js/charts/full/animated_2.js"></script>
<script type="text/javascript" src="../../../js/charts/full/animated_3.js"></script>

<script type="text/javascript" src="../../../js/charts/full/donut.js"></script>
<script type="text/javascript" src="../../../js/charts/full/pie.js"></script>
<script type="text/javascript" src="../../../js/charts/full/pie_full.js"></script>

<script type="text/javascript" src="../../../js/charts/widgets/filled_green.js"></script>
<script type="text/javascript" src="../../../js/charts/widgets/filled_red.js"></script>
<script type="text/javascript" src="../../../js/charts/widgets/filled_blue.js"></script>

<script type="text/javascript" src="../../../js/charts/widgets/updating_1.js"></script>
<script type="text/javascript" src="../../../js/charts/widgets/updating_2.js"></script>
<script type="text/javascript" src="../../../js/charts/widgets/updating_3.js"></script>
     


<script src="../../../js/code/highcharts.js"></script>
<script src="../../../js/code/modules/exporting.js"></script>
<script src="../../../js/code/modules/export-data.js"></script>


</head>

<body>

	<!-- Navbar -->
	<div class="navbar navbar-inverse" role="navigation" style="background-color: #213351;margin-top: -20px">
		<div class="navbar-header">
            <a class="navbar-brand" href="{{asset('giaovien/dash/dashbroad_gv')}}" style="font-size: 18px"><img src="../../../imgs/quochuy.gif" alt="" width="50" height="50" style="margin-top: -10px;margin-right:8px;display: inline;">
               Hệ thống thi trắc nghiệm trường THPT Tân Lập</a>
			
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-icons">
				<span class="sr-only">Toggle navbar</span>
				<i class="icon-grid3"></i>
			</button>
			<button type="button" class="navbar-toggle offcanvas">
				<span class="sr-only">Toggle navigation</span>
				<i class="icon-paragraph-justify2"></i>
			</button>
		</div>

		<ul class="nav navbar-nav navbar-right collapse" id="navbar-icons">
			<li class="user dropdown">
				<a class="dropdown-toggle" data-toggle="dropdown">
					<img src="../../../imgs/demo/users/face1.png" alt="">
					<span>
						<span>@if(Auth::check() && Auth::user()->quyen ==1 )
							
							{{Auth::user()->name}}
							
						</span>
							 @endif
					</span>
					<i class="caret"></i>
				</a>
				<ul class="dropdown-menu dropdown-menu-right icons-right">
					<li><a href="#"><i class="icon-user"></i> Profile</a></li>
					<li><a href="#"><i class="icon-bubble4"></i> Messages</a></li>
					<li><a href="#"><i class="icon-cog"></i> Settings</a></li>
					<li>
						@if(Auth::check() && Auth::user()->quyen == 1)
								<a href="{{url('gvdangxuat')}}"><i class="icon-exit"></i> Logout</a>
							@else
						
								<a href="{{url('dangnhap')}}"><div class="login "><i class="fas fa-user"></i> Login</div></a>
							@endif
						
					</li>
				</ul>
			</li>
		</ul>
	</div>
	<!-- /navbar -->


	<!-- Page container -->
 	<div class="page-container" >


		<!-- Sidebar -->
		<div class="sidebar" style="background-color: #213351;color: #fff;font-size: 13px" >
			<div class="sidebar-content">

				<!-- User dropdown -->
				<div class="user-menu dropdown" >
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" style="background-color: #213351;color: #fff;">
						@if(Auth::check() && Auth::user()->quyen == 1)
						<img src="../../../imgs/demo/users/face1.png" alt="">
						<div class="user-info" >
							<span>
								
							{{Auth::user()->name}}</span>
							<span>
								
									Giáo Viên
								
							</span>
							 @endif
						</div>
					</a>
				</div>
				<!-- /user dropdown -->


				<!-- Main navigation -->
				<ul class="navigation">
					
					
						<li>
							<a href=""><span>Loại câu hỏi</span> <i class="fas fa-question"></i></a>
							<ul>
									<li>
										<a href="{{url('giaovien/loaicauhoi/dsloai')}}"><span style="padding-right: 80px">Danh sách loại</span> <i class="fas fa-list"></i> </a>
									</li>
									<li>
										<a href="{{url('giaovien/loaicauhoi/themloai')}}"><span style="padding-right: 120px">Thêm loại</span><i class="fas fa-plus"></i> </a>
									</li>
									
							</ul>
						</li>
						<li>
							<a href="{{url('giaovien/monthi/dsmonthi')}}"><span>Quản lý môn thi</span> 
								<i class="fas fa-book"></i></a>
							<ul>
								<li>
									<a href="{{url('giaovien/monthi/dsmonthi')}}"><span style="padding-right: 80px">Danh sách môn thi</span> <i class="fas fa-book"></i> </a>
								</li>
								<li><a href="{{url('giaovien/monthi/themmonthi')}}"><span style="padding-right: 50px">Thêm môn thi</span> <i class="fas fa-plus"></i> </a></li>
								
							</ul>
						</li>
						<li>
							<a href="{{url('giaovien/kythi/dskythi')}}"><span>Quản lý kỳ thi</span> <i class="fab fa-buromobelexperte"></i></a>
							<ul>
								<li>
									<a href="{{url('giaovien/kythi/dskythi')}}"><span style="padding-right: 80px">Danh sách kỳ thi</span> <i class="fas fa-list"></i> </a>
								</li>
								<li><a href="{{url('giaovien/kythi/themkythi')}}"><span style="padding-right: 50px">Thêm kỳ thi</span> <i class="fas fa-plus"></i> </a></li>
								
							</ul>
						</li>
						<li>
							<a href=""><span>Ngân hàng câu hỏi</span> <i class="fas fa-question"></i></a>
							<ul>
									<li>
										<a href="{{url('giaovien/cauhoi/dscauhoi')}}"><span style="padding-right: 80px">Danh sách câu hỏi</span> <i class="fas fa-list"></i> </a>
									</li>
									<li>
										<a href="{{url('giaovien/cauhoi/themcauhoi')}}"><span style="padding-right: 120px">Thêm câu hỏi</span><i class="fas fa-plus"></i> </a>
									</li>
									
							</ul>
						</li>
						<li>
							<a href="{{url('giaovien/dethi/dsdethi')}}"><span>Quản lý đề thi</span> <i class="fab fa-buromobelexperte"></i></a>
							<ul>
								<li>
									<a href="{{url('giaovien/dethi/dsdethi')}}"><span style="padding-right: 80px">Danh sách đề thi</span> <i class="fas fa-list"></i> </a>
								</li>
								<li><a href="{{url('giaovien/dethi/themdethi')}}"><span style="padding-right: 50px">Thiết kế ma trận đề thi</span> <i class="fas fa-edit"></i> </a></li>
								
							</ul>
						</li>

				</ul>
				<!-- /main navigation -->
				
			</div>
		</div>
		<!-- /sidebar -->

		<!-- Page content -->
		<div class="page-content">


			<!-- Page header -->
			<div class="page-header">
				<div class="page-title">
					<h3>@yield('title') </h3>
				</div>

			
			</div>
			<!-- /page header -->


			<!-- Breadcrumbs line -->
			<div class="breadcrumb-line">
				<ul class="breadcrumb">
					<li><a href="dashbroadgv">Trang chủ</a></li>
					<li class="active"> @yield('title')</li>
				</ul>
			</div>
			<!-- /breadcrumbs line -->
						<!-- default datatable inside panel -->
						 

								@yield('main')

								@yield('script')
			                	
				            
				        <!-- /default datatable inside panel -->


					<!-- Simple contact form -->
				
            	</div>

		</div>
	 		
		<!-- /page content -->


	</div>
	<!-- /page container -->

{{-- @yield('script');   --}}   
</body>

</html>