@extends('master')

@section('content')

@if($errors->any())

<div class="alert alert-danger">
    <ul>
    @foreach($errors->all() as $error)  
        <li>{{$error}}</li>
    @endforeach
    </ul>
</div>

@endif

<div class="card">
    <div class="card-header">Add Table</div>
    <div class="card-body">
        <form method="post" action="{{ route('tableinfo.store')}}" enctype="multipart/form-data">
            @csrf
            <div class="row mb-3">
                <label class="col-sm-2 col-label-form">Table number</label>
                <div class="col-sm-10">
                    <input type="text" name="table_number" class="form-control" />
                </div>
            </div>
            <div class="row mb-3">
                <label class="col-sm-2 col-label-form">Table Type</label>
                <div class="col-sm-10">
                <select name="table_type" class="form-control" >
                        <option value="General">General</option>
                        <option value="Private">Private</option>
                        <option value="VIP">VIP</option>
                    </select>
                </div>
            </div>
            <div class="row mb-3">
                <label class="col-sm-2 col-label-form">Total Seat</label>
                <div class="col-sm-10">
                    <input type="text" name="total_seat" class="form-control" />
                </div>
            </div>
            <div class="row mb-4">
                <label class="col-sm-2 col-label-form">Table Status</label>
                <div class="col-sm-10">
                    <select name="table_status" class="form-control" >
                        <option value="Booked">Booked</option>
                        <option value="Unbooked">Unbooked</option>
                    </select>
                </div>
            </div>
            <div class="text-center">
                <input type="submit" class="btn btn-primary" value="Add" />
            </div>
        </form>
    </div>
</div>

@endsection('content')




