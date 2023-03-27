@extends('layouts.app')
@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <table class="table table-striped table-bordered table-hover">
                <h1>Today's Booked Appointments</h1>
                <thead>
                  <tr>
                    <th>#</th>
                    <th>user</th>
                    <th>speciality</th>
                    <th>Day</th>
                    <th>date</th>
                    <th>Time Zone</th>
                    {{-- <th>Time</th> --}}
                  </tr>
                </thead>
                <tbody>
                    @php($i = 1)

                        @foreach ($reservations as $reservation)
                        <tr>

                            <td>{{ $i++ }}</td>
                            <td>{{ $reservation->user->name }}</td>
                            <td>{{ $reservation->speciality->name }}</td>
                            <td>{{ $reservation->appointment->day }}</td>
                            <td>{{ $reservation->created_at->format('Y-M-d')}}</td>

                            <td>From {{ $reservation->appointment->time_from }} PM To  {{ $reservation->appointment->time_to }} PM </td>
                        </tr>
                    @endforeach
                </tbody>
                {{ $reservations->links() }}
              </table>
              <form class="form-inline" action="{{ route('admin.booked')}}" method="get">
                <button type="submit" class="btn btn-primary mb-2">Today's Booked</button>
              </form>
            <form class="form-inline" action="{{ route('admin.all.booked') }}" method="get">
                <button type="submit" class="btn btn-primary mb-2">All Booked</button>
            </form>
        </div>
    </div>
</div>
@endsection
