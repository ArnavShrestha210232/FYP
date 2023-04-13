@extends('master')

@section('content')

<div class="card">
    <div class="card-header">Edit Table</div>
    <div class="card-body">
    <form method="post" action="{{ route('tableinfo.update', $tableinfo->id)}}" enctype="multipart/
        form-data">
            @csrf
            @method('PUT')
            <div class="row mb-3">
                <label class="col-sm-2 col-label-form">Table number</label>
                <div class="col-sm-10">
                    <input type="text" name="table_number" class="form-control" value=" {{
                    $tableinfo->table_number}}" />
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
                    <select name="meal_type" class="form-control" >
                        <option value="Booked">Booked</option>
                        <option value="Unbooked">Unbooked</option>
                    </select>
                </div>
            </div>
            <div class="text-center">
                <input type="hidden" name="hidden_id" value="{{$tableinfo->id}}"/>
                <input type="submit" class="btn btn-primary" value="Add" />
            </div>
        </form>
    </div>
</div>
<script>
document.getElementByName('table_type')[0].value = "{{ $tableinfo->table_type }}";
document.getElementByName('table_status')[0].value = "{{ $tableinfo->table_status }}";
</script>

@endsection('content')


