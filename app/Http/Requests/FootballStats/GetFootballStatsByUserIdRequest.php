<?php

namespace App\Http\Requests\FootballStats;

use App\Models\Football;
use Illuminate\Foundation\Http\FormRequest;

class GetFootballStatsByUserIdRequest extends FormRequest
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
        return Football::with('practitioner')->where('user_id',$this->id)->get();
    }
}
