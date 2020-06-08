@extends('admin.layout.dashadmin');
@section('title','Quản Lý Giáo Viên');
@section('main')
		 <div class="design_cauhoi">
				
					<a href="admin/giaovien/themgiaovien"><button data-toggle="modal"  class="btn btnthem" >Thêm</button></a>
			</div>



            <div class="panel panel-default khungbang">
                    <div class="panel-heading"><h6 class="panel-title"><i class="fas fa-chalkboard-teacher"></i><b class="tbl">NHẬP THÔNG TIN GIÁO VIÊN</b></h6></div>
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
                    	<form action="admin/giaovien/suagiaovien/{{$giaovien->id_gv}}" method="POST" enctype="multipart/form-data">
        			<input type="hidden" name="_token" value="{{csrf_token()}}">
					<table class="table">
						
						<tr class="tbl">
							<td class="style_row"><i class="fa fa-edit"></i> &nbsp; &nbsp;Tên Giáo Viên</td>
							<td><input type="text" value="{{$giaovien->hoten}}" required="" class="from-control nhaploai" placeholder="  Nhập tên giáo viên" name="tengiaovien" />
							
							</td>
						</tr>
						<tr class="tbl">
							<td class="style_row"><i class="fa fa-edit"></i> &nbsp; &nbsp;Địa chỉ</td>
							<td><input type="address"  required="" class="from-control nhaploai" placeholder="  Nhập address" name="address"/>
							
							</td>
						</tr>
						<tr class="tbl">
							<td class="style_row"><i class="fa fa-edit"></i> &nbsp; &nbsp;Số điện thoại</td>
							<td><input type="text"  required="" class="from-control nhaploai" placeholder="  Nhập số điện thoại" name="number"/>
							
							</td>
						</tr>
						<tr class="tbl">
							<td class="style_row">
								<i class="fa fa-edit"></i> &nbsp; &nbsp;Email</td>
							<td><input type="email" value="{{$giaovien->email}}" disabled="" required="" class="from-control nhaploai" placeholder="  Nhập email" name="email" />
							
							</td>
						</tr>
						<tr>
							<td class="style_row tbl-row" colspan="2" >
								<button  class="btn btnsuach" type="submit">Sửa</button>
								<button type="reset" class="btn  btnxoach" ><a href="admin/giaovien/dsgiaovien" style="color: #FFF">Quay lại</a></button>
								
							</td>
						</tr>
					</table>
				</form>

        		
             </div>
@stop
