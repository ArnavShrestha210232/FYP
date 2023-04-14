@extends('master')

@section('content')

<div class="card">
    <div class="card-header">
        <div class="col col-md-6"><b>Table Details</b></div>
        <div class="col col-md-6">
            <a href ="{{ route('tablereserve.index') }}" class="btn btn-primary btn-sm
            float-end">View All</a>
        </div>
    </div>
    <div class="card-body">
        <div class= "row mb-3">
            <label class="col-sm-2 col-label-form"><b>Time in</b></label>
            <div class="col-sm-10">
            {{$tablereserve->time_in}}
            </div>
        </div>
        <div class= "row mb-3">
            <label class="col-sm-2 col-label-form"><b>Time out</b></label>
            <div class="col-sm-10">
            {{$tablereserve->time_out}}
            </div>
        </div>
        <div class= "row mb-3">
            <label class="col-sm-2 col-label-form"><b>Made by</b></label>
            <div class="col-sm-10">
            {{$tablereserve->made_by}}
            </div>
        </div>
        <div class= "row mb-3">
            <label class="col-sm-2 col-label-form"><b>Guests Number</b></label>
            <div class="col-sm-10">
            {{$tablereserve->guests_number}}
            </div>
        </div>
        <div class= "row mb-3">
            <label class="col-sm-2 col-label-form"><b>Table Number</b></label>
            <div class="col-sm-10">
            {{$tablereserve->table_number}}
            </div>
        </div>
        <div class= "row mb-3">
            <label class="col-sm-2 col-label-form"><b>Table Type</b></label>
            <div class="col-sm-10">
                {{$tablereserve->table_type}}
            </div>
        </div>
        <div class= "row mb-3">
            <label class="col-sm-2 col-label-form"><b>Contact Information</b></label>
            <div class="col-sm-10">
                {{$tablereserve->contact_information}}
            </div>
        </div>
        <div class= "row mb-3">
            <label class="col-sm-2 col-label-form"><b>Special Requests</b></label>
            <div class="col-sm-10">
                {{$tablereserve->special_requests}}
            </div>
        </div>
        <div class= "row mb-3">
            <label class="col-sm-2 col-label-form"><b>Notes Comments</b></label>
            <div class="col-sm-10">
                {{$tablereserve->notes_comments}}
            </div>
        </div>
    </div>
</div>    

@endsection('content')

