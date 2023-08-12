@extends('admin.layouts.default')

@section('content')



<div class="row g-0 app-auth-wrapper">
    <div class="col-12 col-md-7 col-lg-12 auth-main-col text-center p-5">
        <h2 class="auth-heading text-center mb-4">Select Session</h2>
        <div class="auth-form-container text-start mx-auto">
            <select id="select-session" class="form-select form-select-sm">
                <option selected disabled hidden>Select from here</option>
                @foreach($session as $s)
                <option value="{{$s->id}}">{{$s->session}}</option>
                @endforeach
            </select>

            <div class="table-responsive">
                <h2 class="mt-3 auth-heading text-center mb-4" id="head-t"></h2>

                <table class="table app-table-hover mb-0 text-left">
                    <thead>
                        <tr id="heading-tab">
                            <!-- <th class="cell">Session </th> -->
                            
                        </tr>
                    </thead>
                    <tbody id="body-tab">
                        
                        
                    </tbody>
                </table>
            </div>
        </div>
    </div>

</div>


@endSection

@section('script')

<script>
    $(document).ready(function () {
        $('#select-session').on('change', function () {
            $session_id = $(this).find(":selected").val();


            $.ajax({
                url: "http://127.0.0.1:8000/api/overlap-subs/" + $session_id,
                type: 'GET',
                dataType: 'json', // added data type
                success: function (res) {
                    let a=[];
                    $.each(res.data, function (key, value) {
                        $.each(value, function (k, v) {
                            a.push({
                                'title':key,
                                'semester':k,
                                'students':v
                            });
                        });
                    });
                    // console.log(a);
                    a.sort((a, b) => b.students -a.students);
                    // console.log(a);

                    // let keys = Object.keys(res.data);

                    // // Then sort by using the keys to lookup the values in the original object:
                    // keys.sort(function (a, b) { return obj[a] - obj[b] });

                    // console.log(res.data);
                    // res.data.sort(function(a, b){
                    //     return a.id - b.id;
                    // });
                    $('#head-t').empty();
                    $('#heading-tab').empty();
                    $('#body-tab').empty();
                    $('#head-t').append('On '+res.mysession+' overlaping courses');
                    $('#heading-tab').append(`<th class="cell">Course_title</th>
                    <th class="cell">Semester</th>
                    <th class="cell">Students</th>`);

                    $mystr=''
                    $.each(a, function( key, value ) {
                        // value.title
                        $semester='';
                        if(value.semester==1)
                            $semester+=value.semester+'st Semester';
                        else if(value.semester==2)
                            $semester+=value.semester+'nd Semester';
                        else if(value.semester==3)
                            $semester+=value.semester+'rd Semester';
                        else
                            $semester+=value.semester+'th Semester';
                      
                        $mystr+=`<tr>   
                            <td class="cell">${value.title}</td>
                            <td class="cell">${$semester}</td>
                            <td class="cell">${value.students}</td>
                        </tr>`;
                    });
                    $('#body-tab').append($mystr)
                }
            });
        });
    });

</script>

@endSection