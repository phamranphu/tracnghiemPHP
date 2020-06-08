@extends('admin.layout.master');
@section('title','Quản Lý KỲ THI');
@section('main')
		 <div class="design_cauhoi">
				
					<a href="themkythi"><button data-toggle="modal" data-target="#modal_form_horizontal2" type="button" style="background: #213351" class="btn btn-primary">Thêm
                   </button></a>
			</div>



            <div class="panel panel-default khungbang">
                    <div class="panel-heading"><h6 class="panel-title"><i class="fas fa-chalkboard-teacher"></i><b class="tbl">NHẬP THÔNG TIN KỲ THI</b></h6></div>
                    @if(count($errors)>0)
						<div class="alert alert-danger">
							@foreach($errors->all() as $err)
								<span class="glyphicon glyphicon-remove icon-remove"></span> {{$err}} <br>
							@endforeach
						</div>
                    @endif

					@if(session('thongbao'))
						<div class="alert alert-success">
							<span class="glyphicon glyphicon-ok icon-oke" ></span> {{session('thongbao')}}
						</div>
					@endif
                    <!-- <div class="datatable"> -->
        		<form action="/postkt" method="POST" enctype="multipart/form-data">
        			<input type="hidden" name="_token" value="{{csrf_token()}}">
					<table class="table">
						
						<tr class="tbl">
							<td class="style_row"><i class="fa fa-edit"></i> &nbsp; &nbsp;Tên Kỳ Thi</td>
							<td><input type="text" class="from-control nhaploai" placeholder="  Nhập tên kỳ thi" name="tenkythi" />
							</td>
						</tr>
						<tr>
							<td class="style_row tbl-row" colspan="2" >
								<button  style="border-radius: 5px; border: 0px;" type="submit" class="btn  btnsuach">Thêm</button>
								<button  style="border-radius: 5px; border: 0px;" type="reset" class="btn  btnxoach" >Thoát</button>
								
							</td>
						</tr>
					</table>
				</form>
             </div>
@stop