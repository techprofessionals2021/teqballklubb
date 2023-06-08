<?php

namespace App\Http\Requests\ExerciseType;

use App\Models\ExerciseType;
use Illuminate\Foundation\Http\FormRequest;

class GetExerciseTypeRequest extends FormRequest
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
        return ExerciseType::findOrNew($this->id);
    }
}
