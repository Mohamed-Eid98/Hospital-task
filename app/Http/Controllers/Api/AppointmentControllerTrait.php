<?php

namespace App\Http\Controllers\Api;

trait AppointmentControllerTrait{
    public function ApiResponse($data= null , $message=null , $status=null){

        $array=[
            'data'=>$data,
            'message'=>$message,
            'status'=>$status
        ];
        return response($array , $status);
    }
}
