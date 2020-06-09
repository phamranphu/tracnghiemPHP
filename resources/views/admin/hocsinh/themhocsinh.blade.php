@extends('admin.layout.dashadmin');
@section('title','Quản Lý Học Sinh');
@section('main')
		 <div class="design_cauhoi">
				
					<a href="themhocsinh"><button data-toggle="modal" data-target="#modal_form_horizontal2" type="button" style="background: #213351" class="btn btn-primary">Thêm
                   </button></a>
			</div>



            <div class="panel panel-default khungbang">
                    <div class="panel-heading"><h6 class="panel-title"><i class="fas fa-chalkboard-teacher"></i><b class="tbl">NHẬP THÔNG TIN HỌC SINH</b></h6></div>
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
        		<form action="/posths" method="POST" enctype="multipart/form-data">
        			<input type="hidden" name="_token" value="{{csrf_token()}}">
					<table class="table">
						
						<tr class="tbl">
							<td class="style_row"><i class="fa fa-edit"></i> &nbsp; &nbsp;Tên Học Sinh</td>
							<td><input type="text" class="from-control nhaploai" placeholder="  Nhập tên học sinh" name="tenhocsinh" />
							</td>
						</tr>
						<tr class="tbl">
							<td class="style_row"><i class="fa fa-edit"></i> &nbsp; &nbsp;Hình ảnh</td>
							<td><input type="file" class="from-control "  name="hinhanh" />
							
							</td>
						</tr>

						<tr class="tbl">
							<td class="style_row"><i class="fa fa-edit"></i> &nbsp; &nbsp;Địa chỉ</td>
							<td><input type="text" class="from-control nhaploai" placeholder="  Nhập địa chỉ" name="diachi" />
							
							</td>
						</tr>

						<tr class="tbl">
							<td class="style_row"><i class="fa fa-edit"></i> &nbsp; &nbsp;Số điện thoại</td>
							<td><input type="text" class="from-control nhaploai" placeholder="  Nhập số điện thoại" name="sdt" />
							
							</td>
						</tr>
						<tr class="tbl">
							<td class="style_row"><i class="fa fa-edit"></i> &nbsp; &nbsp;Email</td>
							<td><input type="email" required="" class="from-control nhaploai" placeholder="  Nhập email" name="email" />
							
							</td>
						</tr>

						<!-- <tr class="tbl">
							<td class="style_row"><i class="fa fa-edit"></i> &nbsp; &nbsp;Tên môn dạy</td>
							<td><input type="text" class="from-control nhaploai" placeholder="  Nhập tên môn giảng dạy" name="mamonhoc" />
							
							</td>
						</tr> -->
						
					
						<tr>
							<td class="style_row tbl-row" colspan="2" >
								<button  style="border-radius: 5px; border: 0px;" type="submit" class="btn  btnsuach">Thêm</button>
								<button  style="border-radius: 5px; border: 0px;" type="reset" class="btn  btnxoach" ><a href="admin/user/dsuser" style="color: #FFF">Quay lại</a></button>
								
							</td>
						</tr>
					</table>
				</form>
             </div>
@stop