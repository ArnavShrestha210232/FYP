<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class food extends Model
{
    use HasFactory;

    protected $fillable = ['food_name', 'food_size', 'food_calories', 'meal_type', 'preparation_method', 'food_image'];
}
