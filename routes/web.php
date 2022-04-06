<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\SpotController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


Route::get('/generate', [SpotController::class, 'generate']);
Route::get('/', [SpotController::class, 'home']);
Route::get('/control', [SpotController::class, 'control']);
Route::post('/delete', [SpotController::class, 'delete']);
Route::post('/add', [SpotController::class, 'add']);
