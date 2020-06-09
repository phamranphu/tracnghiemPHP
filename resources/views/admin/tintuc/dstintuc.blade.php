
@extends('admin.layout.index');
@section('body')


	<div class="container-fluid tintuc">
			<div class="container">
				<div class="row">
					<div class="col-md-12 tieudetintuc">
				
						<h3 > TIN TỨC VÀ SỰ KIỆN</h3>
					</div>
				</div>


				@foreach($dstintucs as $key=>$value)

				
				<div class="row tintuc_first">
					<div class="col-md-2 col_ngaydang">
						<span class="ngaydang">{{$value->created_at}}</span>
					</div>
					<div class="col-md-1">
						<img src="{{ asset('imgs/lienket_tt.png') }}" alt="" class="anh_lienket" >
					</div>
					<div class="col-md-4">
						<a href="tintuc{{$key+1}}"><img src="imgs/banner/{{$value->hinhanh}}"  class="img_tintuc" alt=""></a>
					</div>
					<div class="col-md-5 trichdoan">
						<a href="tintuc{{$key+1}}" style="color: #000"><h4>{{$value->tieude}}</h4></a>
						<p>{{$value->tomtat}}</p>

						<p class="time_cmt"><i class="far fa-eye"></i> 123 &nbsp;&nbsp; <i class="far fa-comment"></i> 123 &nbsp;&nbsp; <i class="far fa-file-alt"></i> 1234</p>
					</div>

				</div>
					@endforeach
				<div class="phantrangtintuc">
					<a href="tintuc"><span><i class="fas fa-angle-double-left"></i></span></a>
					<a href="tintuc"><span>1</span></a>
					<a href="tintuc"><span><i class="fas fa-angle-double-right"></i></span></a>
				</div>
			</div>
		</div>

@stop