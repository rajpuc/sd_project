<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

class OverlapController extends Controller
{
    public function overlap(){

        $session = DB::select('SELECT user_sessions.id AS id , user_sessions.session AS session FROM (SELECT DISTINCT session_id FROM enrollments) AS T INNER JOIN user_sessions ON T.session_id=user_sessions.id;');

        return view('admin.pages.overlap',compact('session'));
    }
}
