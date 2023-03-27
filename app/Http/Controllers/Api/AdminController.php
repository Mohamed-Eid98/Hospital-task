<?php

namespace App\Http\Controllers\Api;

use auth;
use Carbon\Carbon;
use App\Models\Speciality;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class AdminController extends Controller
{

    use AppointmentControllerTrait;

    public function __construct()
    {
        $this->middleware('auth');
    }
    public function index(Request $request)
    {
        $today = Carbon::today();
        $dayName = $today->format('l');

        $todaySpecialities = Speciality::with('todayAppointments')->has('todayAppointments')->simplePaginate(20);
        return $this->ApiResponse($todaySpecialities , 'ok' , 200);
    }
    public function todayBooked()
    {
        $today = Carbon::today();
        $date = $today->format('Y-m-d');
        $reservations = Reservation::with('appointment','user','speciality')->whereDate('created_at',  $today)->latest()->simplePaginate(20);
        return $this->ApiResponse($todaySpecialities , 'ok' , 200);
    }

    public function allBooked()
    {
        $reservations = Reservation::with('appointment','user','speciality')->latest()->simplePaginate(20);
        return $this->ApiResponse($reservations , 'ok' , 200);

    }


    public function show($id)
    {
        $specialities = Speciality::get();
        $reservation = Reservation::find($id);
        return $this->ApiResponse($specialities , 'ok' , 200);

    }

    public function update(StoreAppointmentRequest $request, $id)
    {

        // $speciality = $request->input('speciality');
        $appointment = $request->input('appointment');
        Reservation::updateOrCreate(
            ['id' => $id],
            ['appointment_id' =>  $appointment]
         );

        return redirect()->route('api.admin.all.booked')->with('success','Company Has Been updated successfully');
    }

    public function destroyBooked($id)
    {
        $reservation = Reservation::find($id);
        $reservation->delete();
        // dd('done');
        return redirect()->route('api.admin.all.booked')->with('success','Company has been deleted successfully');
    }



}



