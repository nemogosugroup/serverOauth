<?php

namespace App\Http\Controllers;

use App\Models\Sidebar;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class SidebarManagerController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function formAddSidebar()
    {
        $sidebarAll = Sidebar::all()->toArray();
        $sidebarParent = [];
        $sidebarChirl = [];
        foreach ($sidebarAll as $value) {
            if($value['type'] == 0){
                $sidebarParent[] =$value;
            }else{
                $sidebarChirl[] = $value;
            }
        }
        foreach ($sidebarParent as &$value) {
            if (!isset($value['chirl'])) {
                $value['chirl'] = [];
            }
            foreach ($sidebarChirl as $valueChirl) {
                if($valueChirl['parent'] == $value['id']){
                    $value['chirl'][] =$valueChirl;
                }
            }
            
        }
        // dump($sidebarParent);die;
        return view('sidebar-page')->with('sidebarAll', $sidebarParent);
    }
    public function addSidebar(Request $request)
    {

        $name = $request->input('name');
        $link = $request->input('link');
        $access = $request->input('access');
        $status = $request->input('status');
        $sidebar = new Sidebar([
            'name' => $name,
            'link' => $link,
            'access' => $access,
            'slug' => $this->createSlug($name),
            'type' =>0,
            'status'=> $status
        ]);
        $sidebar->save();
        return redirect('/home')->with(['success' => 'Sidebar cập nhật thành công!']);
    }
    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function formAddLink()
    {
        $sidebarAll = Sidebar::all()->toArray();
        $sidebarParent = [];
        $sidebarChirl = [];
        foreach ($sidebarAll as $value) {
            if($value['type'] == 0){
                $sidebarParent[] =$value;
            }else{
                $sidebarChirl[] = $value;
            }
        }
        foreach ($sidebarParent as &$value) {
            if (!isset($value['chirl'])) {
                $value['chirl'] = [];
            }
            foreach ($sidebarChirl as $valueChirl) {
                if($valueChirl['parent'] == $value['id']){
                    $value['chirl'][] =$valueChirl;
                }
            }
            
        }
        // dump($sidebarParent);die;
        return view('sidebar-add-link')->with('sidebarAll', $sidebarParent);
    }
    public function addLink(Request $request)
    {
        $name = $request->input('name');
        $link = $request->input('link');
        $access = $request->input('access');
        $status = $request->input('status');
        $parent = $request->input('parent');
        // dump($parent);die;
        $sidebar = new Sidebar([
            'name' => $name,
            'parent' => $parent,
            'link' => $link,
            'access' => $access,
            'slug' => $this->createSlug($name),
            'type' => 1,
            'status'=> $status
        ]);
        $sidebar->save();
        return redirect('/home')->with(['success' => 'Sidebar cập nhật thành công!']);
    }

    function createSlug($inputString) {
        // Thay thế khoảng trắng bằng dấu gạch dưới
        $slug = str_replace(' ', '_', $inputString);
        
        return $slug;
    }
    
}
