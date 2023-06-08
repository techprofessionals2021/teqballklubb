<?php

namespace App\Http\Requests\SetupFixedProgram;

use App\Models\SetupFixedProgramValue;
use Illuminate\Foundation\Http\FormRequest;

class GetSetupFixedProgramValuesBySetUpFixedProgramId extends FormRequest
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
        return SetupFixedProgramValue::with('programWithVideo.exCategory')->where('setup_fixed_program_id',$this->id)->get();
    }
    public function editHandle(){
        return SetupFixedProgramValue::with('programWithVideo.exCategory')->where('id',$this->id)->first();
    }
}
