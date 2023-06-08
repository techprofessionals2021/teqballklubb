<?php

namespace App\Http\Requests\ProgramSetup;

use App\Models\ProgramSetup;
use Illuminate\Foundation\Http\FormRequest;

class GetProgramSetupRequest extends FormRequest
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
        return ProgramSetup::findOrNew($this->id);
    }
}
