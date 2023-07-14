<?php

namespace App\Http\Controllers\Api;

use App\Models\Attendance;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Carbon\Carbon;
class AttendanceController extends Controller
{
    
    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function setAttendance(Request $request)
    {
        $user =  $request->user();
        
        $latestAttendance = Attendance::where('user_id', $user->id)
            ->orderByDesc('check_in')
            ->first();
            $isToday = false;
            $currentTime = Carbon::now()->addHours(7);
            if ($latestAttendance) {
                $latestAttendanceDate = date('Y-m-d', strtotime($latestAttendance->check_in));
                $todayDate = Carbon::now()->addHours(7)->toDateString();
            
                if ($latestAttendanceDate === $todayDate) {
                    $isToday = true;
                }
            }
        
            // Sử dụng $isToday để kiểm tra nếu check_in là ngày hôm nay
            if ($isToday) {
                
                if (is_null($latestAttendance->check_out)) {
                    $latestAttendance->check_out = $currentTime;
                    $latestAttendance->save();
                }
            } else {
                $newAttendance = new Attendance();
                $newAttendance->user_id = $user->id;
                $newAttendance->check_in = $currentTime;
                $newAttendance->save();
            }
            $latestAttendance = Attendance::where('user_id', $user->id)
            ->orderByDesc('check_in')
            ->first();
        $data = [
            'status' => 200,
            'success' => true,
            'message' => 'success',
            'data' => [
                'check_in'=>$latestAttendance->check_in,
                'check_out'=>$latestAttendance->check_out,
                ]
        ];
    
        return response()->json($data);
    }
}
