<?php

namespace App\Http\Requests\Stats3dScreening;

use App\Models\Stats3dScreening;
use Illuminate\Foundation\Http\FormRequest;

class GetAllStats3dScreeningsRequest extends FormRequest
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
        return Stats3dScreening::with('practitioner')->get();
    }
}
