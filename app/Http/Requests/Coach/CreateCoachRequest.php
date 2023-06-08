<?php

namespace App\Http\Requests\Coach;

use App\Models\Coach;
use App\Models\User;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Support\Facades\Hash;

class CreateCoachRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'name' => ['required', 'string', 'min:3', 'max:255'],
            'username' => ['required', 'string', 'min:3', 'max:255', 'unique:users'],
            'email' => ['required', 'string', 'min:3', 'max:255', 'unique:users'],
        ];
    }
    public function messages()
    {
        return [
            'email.required' => 'Email is required',
            'email.unique' => 'The Email is already taken',
            'username.required' => 'Username is required',
            'username.unique' => 'The Username is already taken',
        ];
    }

    public function handle()
    {
        $this->validated();
        $params = $this->all();

        $user = new User();
        $user->name = $params['name'];
        $user->username = $params['username'];
        $user->email = $params['email'];
        $user->password = Hash::make($params['password']);
        $user->telephone = $params['telephone'];

        if(isset($params['is_active'])){
            $user->is_active = 1;
        }
        $user->save();
//        $user->assign('coach');
        $user->assign($params['function']);

        $coach = new Coach();
        $coach->user_id = $user->id;
        $coach->workplace = $params['workplace'];
        $coach->coach_function_id = $params['function'];
//        $coach->level = $params['level'];
        $coach->address = $params['address'];
//        $coach->personalIdNumber = $params['personalIdNumber'];
        $coach->personalIdNumber = 0000;

        if(isset($params['calendar'])){
            $coach->calendar = 1;
        }
        if(isset($params['blog'])){
            $coach->blog = 1;
        }
        $coach->note = $params['note'];
        $coach->save();

        return true;

    }
}
