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
            <div class="col col-md-6"><b>Food Data</b></div>
            <div class="col col-md-6">
                <a href="{{route('food.create')}}" class="btn btn-success btn-sm
                float-end">Add</a>
            </div>
        </div>
    </div>
    <div class="card-body">
        <table class="table table-bordered">
            <tr>
                <th>Image</th>
                <th>Name</th>
                <th>Size</th>
                <th>Calories</th>
                <th>MealType</th>
                <th>PreparationMethod</th>
            </tr>
            @if(count($data) > 0)
                @foreach($data as $row)

                    <tr>
                        <td><img src="{{ asset('images/' . $row->food_image) }}" width="75" /></td>
                        <td>{{$row->food_name}}</td>
                        <td>{{$row->food_size}}</td>
                        <td>{{$row->food_calories}}</td>
                        <td>{{$row->meal_type}}</td>
                        <td>{{$row->preparation_method}}</td>
                        <td>
                            <form method="post" action="{{ route('food.destroy', $row->id) }}">
                                @csrf
                                @method('DELETE')
                                <a herf="{{ route('food.show', $row->id) }}" class="btn btn-primary btn-sm">View</a>
                                <a href="{{ route('food.edit', $row->id) }}" class="btn btn-warning btn-sm">Edit</a>
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


