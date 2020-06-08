@extends('admin.layout.master1');
@section('title','Quản Lý Kỳ Thi');
@section('main')
		 <div class="design_cauhoi">
				
					<a href="admin/kythi/themkythi"><button data-toggle="modal"  class="btn btnthem" >Thêm</button></a>
			</div>



            <div class="panel panel-default khungbang">
                    <div class="panel-heading"><h6 class="panel-title"><i class="fas fa-chalkboard-teacher"></i><b class="tbl">NHẬP THÔNG TIN KY THI</b></h6></div>
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
                    	<form action="{{route('suakt',$kythi->id_ky)}}" method="POST" enctype="multipart/form-data">
        			<input type="hidden" name="_token" value="{{csrf_token()}}">
					<table class="table">
						
						<tr class="tbl">
							<td class="style_row"><i class="fa fa-edit"></i> &nbsp; &nbsp;Tên Ky Thi</td>
							<td><input type="text" value="{{$kythi->tenky}}" required="" class="from-control nhaploai" placeholder="  Nhập tên kỳ thi" name="tenkythi" />
							
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
