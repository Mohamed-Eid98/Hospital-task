<?php

namespace App\Http\Controllers;

use App\Models\Speciality;
use App\Models\Appointment;
use App\Models\Reservation;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Http\Requests\StoreAppointmentRequest;

class AppointmentController extends Controller
{
    public function index()
    {
        return view('home');
    }

    public function show()
    {
        $specialities = Speciality::get();
        return view('welcome' , compact('specialities'));
    }

    public function store(StoreAppointmentRequest $request)
    {
        $id = Auth::user()->id;
        $appointment = $request->input('appointment');


        Reservation::Create([
                'user_id' => $id,
                'appointment_id' =>  $appointment
           ]);

        return redirect()->back()->with('success','Successfully booked');
    }

    public function getAppointment($id)
    {
        $appointments = Appointment::where('speciality_id', $id)->get();
        return response()->json($appointments);
    }
}
