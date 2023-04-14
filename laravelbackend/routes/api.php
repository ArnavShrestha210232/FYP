<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\StudentController;
use App\Http\Controllers\AuthController;

// Public Routes
Route::post('/auth/register',[AuthController::class,'register'])->name('auth.register');
Route::post('/auth/login',[AuthController::class,'login']);

Route::middleware('auth:sanctum')->get('/user',function (Request $request){
    return $request->user();
});

Route::get('/student',[StudentController::class, 'index']);