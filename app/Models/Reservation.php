<?php

namespace App\Models;

use App\Models\Appointment;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Znck\Eloquent\Traits\BelongsToThrough;


class Reservation extends Model
{
    use HasFactory;
    protected $fillable = [
        'user_id',
        'appointment_id',
    ];
    /**
     * Get the user that owns the Reservation
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function appointment()
    {
        return $this->belongsTo(Appointment::class);
    }
    /**
     * Get the user that owns the Reservation
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function user()
    {
        return $this->belongsTo(User::class);
    }
    use \Znck\Eloquent\Traits\BelongsToThrough;

    public function speciality()
    {
        return $this->belongsToThrough(Speciality::class, Appointment::class);
    }
}
