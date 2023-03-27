<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreAppointmentRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\Rule|array|string>
     */
    public function rules(): array
    {
        return [
            'appointment' => 'required',
            'speciality' => 'required',
        ];
    }

    public function messages(): array
    {
        return [
             'speciality.required' => 'Please, Choose A Speciality',
             'appointment.required' => 'Please, Choose An Appointment',
        ];
    }
}
