<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\AdminController;
use App\Http\Controllers\Api\AppointmentController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});


Route::controller(AppointmentController::class)->group(function () {
    Route::get('/', 'show')->name('home');
    Route::get('home', 'index')->name('book');
    Route::post('/', 'store')->middleware('auth')->name('book.store');
    Route::get('getAppointment/{id}/', 'getAppointment');
});

Route::controller(AdminController::class)->prefix('admin/')->name('admin.')->middleware('admin')->group(function () {
    Route::get('home', 'index')->name('route');
    Route::get('booked', 'todayBooked')->name('booked');
    Route::get('All/booked', 'allBooked')->name('all.booked');
    Route::get('edit/{id}', 'show')->name('edit');
    Route::put('update/{id}', 'update')->name('update');
    Route::delete('destroy/{id}', 'destroyBooked')->name('destroy');

});
