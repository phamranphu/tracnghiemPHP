@extends('admin.layout.master');
@section('title','Quản Lý Đề Thi');
@section('main')
<style>
	.select2-results__option[aria-selected=true] {
            display: none;
        }
        ul {
            list-style: none;
            margin: 0;
            padding: 0;
        }

        .modal-body {
            height: 200px;
            overflow-y: scroll;
        }
        #nguoinhan{
            overflow-y:scroll;
        }

        .sub-menu-check {
            margin-left: 20px;
        }

        .parent-check li {
            border-left: 1px solid rgb(51, 51, 51);;

        }
	</style>
<meta name="csrf-token" content="{{ csrf_token() }}">
		 <div class="design_cauhoi">
				
					<a href="themdethi"><button type="button" style="background: #213351" class="btn btn-primary">Thêm</button></a>
					{{-- <a href="import"> <button type="button" style="background: #213351" class="btn btn-primary">Import</button></a> --}}
					
			</div>



            <div class="panel panel-default khungbang">
                    <div class="panel-heading"><h6 class="panel-title"><i class="fas fa-chalkboard-teacher"></i><b class="tbl">NHẬP THÔNG TIN ĐỀ THI</b></h6></div>
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
        		<form action="themdethi" method="POST" >
        			<input type="hidden" name="_token" value="{{csrf_token()}}">
        			<input type="hidden" name="email" value="ngocthaohehe@gmail.com">
					<table class="table">
						
						<tr class="tbl">
							<td class="style_row"><i class="fa fa-edit"></i> &nbsp; &nbsp;Tên Kỳ Thi</td>
							<td>
								<select name="tenkythi" id="tenloaich" class="form-control nhaploai">
							
	                                @foreach($kythi as $kt)
										<option  value="{{$kt->id_ky}}">{{$kt->tenky}}</option>
	                                @endforeach

                       			 </select>
							
							</td>
						</tr>

						<tr class="tbl">
							<td class="style_row"><i class="fa fa-edit"></i> &nbsp; &nbsp;Tên Khối</td>
							<td>
								<select name="namekhoi" id="tenloaich" class="form-control nhaploai">
							
	                                @foreach($khoi as $tk)
										<option  value="{{$tk->id_khoi}}">{{$tk->tenkhoi}}</option>
	                                @endforeach

                       			 </select>
							
							</td>
						</tr>

						<tr class="tbl">
							<td class="style_row"><i class="fa fa-edit"></i> &nbsp; &nbsp;Tên Môn Thi</td>
							<td>
								<select name="namemonthi" id="tenloaich" class="form-control choose-subject nhaploai">
							
	                                @foreach($monthi as $mt)
										<option  value="{{$mt->id_mh}}">{{$mt->tenmh}}</option>
	                                @endforeach

                       			 </select>
							
							</td>
						</tr>

						<tr class="tbl">
							<td class="style_row"><i class="fa fa-edit"></i> &nbsp; &nbsp;Tên Giáo Viên</td>
							<td>
								<select name="namegv" id="tenloaich" class="from-control nhaploai">
							
	                                @foreach($giaovien as $gv)
										<option  value="{{$gv->id_gv}}">{{$gv->hoten}}</option>
	                                @endforeach

                       			 </select>
							
							</td>
						</tr>
						
						<tr class="tbl">
							<td class="style_row"><i class="fa fa-edit"></i> &nbsp; &nbsp;Ngày Thi</td>
							<td>
								<input type="date" class="from-control nhaploai"  placeholder="  Nhập ngày thi" name="ngaythi"  id="txtTen"/>
							
							</td>
						</tr>


						<tr class="tbl">
							<td class="style_row"><i class="fa fa-edit"></i> &nbsp; &nbsp;Thời Gian Thi</td>
							<td>
								<input type="text" class="from-control nhaploai" placeholder="  Nhập thời gian thi" name="thoigianthi"  id="txtTen"/>
							
							</td>
						</tr>


						<tr class="tbl">
							<td class="style_row"><i class="fa fa-edit"></i> &nbsp; &nbsp;Số câu</td>
							<td>
								<input type="text" class="socau" placeholder="  Nhập số câu" name="socau"  id="txtTen"/>
							
							</td>
						</tr>
						<tr class="tbl">
							<td class="style_row"><i class="fa fa-edit"></i> &nbsp; &nbsp;Câu hỏi</td>
							<td>
								<select name="cauhoi[]" id="cauhoi" multiple="multiple" class="select2 " style="width: 100%">
									<option>1111</option>
                                      
                                      
                                   </select>
							</td>
							
						</tr>

						<tr class="tbl">
							<td class="style_row"><i class="fa fa-edit"></i> &nbsp; &nbsp;Trạng Thái</td>
							<td>
								<select name="trangthai" id="tenloaich" class="from-control nhaploai">
							
	                                <option  value="Thi thử" >Thi thử</option>
	                                <option  value="Thi chính thức" >Thi chính thức</option>

                       			 </select>
							
							</td>
						</tr>
						
					
						<tr>
							<td class="style_row tbl-row" colspan="2" >
								<button type="submit" class="btn  btnsuach" onclick="thongbaoEmail()">Thêm</button>
								<button type="reset" class="btn  btnxoach" >Thoát</button>
								{{-- <input class="input_sub" type="submit" class="from-control" 
								style="border-radius: 5px; border: 0px;background-color: rgb(66, 115, 228); color: #fff; padding: 10px" name="submit" value="Thêm"/>
								<input class="input_sub" type="submit" class="from-control" name="submit" value="Thoát" style="background-color: red; padding: 10px;border-radius: 5px; border: 0px;"/> --}}
							</td>
						</tr>
					</table>
				</form>
             </div>

             	<script>
			$(document).ready(function() { 	

		// $("#cauhoi").select2();
		$("#cauhoi").select2({
		    placeholder: "Chọn câu hỏi",
		    allowClear: true,

		});
		$('.socau').change(function(){
			var focus = $('.socau').val();

		  $('#cauhoi').select2({
		    maximumSelectionLength: Number(focus),
			});
		});

	});

$(document).ready(function(){
			$.get('laycauhoi/' + $('.choose-subject').val(),function(data){
				// console.log(data);
				
				var optionSelect = "";
				$(data).each(function(i,item){
					console.log(item);
					optionSelect += "<option value='" + item.id_cauhoi + "'>" + item.noidung + "</option>";
				})

				$('#cauhoi').html(optionSelect);
				
			});
		
		})
		$('.choose-subject').on('change',function(e){ 
			$.get('laycauhoi/' + $('.choose-subject').val(),function(data){
				console.log(data);
				var optionSelect = "";
				$(data).each(function(i,item){

					optionSelect += "<option value='" + item.id_cauhoi + "'>" + item.noidung + "</option>";
				})

				$('#cauhoi').html(optionSelect);
			
			});
		
	
		})
			
	function thongbaoEmail(){
				
 			$.ajaxSetup({
			    headers: {
			        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
			    }
			});
		    $.ajax({
					url: '../../sendmail',
					type: 'POST',
					data: {

						'_token': $('input[name=_token]').val(),
						'email': $('input[name=email]').val(),
					}, 
					success: function (data) {
						if((data.errors)){
							alert("Thất bại!");
						}
																
					}
			});
			
        

	}

		

	</script>	
@stop