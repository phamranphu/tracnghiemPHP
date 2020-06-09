@extends('admin.layout.master');
@section('title','Quản Lý Kỳ Thi');
@section('main')
		<div class="design_cauhoi">
               
                   <a href="admin/kythi/themkythi"><button data-toggle="modal" data-target="#modal_form_horizontal2" type="button" style="background: #213351" class="btn btn-primary">Thêm
                   </button></a>
</div>
<div class="panel panel-default">
					                <div class="panel-heading">
					                	<h6 class="panel-title"><i class="fas fa-chalkboard-teacher"></i>QUẢN LÝ KỲ THI</h6></div>
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
											<th>Tên Kỳ Thi</th>
											
				                        </tr>
				                    </thead>
				                    <tbody>
				                    	<?php 
				                    	$stt= 1;
				                    	 foreach($kythi as $kt ):$stt ?>
										<tr>
											<td>{{ $stt++ }}</td>
											<td >{{$kt->tenky}}</td>
											<td><a  href="suakythi/{{$kt->id_ky}}">
													<button data-toggle="modal"  class="btn btnsuach" >Sửa</button>
												</a>
											</td>
											<td><a onclick="return confirm('Bạn có chắc chắn muốn xóa không?')"
												href="xoakythi/{{$kt->id_ky}}">
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