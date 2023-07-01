<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Validation\ValidationException;
use Illuminate\Http\RedirectResponse;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Http;

// use App\Models\User;
use App\Models\User;
use App\Providers\RouteServiceProvider;

class CustomLoginController extends Controller
{
    use AuthenticatesUsers;

    protected $redirectTo = '/home';

    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }

    public function showLoginForm()
    {
        return view('auth.login');
    }

    public function login(Request $request)
    {
        $request->validate([
            'email' => 'required|email',
            'password' => 'required',
        ]);

        $ldapHost = "222.255.168.250"; // Địa chỉ IP của máy chủ LDAP
        // $bindResult = bindldap($user, $pass, $ldapHost);
        $check_pass = $this->bindldap($request->input('email'), $request->input('password'), $ldapHost);
        if(!$check_pass){
            return response()->json(['message' => 'Email or password is not correct.'], 500);
        }
        $user = User::where('email', $request->input('email'))->first();
        if (!$user) {
            $user = new User();
            $user->email = $request->input('email');
            $user->name = $request->input('email');
            $user->save();
        }
        auth()->login($user);

        $redirectUrl = session('url')['intended'];

        // $credentials = $request->only('email', 'password');

        // Tài khoản cụ thể bạn muốn so sánh
        // $specificCredentials = [
        //     'id'=>5,
        //     'email' => 'admin5@gmail.com',
        //     'password' => '12345678',
        //     'name'=> 'abcd5'
        // ];
        
        return Redirect::to($redirectUrl);

        // Gọi API của tool.vn để xác thực và lấy thông tin người dùng
        // $response = Http::post('https://crm.gosu.vn/api/login', [
        //     'email' => $request->input('email'),
        //     'password' => $request->input('password'),
        // ]);
        // if ($response->successful()) {
            // $responseData = $response->json();
            
            // if($responseData['authenticated'] == true){
            //     $token = $responseData['token'] ?? "";
    
                // Gọi API '/api/user' để lấy thông tin người dùng
                // $userResponse = Http::withHeaders([
                //     'Authorization' => 'Bearer ' . $token,
                // ])->get('https://crm.gosu.vn/api/user');
        
                // if ($userResponse->successful()) {
                    // $data = $userResponse->json();
                    // dd($data['data']['user']);
                    // if($data['data']['user']){
                    //     $user = User::where('email', $request->input('email'))->first();
                    //     if (!$user) {
                    //         $user = new User();
                    //         $user->email = $request->input('email');
                    //         $user->name = $request->input('email');
                    //         $user->save();
                    //     }
                    //     auth()->login($user);
            
                    //     $redirectUrl = session('url')['intended'];
                    //     return Redirect::to($redirectUrl);
                    // }
                    // Lưu thông tin người dùng vào cơ sở dữ liệu hoặc thực hiện các xử lý khác
        
                // if ($credentials['email'] === $specificCredentials['email'] && $credentials['password'] === $specificCredentials['password']) {
                    // Xác thực thành công
                    
                // }
                // }
            // }
            // Lấy token từ phản hồi
            
    
            // return response()->json(['message' => 'Failed to get user information'], 500);
        // }

        throw ValidationException::withMessages([
            'email' => [trans('auth.failed')],
        ]);
    }
    function bindldap($user, $pass, $ldapHost)
    {
        $ldaprdn = str_replace("@gosu.vn", "", $user) . "@gosu.vn";
        $ldappass = $pass; // associated password

        $ldapconn = ldap_connect($ldapHost) or die("Could not connect to LDAP server.");

        if ($ldapconn) {
            try {
                // Đặt các tùy chọn LDAP
                ldap_set_option($ldapconn, LDAP_OPT_PROTOCOL_VERSION, 3);
                ldap_set_option($ldapconn, LDAP_OPT_REFERRALS, 0);

                // Xác thực với tên người dùng và mật khẩu LDAP
                $ldapbind = ldap_bind($ldapconn, $ldaprdn, $ldappass);

                // Kiểm tra xem người dùng có xác thực thành công hay không
                ldap_close($ldapconn);

                return $ldapbind === true;
            } catch (\Exception $e) {
                ldap_close($ldapconn);
                return false;
            }
        }

        return false;
    }
}
