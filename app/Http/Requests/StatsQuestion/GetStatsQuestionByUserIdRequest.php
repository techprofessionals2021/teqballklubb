<?php

namespace App\Http\Requests\StatsQuestion;

use App\Models\StatsQuestion;
use Illuminate\Foundation\Http\FormRequest;

class GetStatsQuestionByUserIdRequest extends FormRequest
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
        return StatsQuestion::with('allStatsQuestionAndValues','practitioner')->where('user_id',$this->id)->get();
    }
}
