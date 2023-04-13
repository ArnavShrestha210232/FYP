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
            <div class="col col-md-6"><b>Table Info</b></div>
            <div class="col col-md-6">
                <a href="{{route('table.create')}}" class="btn btn-success btn-sm
                float-end">Add</a>
            </div>
        </div>
    </div>
    <div class="card-body">
        <table class="table table-bordered">
            <tr>
                <th>Number</th>
                <th>Type</th>
                <th>Seat</th>
                <th>Status</th>
            </tr>
            @if(count($data) > 0)
                @foreach($data as $row)

                    <tr>
                        <td>{{$row->table_number}}</td>
                        <td>{{$row->table_type}}</td>
                        <td>{{$row->total_seat}}</td>
                        <td>{{$row->table_status}}</td>
                        <td>
                            <form method="post" action="{{ route('table.destroy', $row->id) }}">
                                @csrf
                                @method('DELETE')
                                <a herf="{{ route('table.show', $row->id) }}" class="btn btn-primary btn-sm">View</a>
                                <a href="{{ route('table.edit', $row->id) }}" class="btn btn-warning btn-sm">Edit</a>
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


