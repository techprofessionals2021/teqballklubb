<?php

namespace App\Http\Requests\SetupFixedProgram;

use App\Models\SetupFixedProgram;
use Illuminate\Foundation\Http\FormRequest;

class CreateSetupFixedProgramRequest extends FormRequest
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
        $item = new SetupFixedProgram();
        $item->name = $params['name'];
//        $item->user_id = $params['practitioner'];
        $item->exercise_category_id = null;
//        $item->sort = $params['sort'];
        $item->sort = 1;
        $item->comment = $params['comment'];
//        $item->group_id = $params['group'];
        $item->save();
        return true;
    }
}
