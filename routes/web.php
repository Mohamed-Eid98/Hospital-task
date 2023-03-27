<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\Admin\AdminController;
use App\Http\Controllers\AppointmentController;

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


Auth::routes();

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

