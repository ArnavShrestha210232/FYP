@extends('master')

@section('content')

<div class="card">
    <div class="card-header">Edit Table</div>
    <div class="card-body">
    <form method="post" action="{{ route('tablereserve.update', $tablereserve->id)}}" enctype="multipart/
        form-data">
            @csrf
            @method('PUT')
            <div class="row mb-3">
                <label class="col-sm-2 col-label-form">Time in</label>
                <div class="col-sm-10">
                    <input type="text" name="time_in" class="form-control" />
                </div>
            </div>
            <div class="row mb-3">
                <label class="col-sm-2 col-label-form">Time out</label>
                <div class="col-sm-10">
                    <input type="text" name="time_out" class="form-control" />
                </div>
            </div>
            <div class="row mb-3">
                <label class="col-sm-2 col-label-form">Made by</label>
                <div class="col-sm-10">
                    <input type="text" name="made_by" class="form-control" />
                </div>
            </div>
            <div class="row mb-3">
                <label class="col-sm-2 col-label-form">Guests number</label>
                <div class="col-sm-10">
                    <input type="text" name="guests_number" class="form-control" />
                </div>
            </div>
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
                <label class="col-sm-2 col-label-form">Contact Information</label>
                <div class="col-sm-10">
                    <input type="text" name="contact_information" class="form-control" />
                </div>
            </div>
            <div class="row mb-4">
                <label class="col-sm-2 col-label-form">Special Requests</label>
                <div class="col-sm-10">
                    <input type="text" name="special_requests" class="form-control" />
                </div>
            </div>
            <div class="row mb-4">
                <label class="col-sm-2 col-label-form">Notes Comments</label>
                <div class="col-sm-10">
                    <input type="text" name="notes_comments" class="form-control" />
                </div>
            </div>
            <div class="text-center">
                <input type="hidden" name="hidden_id" value="{{$tablereserve->id}}"/>
                <input type="submit" class="btn btn-primary" value="Add" />
            </div>
        </form>
    </div>
</div>
<script>
document.getElementByName('table_type')[0].value = "{{ $tablereserve->table_type }}";
</script>

@endsection('content')


