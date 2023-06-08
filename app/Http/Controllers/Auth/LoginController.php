<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers {
        logout as performLogout;
    }


    /**
     * Where to redirect users after login.
     *
     * @var string
     */
//    protected $redirectTo = RouteServiceProvider::MAIN;

    protected function authenticated(Request $request, $user)
    {
        if ($user->is_active !== 1) {
            Auth::logout();
            return redirect(route('login'))->with('error' , 'Your Account Is Not Active');
        }
        if ($user->getRoles()->first() == 'practitioner') {

            return redirect()->route('userInfo');

        } else {
            if ($user->getRoles()->first() == 'admin'){
                $routeId   = 'all';
            }else{
                $routeId   = $user->id;
            }

            return redirect()->route('fullcalender.id',$routeId);

        }
    }
    public function logout(Request $request)
    {
        $this->performLogout($request);
        return redirect()->route('login');
    }

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }
}
