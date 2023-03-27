<?php

namespace App\Models;

use App\Models\Appointment;
use App\Models\Reservation;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Support\Carbon;

class Speciality extends Model
{
    use HasFactory;
    protected $table = 'speciality';


    /**
     * Get all of the comments for the Speciality
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function todayAppointments()
    {

        $today = Carbon::today();
        $dayName = $today->format('l');
        return $this->hasMany(Appointment::class)->where('day',$dayName);
    }

    /**
     * Get all of the comments for the Speciality
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasManyThrough
     */
    public function reservations(): HasManyThrough
    {
        return $this->hasManyThrough(Reservation::class, Appointment::class);
    }

}
