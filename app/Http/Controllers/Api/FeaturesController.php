<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class FeaturesController extends Controller
{
    
    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function listFeatures()
    {
        $listFeatures = array(
            array(
                'name'=>'news',
                'status'=>1
            ),
            array(
                'name'=>'attendance',
                'status'=>0
            ),
        );
        $data = [
            'status' => 200,
            'success' => true,
            'message' => 'success',
            'data' => $listFeatures
        ];
    
        return response()->json($data);
    }
}
