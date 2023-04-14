@extends('master')

@section('content')

@if($message = Session::get('success'))

<div class="alert alert-success">
    {{$message }}
</div>

@endif


<div class= "card">
    <div class= "card-header">
        <div class="row">
            <div class="col col-md-6"><b>Table Reserve</b></div>
            <div class="col col-md-6">
                <a href="{{route('tablereserve.create')}}" class="btn btn-success btn-sm
                float-end">Add</a>
            </div>
        </div>
    </div>
    <div class="card-body">
        <table class="table table-bordered">
            <tr>
                <th>In</th>
                <th>Out</th>
                <th>By</th>
                <th>Guests</th>
                <th>Table</th>
                <th>Type</th>
                <th>Information</th>
                <th>Requests</th>
                <th>Notes</th>
            </tr>
            @if(count($data) > 0)
                @foreach($data as $row)

                    <tr>
                        <td>{{$row->time_in}}</td>
                        <td>{{$row->time_out}}</td>
                        <td>{{$row->made_by}}</td>
                        <td>{{$row->guests_number}}</td>
                        <td>{{$row->table_number}}</td>
                        <td>{{$row->table_type}}</td>
                        <td>{{$row->contact_information}}</td>
                        <td>{{$row->special_requests}}</td>
                        <td>{{$row->notes_comments}}</td>
                        <td>
                            <form method="post" action="{{ route('tablereserve.destroy', $row->id) }}">
                                @csrf
                                @method('DELETE')
                                <a herf="{{ route('tablereserve.show', $row->id) }}" class="btn btn-primary btn-sm">View</a>
                                <a href="{{ route('tablereserve.edit', $row->id) }}" class="btn btn-warning btn-sm">Edit</a>
                                <input type="submit" class="btn btn-danger btn-sm" value="Delete" />
                            </form>
                        </td>
                    </tr>


                @endforeach  
            @else
                <tr>
                    <td colspan="5" class="text-center">No Data Found</td>
                </tr>
            @ENDIF
        </table>
        {!! $data->links() !!}
    </div>
</div>

@endsection


