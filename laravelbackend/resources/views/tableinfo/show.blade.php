@extends('master')

@section('content')

<div class="card">
    <div class="card-header">
        <div class="col col-md-6"><b>Table Details</b></div>
        <div class="col col-md-6">
            <a href ="{{ route('tableinfo.index') }}" class="btn btn-primary btn-sm
            float-end">View All</a>
        </div>
    </div>

    <div class="card-body">
        <div class= "row mb-3">
            <label class="col-sm-2 col-label-form"><b>Table Number</b></label>
            <div class="col-sm-10">
            {{$tableinfo->table_number}}
            </div>
        </div>
        <div class= "row mb-3">
            <label class="col-sm-2 col-label-form"><b>Table Type</b></label>
            <div class="col-sm-10">
                {{$tableinfo->table_type}}
            </div>
        </div>
        <div class= "row mb-3">
            <label class="col-sm-2 col-label-form"><b>Total Seat</b></label>
            <div class="col-sm-10">
                {{$tableinfo->total_seat}}
            </div>
        </div>
        <div class= "row mb-3">
            <label class="col-sm-2 col-label-form"><b>Table_status</b></label>
            <div class="col-sm-10">
                {{$tableinfo->table_status}}
            </div>
        </div>
    </div>
</div>    

@endsection('content')

