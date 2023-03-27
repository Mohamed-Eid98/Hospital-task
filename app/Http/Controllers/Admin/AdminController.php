<?php

namespace App\Http\Controllers\Admin;

use Carbon\Carbon;
use App\Models\Speciality;
use App\Models\Reservation;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\StoreAppointmentRequest;

class AdminController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index(Request $request)
    {
        $today = Carbon::today();
        $dayName = $today->format('l');

        $todaySpecialities = Speciality::with('todayAppointments')->has('todayAppointments')->simplePaginate(20);
        return view('admin.handleAdmin' , compact('todaySpecialities'));
    }
    public function todayBooked()
    {
        $today = Carbon::today();
        $date = $today->format('Y-m-d');
        $reservations = Reservation::with('appointment','user','speciality')->whereDate('created_at',  $today)->latest()->simplePaginate(20);
        return view('admin.Booked' , compact('reservations'));
    }

    public function allBooked()
    {
        $reservations = Reservation::with('appointment','user','speciality')->latest()->simplePaginate(20);
        return view('admin.AllBooked' , compact('reservations'));
    }

    public function show($id)
    {
        $specialities = Speciality::get();
        $reservation = Reservation::find($id);

        return view('admin.edit' , compact('specialities','reservation'));

    }
    public function update(StoreAppointmentRequest $request, $id)
    {

        // $speciality = $request->input('speciality');
        $appointment = $request->input('appointment');
        Reservation::updateOrCreate(
            ['id' => $id],
            ['appointment_id' =>  $appointment]
         );

        return redirect()->route('admin.all.booked')->with('success','Company Has Been updated successfully');
        return view('admin.edit' , compact('reservation'));

    }

    public function destroyBooked($id)
    {
        $reservation = Reservation::find($id);
        $reservation->delete();
        // dd('done');
        return redirect()->route('admin.all.booked')->with('success','Company has been deleted successfully');
    }

}
