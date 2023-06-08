<?php

namespace App\Http\Requests\ProgramWithVideo;

use App\Models\ProgramWithVideo;
use Illuminate\Foundation\Http\FormRequest;

class GetProgramWithVideoRequest extends FormRequest
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
        return ProgramWithVideo::with('exCategory','exVideo')->where('id',$this->id)->firstOrNew();
    }
}
