<?php

namespace App\Http\Requests\SetupProgram;

use App\Models\SetupProgram;
use Illuminate\Foundation\Http\FormRequest;

class GetSetupProgramsByUserIdnSetupProgramId extends FormRequest
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
        return SetupProgram::with('programWithVideo.exCategory')->where('id',$this->id)->where('user_id',$this->userId)->first();
    }
}
