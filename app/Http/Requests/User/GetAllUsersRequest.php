<?php

namespace App\Http\Requests\User;

use App\Models\User;
use Illuminate\Foundation\Http\FormRequest;

class GetAllUsersRequest extends FormRequest
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
            //
        ];
    }
    public function handle(){
        return User::whereIs('practitioner')->with(['exType','group','profession','casemanager','ptClips','mmcenter'])->where('id','!=',1)->orderBy('id','desc')->get();
    }
}
