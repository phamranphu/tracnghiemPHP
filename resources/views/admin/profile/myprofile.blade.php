@extends('admin.layout.dashadmin1');
@section('title','Profile');
@section('main')
	<style type="text/css">
.white-box {
    background: rgb(255, 255, 255);
    padding: 20px;
    padding-bottom: 0;
}
.user-bg {
    height: 197px;
    position: relative;
    margin: -25px;
    overflow: hidden;
}
.user-bg .overlay-box {
    opacity: 0.9;
    position: absolute;
    top: 0px;
    left: 0px;
    right: 0px;
    height: 100%;
    text-align: center;
    background: rgb(112, 124, 210);
}
.user-bg .overlay-box .user-content {
    margin-top: 20px;
    padding: 15px;
}
img
{
	margin-left: 400px;
}
.thumb-lg {
    height: 88px;
    width: 88px;
}
.img-circle {
    border-radius: 50%;
}
.text-white {
    color: rgb(255, 255, 255);
}
h4 {
	margin-left: 250px;
    line-height: 22px;
    font-size: 18px;
}
h5{
	margin-left: 250px;
}
.user-btm-box {
    clear: both;
    padding: 40px 0px 10px;
    overflow: hidden;
}
h2 {
    line-height: 25px;
    font-size: 25px;
}
.text-purple {
    color: #707cd2;
}
.text-danger {
    color: #f33155;
}

</style>
	<!-- <div class="container">
		<div class="row">
			<div class="col-md-6">
				<label>Họ tên : </label>
				<span>{{$profile->name}}</span>	
			</div>
			<div class="col-md-6">
				<label>Email : </label>
				<span>{{$profile->email}}</span>	
			</div>
		</div>
		<div class="row">
			<div class="col-md-6">
				<label>Địa chỉ : </label>
				<span>{{$profile->diachi}}</span>	
			</div>
			<div class="col-md-6">
				<label>Số điện thoại : </label>
				<span>{{$profile->sdt}}</span>	
			</div>
		</div>
		<div class="row">
			<div class="col-md-6">
				<label>Ảnh : </label>
				<span><img src="imgs/user/{{$profile->hinhanh}}" alt="" width="70" height="90"></span>	
			</div>
			<div class="col-md-6">
				<label>Chức vụ : </label>
				@if($profile->quyen == 0)
				<span>Học sinh</span>	
				@elseif($profile->quyen == 1)
				<span>Giáo viên/span>
					@else
					<span>Admin</span>
				@endif
			</div>
		</div> -->

	</div>
	<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row" style="margin-bottom: 40px">
        		<div class="col-lg-12">
                <h1 class="page-header">Cá Nhân</h1>
                </div>
            <div class="col-lg-5">
            	<div class="panel panel-default">
                    <div class="panel-heading">
                        <i class="fa fa-user fa-fw"></i> Thông tin cá nhân
                    </div>
                    <div class="panel-body">
                        <div class="white-box">
                            <div class="user-bg"> <img width="100px" alt="user" src="imgs/user/{{$profile->hinhanh}}">
                                <div class="overlay-box">
                                    <div class="user-content">
                                       <!--  <a href="javascript:void(0)"><img  src="{{ $profile->avatar}}" class="thumb-lg img-circle" alt="img"></a> -->
                                        <h4 class="text-white">{{ $profile->name}}</h4>
                                        
                                        <h5 class="text-white">{{ $profile->email}}</h5> </div>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-7">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <i class="fa fa-cog" aria-hidden="true"></i> Thiết Đặt
                    </div>
                    <!-- /.panel-heading -->
                    <div class="panel-body">
                        <!-- Nav tabs -->
                        <ul class="nav nav-tabs">
                            <li class="active"><a href="#home" data-toggle="tab" aria-expanded="true">Cập nhật cá nhân</a>
                            </li>
                        </ul>

                        <!-- Tab panes -->
                        <div class="tab-content">
                            <div class="tab-pane fade active in" id="home">
                            	<br>
                            	@if(count($errors)>0)
				                    <div class="alert alert-danger">
				                        @foreach($errors->all() as $err)
				                            {{ $err }}<br>
				                        @endforeach
				                    </div>
				                @endif
				                @if(Session::has('flash_success'))
					                <div class="alert alert-success">
					                    {{ session('flash_success') }}
					                </div>
				                @endif
                                <form action="admin/user/suauser/{{$profile->id}}" method="POST" enctype="multipart/form-data">
					                <input type="hidden" name="_token" value="{{ csrf_token() }}">
					                    <div class="form-group">
					                        <label>Username</label>
					                        <input class="form-control" name="name" type="text"  />
					                    </div>
					                  
					                     <div class="form-group">
					                        <label>Email</label>
					                        <input class="form-control" name="email" type="text" value="{{ $profile->email }}" />
					                    </div>
					                     <div class="form-group">
					                        <label>Avatar</label>
					                        <input class="form-control" name="avatar" type="file"/>
					                    </div>

					                      <div class="form-group">
					                        <label>Quyền</label>
					                        <td>
								<select name="quyen" id="tenloaich" class="form-control nhaploai">
									
											@if($profile->quyen == '0')
												<option selected="true" value="0">Học sinh</option>
												<option  value="1" >Giáo viên</option>
												<option  value="2" >Admin</option>
											@elseif($profile->quyen == '1')
											<option selected="true" value="1" >Giáo viên</option>
												<option  value="0" >Học sinh</option>
												<option  value="2" >Admin</option>
												@elseif($profile->quyen == '2')
										<option selected="true" value="2">Admin</option>
												<option  value="0" >Học sinh</option>
												<option  value="1" >Giáo viên</option>
											@endif 
	                              
                       			 </select>
							</td>
					                    </div>
					                    
                                        <div class="form-group">
                                       <!--      <input type="checkbox" id="changePassword" name="changePassword" > -->
                                            <label>Đổi mật khẩu </label>
                                           <td><input type="password"  required="" class="from-control nhaploai" placeholder="  Nhập password" name="password"/>
							</td>
                                        </div>
					                    <button type="reset" class="btn btn-default btn-sm">Làm mới</button>
					                    <button type="submit" class="btn btn-success btn-sm">Cập Nhật</button>

					             </form>
                            </div>
                        </div>
                    </div>
                    <!-- /.panel-body -->
                </div>
                <!-- /.panel -->
            </div>
        </div>
    </div>
</div>


@endsection
<!-- @section('script')
<script>
    
    $(document).ready(function(){
        $("#changePassword").change(function(){

            if($(this).is(":checked"))
            {
                $(".password").removeAttr('disabled');

            }
            else
            {
                $(".password").attr('disabled','');
            }
        });
        
    });

</script> -->

@endsection