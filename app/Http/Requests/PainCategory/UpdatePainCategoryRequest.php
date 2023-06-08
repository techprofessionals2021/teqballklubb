<?php

namespace App\Http\Requests\PainCategory;

use App\Models\PainCategory;
use Illuminate\Foundation\Http\FormRequest;

class UpdatePainCategoryRequest extends FormRequest
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
        $item = PainCategory::find($this->id);
        $item->name = $params['name'];
        if(isset($params['is_active'])){
            $item->is_active = 1;
        }else{
            $item->is_active = 0;
        }
        $item->sort = $params['sort'];
        $item->save();
        return true;
    }
}
