@extends('layout')

@section('title')
<h1><span class="text-success h1">| </span>Create New Appointment</h1>
@endsection

@section('breadcrumb')

@endsection

@section('content')

    <div class="content">
      
      <div class="container-fluid">
        <div class="row">
          
          <div class="col-4">
          @if(session('status'))
            <div class="alert alert-success">
                {{ session('status') }}
            </div>
            @endif

            <div class="card">
              <h5 class="card-header bg-success">Appointment Form</h5>
              <div class="card-body">

              <form name="addappointment" id="addappointment" method="POST" action="{{url('addappointment')}}">
            @csrf
                <div class="form-group">
                    <label for="exampleInputPassword1">Patient ID <span class="text-danger">*</span></label>
                    <input type="text" class="form-control" id="PATIENTID" name="PATIENTID" value="<?php if(isset($_GET['PATIENT_ID'])){echo $_GET['PATIENT_ID'];} ?>" placeholder="Input Patient ID" required>
                </div>

                <div class="form-group">
                    <label for="exampleInputEmail1">Appointment Date <span class="text-danger">*</span></label>
                    <input type="date" class="form-control" id="APP_DATE" name="APP_DATE" placeholder="Appointment Date" required>
                </div>

                <div class="form-group">
                  <label for="cars">Polyclinic <span class="text-danger">*</span></label>
                  <select class="form-select" id="poly_id" name="poly_id" placeholder="Polyclinic" required>
                    <option selected disabled>Choose Polyclinic</option>
                    @foreach($polyclinic as $polyitem)
                      <option value="{{$polyitem->poly_id}}">{{$polyitem->poly_name}}</option>
                    @endforeach
                  </select>
                </div>

                <div class="form-group">
                  <label for="cars">Physician <span class="text-danger">*</span></label>
                  <select class="form-select" id="DOCTOR_ID" name="DOCTOR_ID" placeholder="Polyclinic" required>
                    <option selected disabled>Choose Physician</option>
                    @foreach($useraccount as $physician)
                      <option value="{{$physician->userid}}">Dr. {{$physician->user_fname}} {{$physician->user_mname}} {{$physician->user_lname}}</option>
                    @endforeach
                  </select>
                </div>

                <button type="submit" id="btnSubmit2" name="addappointment" class="btn btn-primary">Submit</button>
                </form>

              </div>
            </div>
            
          </div>

          <div class="col-8">

            <div class="card">
              <h5 class="card-header bg-info">Patient Information</h5>
              <div class="card-body">
              <form method="GET">
                <div class="row">
                <label for="exampleInputEmail1">Patient Information (PATIENT ID)</label>
                    <div class="col-md-8">
                        <input type="text" id="PATIENTID" name="PATIENT_ID" placeholder="Input Patient ID" value="PBAH-2023-" class="form-control">
                    </div>
                    <div class="col-md-4">
                      <button type="submit" class="btn-sm btn-success mr-2">Check</button>
                      <a href="/addappointment" class="text-danger">
                        <strong><u>reset</u></strong>
                      </a>
                    </div>
                </div>
              </form>
                @include('layout.check-patient')
              </div>
            </div>

        </div>
      </div>
    </div>

@endsection

