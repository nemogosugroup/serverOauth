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
        // $this->middleware('guest')->except('logout');
    }

    public function showLoginForm(Request $request)
    {
        $previousUrl = $request->fullUrl();
        $parsedUrl = parse_url($previousUrl);

        $queryString = isset($parsedUrl['query']) ? $parsedUrl['query'] : '';
        // // Parse the query string into an array of parameters
        parse_str($queryString, $queryParams);

        // // Retrieve the value of a specific query parameter
        $clientId = isset($queryParams['client_id']) ? $queryParams['client_id'] : null;
        $prompt = isset($queryParams['prompt']) ? $queryParams['prompt'] : null;
        $redirectUrl = isset($queryParams['redirect_uri']) ? $queryParams['redirect_uri'] : null;
        $responseType = isset($queryParams['response_type']) ? $queryParams['response_type'] : null;
        $scope = isset($queryParams['scope']) ? $queryParams['scope'] : null;
        $state = isset($queryParams['state']) ? $queryParams['state'] : null;
        
        if (isset($redirectUrl)) {
            if (Auth::check()) {
                $token = $request->session()->get("access_token");
                $user = Auth::user(); // Lấy thông tin người dùng hiện tại
                $token = $token ?? $user->createToken('API Token', ['view-user'])->accessToken;
                $request->session()->put('access_token', $token);
                return Redirect::to($redirectUrl . '?token=' . $token . '&state=' . $state);
            }else{
                // Lưu giá trị $parsedUrl['query'] vào session
                $request->session()->put("state", $state);
                $request->session()->put('redirectUrl', $redirectUrl);
            }
        }
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
            return redirect('/login')->with(
                [
                    'message' => 'Email or password is not correct.',
                    'email' => $request->input('email'),
                ]
            );
        }
        $user = User::where('email', $request->input('email'))->first();
        if (!$user) {
            $user = new User();
            $user->email = $request->input('email');
            $user->name = $request->input('email');
            $user->save();
        }
        auth()->login($user);
        // $redirectUrl = session('url')['intended'];
        $redirectUrl = session('redirectUrl');
        $state = session('state');
        
        if($redirectUrl){
            $token = $user->createToken('API Token',['view-user'])->accessToken;
            $request->session()->put('access_token',$token);
            return Redirect::to($redirectUrl. '?token=' . $token.'&state='.$state);
        }else{
            return Redirect::to("/home");
        }
        
        throw ValidationException::withMessages([
            'email' => [trans('auth.failed')],
        ]);
    }

    // chưa sử dụng thư viện này vì có nhiều thứ không custom dc được
    public function loginPassPost(Request $request)
    {
        $request->validate([
            'email' => 'required|email',
            'password' => 'required',
        ]);

        $ldapHost = "222.255.168.250"; // Địa chỉ IP của máy chủ LDAP
        // $bindResult = bindldap($user, $pass, $ldapHost);
        $check_pass = $this->bindldap($request->input('email'), $request->input('password'), $ldapHost);
        if(!$check_pass){
            return redirect('/login')->with(
                [
                    'message' => 'Email or password is not correct.',
                    'email' => $request->input('email'),
                ]
            );
        }
        $user = User::where('email', $request->input('email'))->first();
        if (!$user) {
            $user = new User();
            $user->email = $request->input('email');
            $user->name = $request->input('email');
            $user->save();
        }
        auth()->login($user);
// "http://localhost:8080?callback&response_type=code&scope=view-user&state=VNd4BHhpFtBvuD9iRvQHHKYHuckfezsdInTLP06S"
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
    public function appLogin(Request $request)
    {
        // return response()->json(['access_token' => 'test'], 200);
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
        $token = $user->createToken('API Token',['view-user'])->accessToken;
        
        return response()->json(['access_token' => $token], 200);

        // $redirectUrl = session('url')['intended'];
        
        // return Redirect::to($redirectUrl);
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
    /**
     * Log the user out of the application.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\RedirectResponse|\Illuminate\Http\JsonResponse
     */
    public function logout(Request $request)
    {
        
        if (Auth::check()) {
            // Người dùng đã đăng nhập, thực hiện mã lệnh tại đây
            Auth::logout();
        }


        $request->session()->invalidate();
        $request->session()->regenerateToken();
        $sessionCookieName = config('session.cookie');
        $response = new \Illuminate\Http\Response();
        if ($response = $this->loggedOut($request)) {
            return $response;
        }
        $previousUrl = $request->fullUrl();
        $parsedUrl = parse_url($previousUrl);
        // dd($parsedUrl);
        $queryString = isset($parsedUrl['query']) ? $parsedUrl['query'] : '';
        return Redirect::to("/login". '?' . $queryString);
    }
}
