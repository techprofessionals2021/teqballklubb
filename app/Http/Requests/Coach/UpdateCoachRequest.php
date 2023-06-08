<?php

namespace App\Http\Requests\Coach;

use App\Models\Coach;
use App\Models\User;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Support\Facades\Hash;

class UpdateCoachRequest extends FormRequest
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
        ];
    }
    public function handle()
    {
        $this->validated();
        $params = $this->all();
        $user = User::find($this->id);
        $user->retract($user->getRoles());

        $user->name = $params['name'];
        $user->username = $params['username'];
        $user->email = $params['email'];
        if (isset($params['password'])){
            $user->password = Hash::make($params['password']);
        }
        $user->telephone = $params['telephone'];

        if(isset($params['is_active'])){
            $user->is_active = 1;
        }else{
            $user->is_active = 0;
        }
        $user->save();
//        $user->assign('coach');
        $user->assign($params['function']);

        $coach = Coach::where('user_id',$this->id)->first();
        $coach->user_id = $user->id;
        $coach->workplace = $params['workplace'];
        $coach->coach_function_id = $params['function'];
//        $coach->level = $params['level'];
        $coach->address = $params['address'];
//        $coach->personalIdNumber = $params['personalIdNumber'];
        $coach->personalIdNumber = 0000;

        if(isset($params['calendar'])){
            $coach->calendar = 1;
        }else{
            $user->calendar = 0;
        }
        if(isset($params['blog'])){
            $coach->blog = 1;
        }else{
            $user->blog = 0;
        }
        $coach->note = $params['note'];
        $coach->save();

        return true;

    }
}
