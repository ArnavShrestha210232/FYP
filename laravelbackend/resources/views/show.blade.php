@extends('master')

@section('content')

<div class="card">
    <div class="card-header'>
        <div class="col col-md-6"><b>Food Details</b></div>
        <div class="col col-md-6">
            <a href ="{{ route('food.index') }}" class="btn btn-primary btn-sm
            float-end">View All</a>
        </div>
    </div>

    <div class="card-body">
        <div class= "row mb-3">
            <label class="col-sm-2 col-label-form"><b>Food Name</b></label>
            <div class="col-sm-10">
            {{$food->food_name}}
            </div>
        </div>
        <div class= "row mb-3">
            <label class="col-sm-2 col-label-form"><b>Food Size</b></label>
            <div class="col-sm-10">
                {{$food->food_size}}
            </div>
        </div>
        <div class= "row mb-3">
            <label class="col-sm-2 col-label-form"><b>Food Calories</b></label>
            <div class="col-sm-10">
                {{$food->food_calories}}
            </div>
        </div>
        <div class= "row mb-3">
            <label class="col-sm-2 col-label-form"><b>Meal Type</b></label>
            <div class="col-sm-10">
                {{$food->meal_type}}
            </div>
        </div>
        <div class= "row mb-3">
            <label class="col-sm-2 col-label-form"><b>Preparation Method</b></label>
            <div class="col-sm-10">
                {{$food->preparation_method}}
            </div>
        </div>
        <div class= "row mb-3">
            <label class="col-sm-2 col-label-form"><b>Food Image</b></label>
            <div class="col-sm-10">
                <img src="{{ asset('images/' . $food->food_image) }}" width="200" class
                ="img-thumbnail" />
            </div>
        </div>
    </div>
</div>    

@endsection('content')

