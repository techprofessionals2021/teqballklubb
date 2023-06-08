<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use App\Models\User;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    protected $redirectTo = RouteServiceProvider::HOME;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest');
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'name' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'password' => ['required', 'string', 'min:8', 'confirmed'],
        ]);
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return \App\Models\User
     */
    protected function create(array $params)
    {
     
//        return User::create([
//            'name' => $data['name'],
//            'email' => $data['email'],
//            'password' => Hash::make($data['password']),
//        ]);

        $user = new User();
        $user->name = $params['name'];
        $user->username = $params['username'];
        $user->email = $params['email'];
        $user->password = Hash::make($params['password']);
        $user->address = $params['address'];
        $user->postnr = $params['postnr'];
        $user->city = $params['city'];
        $user->dob = $params['born'];
        $user->telephone = $params['telephone'];
        $user->gender = $params['gender'];
        $user->klubb = $params['Klubb'];
        $user->funksjon = $params['funksjon'];
//        $user->right_left = $params['rightOrLeft'];
        $user->age = $params['age'];
//        $user->position = $params['position'];
        $user->self_reg = 1;


//        if(isset($params['is_active'])){
            $user->is_active = 1;
//        }
//        if(isset($params['statistics'])){
//            $user->statistics = 1;
//        }

//        if(isset($params['consent'])){
//            $user->consent = 1;
//        }
//        if(isset($params['utv_adr_info'])){
//            $user->utv_adr_info = 1;
//        }
//        if(isset($params['aft'])){
//            $user->aft = 1;
//        }
        $user->save();
        $user->assign('practitioner');
        return $user;

    }
}
