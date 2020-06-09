<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\KyThi;

class KyThiController extends Controller
{
    public function getKythi(){
    	$kythi = KyThi::all();
    	return view('admin.kythi.dskythi',['kythi'=>$kythi]);
    }

    public function getKythihome(){
    	$kythi = KyThi::all();
    	return view('admin.layout.trangchu',['kythi'=>$kythi]);
    }

    public function getthemkt(){
        return view('admin.kythi.themkythi');
    }
    public function postthemkt(Request $request){
         $this->validate($request,
            [
                'tenkythi' => 'required|min:3',      
            ],
            [
                'tenkythi.required'=> 'Bạn chưa nhập tên kỳ thi',
                'tenkythi.min' => 'Tên kỳ thi ít nhất 3 kí tự',
            ]);
        //sau khi bắt lỗi xong, lấy dlieu lưu vào trong model
        $kythi = new KyThi;
        $kythi->tenky = $request->tenkythi;
        $kythi->save();
        //dẫn về trang 
        return redirect('giaovien/kythi/dskythi')->with('thongbao','Thêm thành công!');
    }
    public function getsuakt($id){

         $kythi= KyThi::find($id);

        return view('admin.kythi.suakythi',['kythi'=>$kythi]); 
    }
     public function postsuakt($id,Request $request){
       $kythi = KyThi::find($id);
        $this->validate($request,
            [
                'tenkythi'=>'required|'
            ],
            [
                'tenkythi.required' => 'Vui lòng nhập tên kỳ thi',
            ]);
         $kythi->tenky = $request->tenkythi;
         $kythi->save();
         return redirect('giaovien/kythi/dskythi')->with('thongbao','Sửa thành công!');
        
    }
    public function xoakythi($id){
         KyThi::destroy($id);
        return redirect('giaovien/kythi/dskythi')->with('thongbao','Bạn đã xóa thành công!');
    }
}
