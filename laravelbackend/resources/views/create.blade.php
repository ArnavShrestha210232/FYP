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
    <div class="card-header">Add Food</div>
    <div class="card-body">
        <form method="post" action="{{ route('food.store')}}" enctype="multipart/form-data">
            @csrf
            <div class="row mb-3">
                <label class="col-sm-2 col-label-form">Food Name</label>
                <div class="col-sm-10">
                    <input type="text" name="food_name" class="form-control" />
                </div>
            </div>
            <div class="row mb-3">
                <label class="col-sm-2 col-label-form">Food Size</label>
                <div class="col-sm-10">
                <select name="food_size" class="form-control" >
                        <option value="Small">Small</option>
                        <option value="Medium">Medium</option>
                        <option value="Large">Large</option>
                    </select>
                </div>
            </div>
            <div class="row mb-3">
                <label class="col-sm-2 col-label-form">Food Calories</label>
                <div class="col-sm-10">
                    <input type="text" name="food_calories" class="form-control" />
                </div>
            </div>
            <div class="row mb-4">
                <label class="col-sm-2 col-label-form">Meal Type</label>
                <div class="col-sm-10">
                    <select name="meal_type" class="form-control" >
                        <option value="Breakfast">Breakfast</option>
                        <option value="Lunch">Lunch</option>
                        <option value="Dinner">Dinner</option>
                    </select>
                </div>
            </div>
            <div class="row mb-3">
                <label class="col-sm-2 col-label-form">Preparation Method</label>
                <div class="col-sm-10">
                    <input type="text" name="preparation_method" class="form-control" />
                </div>
            </div>
            <div class="row mb-4">
                <label class="col-sm-2 col-label-form">Food Image</label>
                <div class="col-sm-10">
                    <input type="file" name="food_image" />
                </div>
            </div>
            <div class="text-center">
                <input type="submit" class="btn btn-primary" value="Add" />
            </div>
        </form>
    </div>
</div>

@endsection('content')




