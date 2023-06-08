<?php

namespace App\Http\Requests\ExerciseCategory;

use App\Models\ExerciseCategory;
use Illuminate\Foundation\Http\FormRequest;

class UpdateExerciseCategoryRequest extends FormRequest
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
        $item = ExerciseCategory::find($this->id);
        $item->name = $params['name'];
//        $item->sort = $params['sort'];
        $item->sort = $item->sort = 10;;
        $item->save();
        return true;
    }
}
