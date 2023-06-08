<?php

namespace App\Http\Requests\BlogCategory;

use App\Models\BlogCategory;
use Illuminate\Foundation\Http\FormRequest;

class GetBlogCategoryRequest extends FormRequest
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
        return BlogCategory::findOrNew($this->id);
    }
}
