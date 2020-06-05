<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\tintuc;
class TinTucController extends Controller
{
    //
    function getDSTinTuc(){
    	$dstintucs = tintuc::all();

    	return view('admin.tintuc.dstintuc',['dstintucs'=>$dstintucs]);
    }
}
