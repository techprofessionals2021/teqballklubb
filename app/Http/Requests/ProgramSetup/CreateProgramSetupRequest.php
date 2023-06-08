<?php

namespace App\Http\Requests\ProgramSetup;

use App\Models\ProgramSetup;
use Illuminate\Foundation\Http\FormRequest;

class CreateProgramSetupRequest extends FormRequest
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
        $item = new ProgramSetup();
        $item->name = $params['name'];
        $item->user_id = $params['practitioner'];
//        $item->exercise_category_id = $params['category'];
//        $item->sort = $params['sort'];
        $item->sort = 10;
//        $item->comment = $params['comment'];
        $item->group_id = $params['group'];
        $item->save();
        return true;
    }
}
