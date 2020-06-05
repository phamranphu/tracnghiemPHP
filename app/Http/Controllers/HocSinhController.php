<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\HocSinh;
use DB;
use Excel;
use Auth;
use App\User;
use Illuminate\Support\Str;
use App\Imports\HocSinhImport;

class HocSinhController extends Controller
{
    public function __construct(){
        if(Auth::check()){
            view()->share('user',Auth::user());
        }
    }

    public function dashadminn(){

        return view('admin.layout.dashbroad_ad');
    }
    public function geths(){
        $hocsinh = User::orderBy('id','DESC')->where('quyen',0)->get();
       
    	return view('admin.hocsinh.dshocsinh',['hocsinh'=>$hocsinh]);
    }

    public function getthemhs(){
        return view('admin.hocsinh.themhocsinh');
    }
    public function postthemhs(Request $request){
         $this->validate($request,
             [
                'tenhocsinh' => 'required|min:3',
                
                'diachi' => 'required',
                'sdt' => 'required',
                'email'=>'required'
                // 'mamonhoc' => 'required'       
            ],
            [
                'tenhocsinh.required'=> 'Bạn chưa nhập tên học sinh',
                'tenhocsinh.min' => 'Tên học sinh ít nhất 3 kí tự',
                // 'tengiaovien.numeric' => 'Vui lòng nhập đúng ký tự chữ',    
                
                 'diachi.required' => 'Vui lòng nhập địa chỉ',
                 'sdt.required' => 'Vui lòng nhập số điện thoại',
                 'email.required' => 'vui lòng nhập email',
            ]);
        //sau khi bắt lỗi xong, lấy dlieu lưu vào trong model
        $hocsinh = new HocSinh;
        $hocsinh->hoten = $request->tenhocsinh;
        $hocsinh->sdt = $request->sdt;
        $hocsinh->diachi = $request->diachi;
        $hocsinh->email=$request->email;
        // $giaovien->id_mh=$request->mamonhoc;
        $hocsinh->hinhanh = $request->hinhanh;
       
        //
        if($request->hasFile('hinhanh'))
        {
            $file =$request->file('hinhanh');
            
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
        }
        else
        {
            $hocsinh->hinhanh="";
        }
        //
        $hocsinh->save();
        //dẫn về trang 
        return redirect('admin/hocsinh/dshocsinh')->with('thongbao','Thêm thành công!');
    }
     public function getsuahs($id){
         $hocsinh = HocSinh::find($id);
         
        return view('admin.hocsinh.suahocsinh',['hocsinh'=>$hocsinh]); 
    }
     public function postsuahs($id,Request $request){
       $hocsinh = HocSinh::find($id);
        $this->validate($request,
            [
                'tenhocsinh'=>'required|',
                'address'=>'required|',
                'number'=>'required|',
             
            ],
            [
                'tenhocsinh.required' => 'Vui lòng nhập tên học sinh',
                'address.required' => 'Vui lòng nhập địa chỉ',
                'number.required' => 'Vui lòng nhập số điện thoại',
                
            ]);
         $hocsinh->hoten = $request->tenhocsinh;
          $hocsinh->diachi = $request->address;
           $hocsinh->sdt = $request->number;
        
         $hocsinh->save();
         return redirect('admin/hocsinh/dshocsinh')->with('thongbao','Sửa thành công!');
        
    }
    public function xoahocsinh($id){
         HocSinh::destroy($id);
        return redirect('admin/hocsinh/dshocsinh')->with('thongbao','Bạn đã xóa thành công!');
    }
  
    
}
