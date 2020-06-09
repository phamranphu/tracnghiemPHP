<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\MonThi;
use Excel;
use DB;
use Illuminate\Support\Str;
use App\Imports\MonThiImport;

class MonThiController extends Controller
{
    public function getMonThi(){
    	$monthi = MonThi::all();
    	return view('admin.monthi.dsmonthi',['monthi'=>$monthi]);
    }

  public function getthemmt(){
        return view('admin.monthi.themmonthi');
    }
    public function postthemmt(Request $request){

         $this->validate($request,
            [
                'tenmonthi'=>'required|min:2'
            ],
            [
                'tenmonthi.required' => 'Vui lòng nhập tên môn thi',
                // 'tenmucdo.numeric' => 'Vui lòng nhập đúng ký tự.',
                'tenmonthi.min' => 'Tên loại ít nhất 2 ký tự.'
            ]);

         $monthi = new MonThi;
         $monthi->tenmh = $request->tenmonthi;
       
        //
        if($request->hasFile('hinhanh'))
        {
            $file =$request->file('hinhanh');
            
            $duoi= $file->getClientOriginalExtension(); // Lấy đuôi của file

            
         

            $file_name =$file->getClientOriginalName();
            // //đặt tên cho hình ảnh không trùng tên
            $hinhanh = Str::random(4)."_".$file_name;
            while(file_exists("upload/baocao/".$hinhanh))
            {
                $hinhanh = Str::random(4)."_".$file_name;
            }
            $file->move("imgs/monhoc/",$hinhanh);

            $monthi->hinhanh=$hinhanh;
        }
        else
        {
            $monthi->hinhanh="";
        }
        //
       
       
        $monthi->save();
        //dẫn về trang 
        return redirect('giaovien/monthi/dsmonthi')->with('thongbao','Thêm thành công!');

    }
public function getsuamh($id){
        $monthi = MonThi::find($id);
        return view('admin.monthi.suamonthi',['monthi'=>$monthi]); 
    }
    public function postsuamh(Request $request, $id){
       $monthi = MonThi::find($id);
        $this->validate($request,
            [
                'tenmonhoc'=>'required|min:2'
            ],
            [
                'tenmonhoc.required' => 'Vui lòng nhập tên môn học',
                // 'tenmucdo.numeric' => 'Vui lòng nhập đúng ký tự.',
                'tenmonhoc.min' => 'Tên loại ít nhất 2 ký tự.'
            ]);
         $monthi->tenmh = $request->tenmonhoc;
          $monthi->hinhanh = $request->hinhanh;
         if($request->hasFile('hinhanh'))
        {
            $file =$request->file('hinhanh');
            
            $duoi= $file->getClientOriginalExtension(); // Lấy đuôi của file
            if($duoi != 'png' && $duoi != 'jpg' && $duoi != 'jpeg')
            {
                return redirect('giaovien/monthi/suamonthi')->with('loi','Bạn chỉ chọn được đuôi file là png,jpg,jpeg');
            }
            $file_name =$file->getClientOriginalName();
            // //đặt tên cho hình ảnh không trùng tên
            $hinhanh = Str::random(4)."_".$file_name;
            while(file_exists("upload/baocao/".$hinhanh))
            {
                $hinhanh = Str::random(4)."_".$file_name;
            }
            $file->move("imgs/monhoc/",$hinhanh);

            $monthi->hinhanh=$hinhanh;
        }
        else
        {
            $monthi->hinhanh="";
        }
         $monthi->save();
         return redirect('giaovien/monthi/dsmonthi')->with('thongbao','Sửa thành công!');
    	
    }

    public function importmh(){
        return view('admin.monthi.import');
    }

    
    public function xoamh($id){
        MonThi::destroy($id);
         return redirect('giaovien/monthi/dsmonthi')->with('thongbao','Xóa thành công!');
        
    }

    public function export(){
        $monthi = MonThi::select('id_mh','tenmh')->get();
        return Excel::create('dsmon', function($excel) use ($monthi){
            $excel->sheet('mysheet', function($sheet) use ($monthi){
                $sheet->fromArray($contact);
            });
        })->download('xlsx');
    }


     public function import() 
    {
        Excel::import(new MonThiImport,request()->file('file'));
           
        return redirect('admin/monthi/dsmonthi');
    }

    
}
