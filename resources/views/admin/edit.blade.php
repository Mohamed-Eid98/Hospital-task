@extends('layouts.app')
@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-10">
             <h1 class="fs-5 fw-bold my-4 text-center">Edit the speciality and Time if you want</h1>
                @if(Session::has('success'))
            <div class="alert alert-success">
                {{ Session::get('success') }}
                @php
                    Session::forget('success');
                    @endphp
            </div>
            @endif

            <!-- Way 1: Display All Error Messages -->
            @if ($errors->any())
            <div class="alert alert-danger">
                <ul>
                    @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                    @endforeach
                </ul>
                </div>
                @endif
                <div class="row">
                    <form action="{{ route('admin.update',$reservation->id) }}" method="Post">
                        @csrf
                        @method('PUT')
                        <div class="mb-3">
                        <label for="speciality" class="form-label">Speciality</label>
                        <select class="form-control" name="speciality" id="speciality">
                            <option hidden value="">Choose Speciality</option>
                            @foreach ($specialities as $speciality)
                            <option value="{{ $speciality->id }}">{{ $speciality->name }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="appointment" class="form-label">Appointment</label>
                        <select class="form-control" name="appointment" id="appointment"></select>
                    </div>
                    <div class="mb-5">
                        <input type="submit" value="Edit" class="btn btn-dark">
                    </div>

                </form>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
        <script>

            $(document).ready(function() {
            $('#speciality').on('change', function() {
                var first_id = $(this).val();
                if(first_id) {
                    $.ajax({
                        url: '/getAppointment/'+first_id ,
                        type: "GET",
                        data : {"_token":"{{ csrf_token() }}"},
                        dataType: "json",
                        success:function(data)
                        {
                            if(data){
                            $('#appointment').empty();
                            $('#appointment').append('<option hidden value="">Choose Appointment</option>');
                            $.each(data, function(key, appointments){

                                $('select[name="appointment"]').append('<option value="'+ appointments.id +'">'+ appointments.day  + ' From ' + appointments.time_from + ' To ' + appointments.time_to + '</option>');
                            });
                        }else{
                            $('#appointment').empty();
                        }
                        }
                    });
                }else{
                    $('#appointment').empty();
                }
            });
            });
        </script>

        </div>
    </div>
</div>
@endsection
