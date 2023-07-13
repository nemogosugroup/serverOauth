<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Session;
use App\Models\Attendance;
use Carbon\Carbon;
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api', 'scope:view-user')->get('/user', function (Request $request) {
    $user = $request->user();

    // Lấy thông tin check-in của ngày hôm nay
    $checkIn = Attendance::where('user_id', $user->id)
        ->whereDate('check_in', Carbon::today())
        ->first();

    // Thêm thông tin check-in vào dữ liệu người dùng
    $user->check_in = $checkIn ? $checkIn->check_in : null;
    $user->check_out = $checkIn ? $checkIn->check_out : null;
    
    return $user;
});

Route::middleware('auth:api', 'scope:view-user')->get('/checkin', [App\Http\Controllers\Api\AttendanceController::class, 'setAttendance']);

Route::get('/list-news', [App\Http\Controllers\Api\NewsController::class, 'listNews'])->name('list-news');
Route::get('/list-features', [App\Http\Controllers\Api\FeaturesController::class, 'listFeatures'])->name('list-features');

Route::middleware('auth:api')->get('/logmeout', function (Request $request) {
    $user =  $request->user();
    $accessToken = $user->token();
    DB::table('oauth_refresh_tokens')
    ->where('access_token_id', $accessToken->id)
    ->delete();
    $user->token()->delete();


    return response()->json([
        'message' => 'Successfully logged out',
        'session' => session()->all()
    ]);
});
Route::post('/login', [App\Http\Controllers\Auth\CustomLoginController::class, 'login'])->name('login');
Route::post('/app-login', [App\Http\Controllers\Auth\CustomLoginController::class, 'appLogin'])->name('app-login');

Route::middleware('auth:api')->group(function () {
    // Các route API bảo mật
});
