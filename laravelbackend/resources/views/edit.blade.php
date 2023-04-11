@extends('master')

@section('content')

<div class="card">
    <div class="card-header">Edit Food</div>
    <div class="card-body">
    <form method="post" action="{{ route('food.update', $food->id)}}" enctype="multipart/
        form-data">
            @csrf
            @method('PUT')
            <div class="row mb-3">
                <label class="col-sm-2 col-label-form">Food Name</label>
                <div class="col-sm-10">
                    <input type="text" name="food_name" class="form-control" value=" {{
                    $food->food_name}}" />
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
                        <option value="Breakfast">Lunch</option>
                        <option value="Breakfast">Dinner</option>
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
                    <img src="{{ asset('images/' . $food->food_image) }}" width="100"
                    class="img-thumbnail" />
                    <input type="hidden" name="hidden_food_image" value="{{
                    $food->food_image }}" />
                </div>
            </div>
            <div class="text-center">
                <input type="hidden" name="hidden_id" value="{{$food->id}}"/>
                <input type="submit" class="btn btn-primary" value="Add" />
            </div>
        </form>
    </div>
</div>
<script>
document.getElementByName('food_size')[0].value = "{{ $food->food_size }}";
document.getElementByName('menu_type')[0].value = "{{ $food->menu_type }}";
</script>

@endsection('content')


