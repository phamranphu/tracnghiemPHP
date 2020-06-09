<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Illuminate\Notifications\Notifiable;
use Validator;
use App\User;
use App\HocSinh;
use App\GiaoVien;
use Illuminate\Support\Str;
use Hash;
use Auth;

class UserController extends Controller

{
	function __construct(){
		if(Auth::check()){
			view()->share('user',Auth::user());
		}
	}

    public function getuser(){
    	$user = User::all();
    	return view('admin.user.dsuser',['user'=>$user]);
    }

     public function getthemuser(){
        return view('admin.user.themuser');
    }

    public function postthemuser(Request $request){

        $this->validate($request,
            [
                'tenuser' => 'required|min:3',
                 'diachi' => 'required',
                'sdt' => 'required',
                'email' => 'required|email|unique:users',
                'password' => 'required|min:6|max:20',
                'quyen' => 'required'       
            ],
            [
                'tenuser.required'=> 'Bạn chưa nhập tên người dùng',
                'tenuser.min' => 'Tên người dùng ít nhất 3 kí tự',
                'tenuser.numeric' => 'Vui lòng nhập đúng ký tự chữ',
                 'diachi.required' => 'Vui lòng nhập địa chỉ',
                 'sdt.required' => 'Vui lòng nhập số điện thoại',
                'email.required'=>'Vui lòng nhập email',
                'email.email'=>'Vui lòng nhập đúng định dạng email',
                 'email.unique'=>'Email đã tồn tại vui lòng nhập emil khác!',
                 'password.required'=>'Vui lòng nhập password',
                 
                 'password.min'=>'Password ít nhất 6 ký tự',
                 'password.max'=>'Password không quá 20 ký tự',

            ]);
        //sau khi bắt lỗi xong, lấy dlieu lưu vào trong model
        $user = new User;
        $user->name = $request->tenuser;
        $user->email = $request->email;
         $user->sdt = $request->sdt;
        $user->diachi = $request->diachi;
        $user->password = bcrypt($request->password);
        $user->quyen = $request->quyen;
        
        if($request->quyen ==0){
            $hocsinh = new HocSinh;
            $hocsinh->hoten = $request->tenuser;
            $hocsinh->sdt = $request->sdt;
            $hocsinh->diachi = $request->diachi;
         if($request->hasFile('hinhanh')){
            $file =$request->hinhanh;
            $duoi= $file->getClientOriginalExtension(); // Lấy đuôi của file
            if($duoi != 'png' && $duoi != 'jpg' && $duoi != 'jpeg')
            {
                return redirect('admin/hocsinh/themhocsinh')->with('loi','Bạn chỉ chọn được đuôi file là png,jpg,jpeg');
            }

            $file_name =$file->getClientOriginalName();
            // //đặt tên cho hình ảnh không trùng tên
            $hinhanh = Str::random(4)."_".$file_name;

            while(file_exists("upload/baocao/".$hinhanh))
            {
                $hinhanh = Str::random(4)."_".$file_name;
            }
            $file->move("imgs/user/",$hinhanh);


            $hocsinh->hinhanh=$hinhanh;
            $user->hinhanh=$hinhanh;
            $hocsinh->email =  $request->email;
        }
        else{
            $hocsinh->hinhanh="";
        }
            $hocsinh->save();
        }
        if($request->quyen ==1){

            $giaovien = new GiaoVien;
            $giaovien->hoten = $request->tenuser;
            $giaovien->sdt = $request->sdt;
            $giaovien->diachi = $request->diachi;
            if($request->hasFile('hinhanh')){
            $file =$request->file('hinhanh');;
            $duoi= $file->getClientOriginalExtension(); // Lấy đuôi của file
            if($duoi != 'png' && $duoi != 'jpg' && $duoi != 'jpeg')
            {
                return redirect('admin/giaovien/themgiaovien')->with('loi','Bạn chỉ chọn được đuôi file là png,jpg,jpeg');
            }

            $file_name =$file->getClientOriginalName();
            // //đặt tên cho hình ảnh không trùng tên
            $hinhanh = Str::random(4)."_".$file_name;

            while(file_exists("imgs/user/".$hinhanh))
            {
                $hinhanh = Str::random(4)."_".$file_name;
            }

            $file->move("imgs/user/",$hinhanh);
            $giaovien->hinhanh=$hinhanh;
            $giaovien->email =  $request->email;
            // dd(public_path("imgs/user/".$hinhanh));
            // die();
            $user->hinhanh=$hinhanh;

        }
        else{
            $giaovien->hinhanh="";
        }
            $giaovien->save();
        }
            // if($request->hasFile('hinhanh')){
                
                if($request->quyen == 2){
                    $file =$request->hinhanh;
                    $duoi= $file->getClientOriginalExtension(); // Lấy đuôi của file
                    if($duoi != 'png' && $duoi != 'jpg' && $duoi != 'jpeg')
                    {
                        return redirect('admin/user/themuser')->with('loi','Bạn chỉ chọn được đuôi file là png,jpg,jpeg');
                    }
                    $file_name =$file->getClientOriginalName();
                
                    $hinhanh = Str::random(4)."_".$file_name;
                    while(file_exists("imgs/user".$hinhanh))
                    {
                        $hinhanh = Str::random(4)."_".$file_name;
                    }
                    $file->move("imgs/user/",$hinhanh);
                    $user->hinhanh=$hinhanh;
                }
                
                
                // dd($hinhanh);
                // die();
            // }
            // else{
            //     $user->hinhanh="";
            // }
        $user->save();
        //dẫn về trang 
        return redirect('admin/user/dsuser')->with('thongbao','Thêm thành công!');

    	
    }

    public function getsuauser($id){
        $user = User::find($id);
        return view('admin.user.suauser',['user'=>$user]);
    }

    public function postsuauser($id,Request $request){
        $user = User::find($id);
      
        //sau khi bắt lỗi xong, lấy dlieu lưu vào trong model
        $user->name= $request->tenuser;
        // $user->email = $request->email;

        $user->password = bcrypt($request->password);
        $user->quyen = $request->quyen;
        $user->save();
        //dẫn về trang 
        return redirect('admin/user/dsuser')->with('thongbao','Sửa thành công!');
    }
    public function xoauser($id){
         User::destroy($id);
        return redirect('admin/user/dsuser')->with('thongbao','Bạn đã xóa thành công!');
    }

    function getProfile($id){
        $profile = User::find($id);

        return view('admin.profile.myprofile',['profile'=>$profile]);
    }
} 
