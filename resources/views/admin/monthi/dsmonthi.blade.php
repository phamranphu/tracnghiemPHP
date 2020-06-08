@extends('admin.layout.master');
@section('title','Quản Lý Môn Thi');
@section('main')
		<div class="design_monthi">
               
                   
                   <a href="admin/monthi/themmonthi"><button data-toggle="modal" data-target="#modal_form_horizontal2" type="button" style="background: #213351" class="btn btn-primary">Thêm
                   </button></a>
                  
		</div>

		<div class="panel panel-default">
					                <div class="panel-heading">
					                	<h6 class="panel-title"><i class="fas fa-chalkboard-teacher"></i>QUẢN LÝ MÔN THI</h6></div>
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
											<th>Tên môn</th>
												<th>Hình ảnh</th>
												<th>Khối</th>
											<th>Sửa</th>
				                            <th>Xóa</th>
				                           
				                        </tr>
				                    </thead>
				                    <tbody>
				                    	<?php 
				                    	$stt= 1;
				                    	 foreach($monthi as $monthi ):$stt ?> 
										<tr>
											<td>{{ $stt++ }}</td>
											<td id="name" name="tenmonthi">{{$monthi->tenmh}}</td>
											<td ><img src="../../imgs/monhoc/{{$monthi->hinhanh}}" alt="" width="70" height="90"></td>	
											<td id="name" name="tenmonthi">{{$monthi->tenmh}}</td>		
											<td><a  href="suamonthi/{{$monthi->id_mh}}">
													<button data-toggle="modal"  class="btn btnsuach" >Sửa</button>
												</a>
											</td>
											<td><a onclick="return confirm('Bạn có chắc chắn muốn xóa không?')"
												href="xoamonthi/{{$monthi->id_mh}}">
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