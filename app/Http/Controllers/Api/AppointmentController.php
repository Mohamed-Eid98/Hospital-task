<?php

namespace App\Http\Controllers\Api;

use App\Models\Speciality;
use App\Models\Appointment;
use App\Models\Reservation;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class AppointmentController extends Controller
{

    public function show()
    {
        $specialities = Speciality::get();
        return $this->ApiResponse($specialities , 'ok' , 200);

    }
    public function store(StoreAppointmentRequest $request)
    {
        $id = Auth::user()->id;
        $appointment = $request->input('appointment');


        Reservation::Create([
                'user_id' => $id,
                'appointment_id' =>  $appointment
           ]);
    }

    public function getAppointment($id)
    {
        $appointments = Appointment::where('speciality_id', $id)->get();
        return $this->ApiResponse($appointments , 'ok' , 200);
    }

}


