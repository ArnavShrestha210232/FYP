<?php

namespace App\Http\Controllers;

use App\Models\food;
use Illuminate\Http\Request; 
class FoodController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $data = Food::latest()->paginate(5);
        return view('index', compact('data'))->with('i',(request()->input('page',1)-1)*5);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('create'); 
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'food_name'         =>  'required|unique:food',
            'food_size'         =>  'required',
            'food_calories'         =>  'required', 
            'meal_type'         =>  'required',
            'preparation_method'         =>  'required',
            'food_image'        =>  'required|mimes:jpg,png,jpeg,gif,svg|max:2048'
        ]); 
        

        $file_name = time() . '.' . $request->file('food_image')->getClientOriginalExtension();
      
        $request->food_image->move(public_path('images'),$file_name);
        
        $food = new Food;

        $food->food_name = $request->food_name;
        $food->food_size = $request->food_size;
        $food->food_calories = $request->food_calories;
        $food->meal_type = $request->meal_type;
        $food->preparation_method = $request->preparation_method;
        $food->food_image = $file_name;

        $food->save();

        return redirect()->route('food.index')->with('success','Food Added Successfully.');

    }

    /**
     * Display the specified resource.
     * @param  \App\Models\Food  $food
     * @return \Illuminate\Http\Response
     */
    public function show(food $food)
    {
        return view('show', compact('food'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(food $food)
    {
        return view('edit', compact('food'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, food 
    $food)
    {
        $request->validate([
            'food_name'         =>  'required|unique:food',
            'food_size'         =>  'required',
            'food_calories'         =>  'required', 
            'meal_type'         =>  'required',
            'preparation_method'         =>  'required',
            'food_image'        =>  'required|mimes:jpg,png,jpeg,gif,svg|max:2048'
        ]); 

        $student_image = $request->hidden_student_image;

        if($request->student_image != '')
        {
            $food_image = time() . '.' . request()->food_image->getClientOriginalExtension();

            request()->food_image->move(public_path('images'), $food_image);
        }

        $food = food::find($request->hidden_id);

        $food->food_name = $request->food_name;

        $food->food_size = $request->food_size;

        $food->food_calories = $request->food_calories;

        $food->meal_type = $request->meal_type;

        $food->preparation_method = $request->preparation_method;

        $food->food_image = $food_image;

        $food->save();

        return redirect()->route('food.index')->with('success', 'Food Data has been updated successfully');
    
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(food $food)
    {
        $food->delete();

        return redirect()->route('food.index')->with('success', 'Food Data deleted successfully');
    }
}
