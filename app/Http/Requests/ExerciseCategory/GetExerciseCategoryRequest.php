<?php

namespace App\Http\Requests\ExerciseCategory;

use App\Models\ExerciseCategory;
use Illuminate\Foundation\Http\FormRequest;

class GetExerciseCategoryRequest extends FormRequest
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
        return ExerciseCategory::findOrNew($this->id);
    }
}
