<?php

namespace App\Http\Requests\ExerciseType;

use App\Models\ExerciseType;
use Illuminate\Foundation\Http\FormRequest;

class CreateExerciseTypeRequest extends FormRequest
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
            'name' => ['required', 'string', 'min:3', 'max:255'],
        ];
    }

    public function handle()
    {
        $this->validated();
        $params = $this->all();
        $exType = new ExerciseType();
        $exType->name = $params['name'];
        $exType->save();
        return true;
    }
}
