<?php
namespace App\Providers;

use Illuminate\Contracts\Auth\UserProvider;
use Illuminate\Contracts\Auth\Authenticatable;

class CustomUserProvider implements UserProvider
{
    public function retrieveById($identifier)
    {
        // Xác định người dùng bằng $identifier và trả về đối tượng Authenticatable
        // Ví dụ:
        $user = (object) [
            'id' => 3,
            'name' => 'hoangtest',
            'email' => 'admin@gmail.com',
            'password' => '12345678'
        ];
        
        return $user;
    }
    
    public function retrieveByToken($identifier, $token)
    {
        // Triển khai logic để lấy người dùng dựa trên $identifier và $token
        // Ví dụ:
        // return User::where('id', $identifier)->where('remember_token', $token)->first();
    }

    public function updateRememberToken(Authenticatable $user, $token)
    {
        // Triển khai logic để cập nhật remember token của người dùng
        // Ví dụ:
        // $user->remember_token = $token;
        // $user->save();
    }

    public function retrieveByCredentials(array $credentials)
    {
        // Triển khai logic để lấy người dùng dựa trên thông tin đăng nhập
        // Ví dụ:
        // return User::where('email', $credentials['email'])->first();
    }

    public function validateCredentials(Authenticatable $user, array $credentials)
    {
        // Triển khai logic để xác minh thông tin đăng nhập của người dùng
        // Ví dụ:
        // return Hash::check($credentials['password'], $user->getAuthPassword());
    }
}
