<?php

use Illuminate\Support\Facades\Route;

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

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
Route::post('/different-account', [App\Http\Controllers\HomeController::class, 'differentAccount'])->name('different-account');
Route::get('/reset-auth', [App\Http\Controllers\HomeController::class, 'resetAuth'])->name('reset-auth');
Route::get('/login', [App\Http\Controllers\Auth\CustomLoginController::class, 'showLoginForm'])->name('login');

Route::get('/logout', [App\Http\Controllers\Auth\CustomLoginController::class, 'logout'])->name('logout');
// Route::get('/oauth/authorize', [App\Http\Controllers\Auth\CustomLoginController::class, 'showLoginForm'])->name('oAuth');
Route::post('/login', [App\Http\Controllers\Auth\CustomLoginController::class, 'login'])->name('login');