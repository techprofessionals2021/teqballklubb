<?php

namespace App\Http\Requests\User;

use App\Models\PtClipboard;
use App\Models\User;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Support\Facades\Hash;

class UpdateUserRequest extends FormRequest
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
        $user->name = $params['name'];
        $user->email = $params['email'];
        $user->username = $params['username'];
        if (isset($params['password'])) {
            $user->password = Hash::make($params['password']);
        }
        $user->address = $params['address'];
        $user->postnr = $params['postnr'];
        $user->city = $params['city'];
        if (isset($params['born'])) {
            $user->dob = $params['born'];
        }
        $user->telephone = $params['telephone'];
//        $user->profession_id = $params['profession'];
        $user->group_id = $params['group'];
//        $user->case_manager_id = $params['caseworker'];
//        $user->type_id = $params['exerciseType'];
        $user->gender = $params['gender'];
//        $user->right_left = $params['rightOrLeft'];
//        $user->level = $params['level'];
//        $user->position = $params['position'];
        $user->age = $params['age'];
//        $user->cut = $params['cut'];
//        $user->ab_rest_dager = $params['ab_rest_dager'];
        $user->center = $params['center'];
//        $user->note = $params['note'];
//        $user->journal = $params['journal'];

        if (isset($params['is_active'])) {
            $user->is_active = 1;
        } else {
            $user->is_active = 0;
        }
//        if (isset($params['statistics'])) {
//            $user->statistics = 1;
//        } else {
//            $user->statistics = 0;
//        }
//        if (isset($params['pt_customer'])) {
//            $user->pt_customer = 1;
//        } else {
//            $user->pt_customer = 0;
//        }
        if (isset($params['consent'])) {
            $user->consent = 1;
        } else {
            $user->consent = 0;
        }
//        if (isset($params['utv_adr_info'])) {
//            $user->utv_adr_info = 1;
//        } else {
//            $user->utv_adr_info = 0;
//        }
//        if (isset($params['aft'])) {
//            $user->aft = 1;
//        } else {
//            $user->aft = 0;
//        }
        $user->save();
        $user->assign('practitioner');

        // for create users pt clip board
//        if ($user->pt_customer == 1){
//            $checkptuser = PtClipboard::where('user_id',$user->id)->first();
//            if (!isset($checkptuser)){
//                $ptuser = new PtClipboard();
//                $ptuser->user_id = $user->id;
//                $ptuser->remain_clip = $params['ptClips'];
//                $ptuser->save();
//            }else{
//                $checkptuser->remain_clip = $params['ptClips'];
//                $checkptuser->save();
//            }
//        }
        return true;
    }
}
