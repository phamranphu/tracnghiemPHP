@extends('admin.layout.dashadmin');
@section('title','Quản Lý Người Dùng');
@section('main')
		<div class="design_cauhoi">
                 <a href="admin/user/themuser"><button data-toggle="modal" data-target="#modal_form_horizontal2" class="btn btnthem" >Thêm
                   </button></a>
                   
		</div>

		<div class="panel panel-default">
					                <div class="panel-heading">
					                	<h6 class="panel-title"><i class="fas fa-chalkboard-teacher"></i>QUẢN LÝ NGƯỜI DÙNG</h6></div>
					                <div class="datatable">
					                	@if(session('thongbao'))
											<div class="alert alert-success">
												<span class="glyphicon glyphicon-ok icon-oke"></span> {{session('thongbao')}}
											</div>
										@endif
		 <table class="table tbl" >
				                    <thead>
				                        <tr >
											<th>STT</th>
											<th>Tên người dùng</th>
											<th>Hình ảnh</th>
											<th>Địa chỉ</th>
											<th>Số điện thoại</th>
											<th>Email</th>
											<th>Quyền</th>
											<th>Sửa</th>
				                            <th>Xóa</th>
				                        </tr>
				                    </thead>
				                    <tbody>
				                    	<?php 
				                    	$stt= 1;
				                    	 foreach($user as $us ):$stt ?>
										<tr>
											<td>{{ $stt++ }}</td>
											<td id="name" name="name">{{$us->name}}</td>
											<td ><img src="imgs/user/{{$us->hinhanh}}" alt="" width="70" height="90"></td>
											<td >{{$us->diachi}}</td>
											<td >{{$us->sdt}}</td>
											<td id="name" name="email">{{$us->email}}</td>
												<td>	@if($us->quyen==0)
															Học sinh
													@elseif( $us->quyen==1)
															Giáo viên
													@else
															admin
													@endif
												</td>
											<td><a  href="admin/user/suauser/{{$us->id}}">
													<button data-toggle="modal"  class="btn btnsuach" >Sửa</button>
												</a>
											</td>
											<td><a onclick="return confirm('Bạn có chắc chắn muốn xóa không?')"
												href="admin/user/xoauser/{{$us->id}}">
													<button type="button" class="btn btnxoach">Xóa</button>
												</a>
											</td>
														
											</tr>
											<?php endforeach ?>
	                    </tbody>
				                </table>
				             </div>
				         </div>
@stop
