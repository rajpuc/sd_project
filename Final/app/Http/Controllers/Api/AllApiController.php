<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Course;
use DB;
class AllApiController extends Controller
{
    //
    public function semester_subjects($id){
        $course=DB::select('SELECT * from courses WHERE semester='.$id.'');
        return response()->json([
           'data'=>$course,
           'message'=>$course? 'course found' : 'course not found'
        ]);
    }


    public function offered_sub(Request $request){
    // public function offered_sub($semester,$session_id){
        // $data = $request->all();
        // print_r($data);
        $semester=$request->semester;
        $session_id=$request->session_id;
        // echo $semester.' '.$session_id;
        $course=DB::select('SELECT courses.id AS id ,courses.ctitle As ctitle FROM (SELECT * FROM offered__subjects WHERE session_id ='.$session_id.') AS T INNER JOIN courses ON T.course_id=courses.id AND courses.semester='.$semester.';');
        return response()->json([
           'data'=>$course,
           'message'=>$course? 'course found' : 'course not found'
        ]);
    }


    public function overlap_subs($session_id){
        $overlap=DB::select('SELECT E.id AS enrollment_id,E.student_id AS student_id,E.semester AS student_semester,E.session_id AS session_id,E.course_id AS course_id,C.ctitle AS course_title, C.semester AS course_semester FROM (SELECT * FROM enrollments WHERE session_id='.$session_id.') AS E INNER JOIN courses AS C ON E.course_id=C.id;');

        $session_d=DB::select(' SELECT * FROM user_sessions WHERE id='.$session_id.';');

        $course=DB::select('SELECT C.ctitle AS course_title,C.id AS id,C.semester as course_semester  FROM (SELECT DISTINCT course_id FROM enrollments WHERE session_id='.$session_id.') AS E INNER JOIN courses AS C ON E.course_id=c.id;');

        // for($i=0; $i<count($overlap);$i++){
        //     for($j=0;$j<count($overlap[$i]);$j++){
        //         echo $overlap[$i][$j]->enrollment_id;
        //     }
        // }
        $keys = array_keys($overlap);
        $subs=array_keys($course);

        $data=array();
        for($i=0; $i < count($subs); $i++) {
            $course_id_first=$course[$subs[$i]]->id;
            $course_semester_first=$course[$subs[$i]]->course_semester;
            $course_title_first=$course[$subs[$i]]->course_title;

            // echo $course_id.'<br>';
            // echo $course_semester.'<br>';
            // echo $course_title.'<br>';
            for($j=0; $j < count($keys); ++$j) {

                // $enrollment_id=$overlap[$keys[$i]]->enrollment_id;
                // $student_id=$overlap[$keys[$i]]->student_id;
                $student_semester=$overlap[$keys[$j]]->student_semester;
                // $session_id=$overlap[$keys[$i]]->session_id;
                $course_id=$overlap[$keys[$j]]->course_id;
                // $course_title=$overlap[$keys[$i]]->course_title;
                // $course_semester=$overlap[$keys[$i]]->course_semester;

                if($course_id_first==$course_id && $course_semester_first != $student_semester){
                    if (array_key_exists($course_title_first,$data))
                    {
                        array_push($data[$course_title_first],$student_semester);
                    }else{
                        $data[$course_title_first]=array();
                        array_push($data[$course_title_first],$student_semester);
                    }
                }

                // if($course_id_first==$course_id && $course_semester_first != $student_semester){
                //     if (array_key_exists($student_semester,$data))
                //     {
                //         array_push($data[$student_semester],$course_semester_first);
                //     }else{
                //         $data[$student_semester]=array();
                //         array_push($data[$student_semester],$course_semester_first);
                //     }
                // }
                // if($course_id_first==$course_id && $course_semester_first != $student_semester){
                 
                // }
                // if($course_id_first==$course_id ){
                //     echo $course_id_first.'<br>';
                //     echo $student_semester.'<br>';
                // }
    
                // echo 'baire '.$course_id_first.'<br>';
                // echo 'baire uu '.$course_id.'<br>';
                
    
            }
            
        }
    
        $d_keys=array_keys($data);
        for($j=0; $j < count($d_keys); ++$j) {
            $data[$d_keys[$j]]=array_count_values($data[$d_keys[$j]]);
        }

        // dd($data);
        // foreach ($keys as $key) {
        //     echo $key;
        // }
        // for($i=0; $i < count($keys); ++$i) {
        //     // print $overlap[$keys[$i]]->enrollment_id.'<br>';
        //     // print $overlap[$keys[$i]]->student_id.'<br>';
        //     // print $overlap[$keys[$i]]->student_semester.'<br>';
        //     // print $overlap[$keys[$i]]->session_id.'<br>';
        //     // print $overlap[$keys[$i]]->course_id.'<br>';
        //     // print $overlap[$keys[$i]]->course_title.'<br>';
        //     // print $overlap[$keys[$i]]->course_semester.'<br>';


        //     $enrollment_id=$overlap[$keys[$i]]->enrollment_id;
        //     $student_id=$overlap[$keys[$i]]->student_id;
        //     $student_semester=$overlap[$keys[$i]]->student_semester;
        //     $session_id=$overlap[$keys[$i]]->session_id;
        //     $course_id=$overlap[$keys[$i]]->course_id;
        //     $course_title=$overlap[$keys[$i]]->course_title;
        //     $course_semester=$overlap[$keys[$i]]->course_semester;

            

        // }
        // foreach($overlap as $key)
        // {
        //     echo $key;
        // }
        // dd($overlap);
        // return response()->json([
        //     'data'=>$overlap,
        //     'message'=>$overlap? 'course found' : 'course not found'
        // ]);
        return response()->json([
            'data'=>$data,
            'message'=>$data? 'course found' : 'course not found',
            'mysession'=>$session_d[0]->session
         ]);
    }
}
