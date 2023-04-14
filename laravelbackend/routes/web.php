<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\FoodController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\TableinfoController;
use App\Http\Controllers\TablereserveController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('login', function () {
    return view('login');
});

Route::post('/login', [LoginController::class, 'login']);

Route::get('/dashboard', [DashboardController::class, 'index']);

Route::resource ('food', FoodController::class);

Route::resource ('tableinfo', TableinfoController::class);

Route::resource ('tablereserve', TablereserveController::class);


Route::post('/auth/register',[AuthController::class,'register'])->name('auth.register');
Route::get('/auth/register',[AuthController::class,'show']);