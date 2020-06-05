<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\GiaoVien;
use DB;
use Excel;
use Auth;
use Illuminate\Support\Str;
use App\Imports\GiaoVienImport;

class GiaoVienController extends Controller
{
    public function __construct(){
        if(Auth::check()){
            view()->share('user',Auth::user());
        }
    }

    public function dashadminn(){ 

        return view('admin.layout.dashbroad_ad');
    }
    public function getgv(){
      
    	$giaovien = GiaoVien::all();
    	
    	return view('admin.giaovien.dsgiaovien',['giaovien'=>$giaovien]);
    }

    public function getthemgv(){
        return view('admin.giaovien.themgiaovien');
    }

    public function postthemgv(Request $request){
         $this->validate($request,
            [
                'tengiaovien' => 'required|min:3',
                
                'diachi' => 'required',
                'sdt' => 'required',
                'email'=>'required',
                // 'mamonhoc' => 'required'       
            ],
            [
                'tengiaovien.required'=> 'Bạn chưa nhập tên giáo viên',
                'tengiaovien.min' => 'Tên giáo viên ít nhất 3 kí tự',
                // 'tengiaovien.numeric' => 'Vui lòng nhập đúng ký tự chữ',    
                
                 'diachi.required' => 'Vui lòng nhập địa chỉ',
                 'sdt.required' => 'Vui lòng nhập số điện thoại',
                 'email.required'=>'Vui lòng nhập email',
                 // 'mamonhoc.required' => 'vui lòng nhập mã môn học',
            ]);
        //sau khi bắt lỗi xong, lấy dlieu lưu vào trong model
        $giaovien = new GiaoVien;
        $giaovien->hoten = $request->tengiaovien;
        $giaovien->sdt = $request->sdt;
        $giaovien->diachi = $request->diachi;
         $giaovien->email=$request->email;
        $giaovien->hinhanh = $request->hinhanh;
       
        //
        if($request->hasFile('hinhanh'))
        {
            $file =$request->file('hinhanh');
            
            $duoi= $file->getClientOriginalExtension(); // Lấy đuôi của file
            if($duoi != 'png' && $duoi != 'jpg' && $duoi != 'jpeg')
            {
                return redirect('admin/giaovien/themgiaovien')->with('loi','Bạn chỉ chọn được đuôi file là png,jpg,jpeg');
            }
            $file_name =$file->getClientOriginalName();
            // //đặt tên cho hình ảnh không trùng tên
            $hinhanh = Str::random(4)."_".$file_name;
            while(file_exists("upload/baocao/".$hinhanh))
            {
                $hinhanh = Str::random(4)."_".$file_name;
            }
            $file->move("imgs/user/",$hinhanh);

            $giaovien->hinhanh=$hinhanh;
        }
        else
        {
            $giaovien->hinhanh="";
        }
        //
        $giaovien->save();
        //dẫn về trang 
        return redirect('admin/giaovien/dsgiaovien')->with('thongbao','Thêm thành công!');
    }
     public function getsuagv($id){

         $giaovien = GiaoVien::find($id);

        return view('admin.giaovien.suagiaovien',['giaovien'=>$giaovien]); 
    }
     public function postsuagv($id,Request $request){
       $giaovien = GiaoVien::find($id);
        $this->validate($request,
            [
                'tengiaovien'=>'required|',
                'address'=>'required|',
                'number'=>'required|'
            ],
            [
                'tengiaovien.required' => 'Vui lòng nhập tên giáo viên',
                'address.required' => 'Vui lòng nhập địa chỉ',
                'number.required' => 'Vui lòng nhập số điện thoại',
            ]);
         $giaovien->hoten = $request->tengiaovien;
          $giaovien->diachi = $request->address;
           $giaovien->sdt = $request->number;
         $giaovien->save();
         return redirect('admin/giaovien/dsgiaovien')->with('thongbao','Sửa thành công!');
        
    }
    public function xoagiaovien($id){
         GiaoVien::destroy($id);
        return redirect('admin/giaovien/dsgiaovien')->with('thongbao','Bạn đã xóa thành công!');
    }
}
