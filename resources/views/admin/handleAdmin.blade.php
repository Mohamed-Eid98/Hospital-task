@extends('layouts.app')
@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <table class="table table-striped table-bordered table-hover">
                <h3>Today's Available Appointments</h3>

                <thead>
                    <tr>
                        <th>#</th>
                        <th>Speciality Name</th>
                        <th>Today's Times</th>
                    </tr>
                </thead>
                <tbody>
                    @php($i = 1)
                    @foreach ($todaySpecialities as $speciality)

                    <tr>
                        <td>{{ $i++ }}</td>
                        <td>{{ $speciality->name }}</td>
                        <td>
                            @foreach ($speciality->todayAppointments as $appointment)
                            <li>
                                From {{ $appointment->time_from }}PM To  {{ $appointment->time_to }}PM
                            </li>
                            @endforeach
                        </td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
            {{ $todaySpecialities->links() }}
            <form class="form-inline" action= "{{ route('admin.booked')}}"  method="get" >
                <button type="submit" class="btn btn-primary mb-2">Today's Booked</button>
              </form>
            <form class="form-inline" action="{{ route('admin.all.booked')}}"  method="get">
                <button type="submit" class="btn btn-primary mb-2">All Booked</button>
            </form>
        </div>
    </div>
</div>
@endsection
