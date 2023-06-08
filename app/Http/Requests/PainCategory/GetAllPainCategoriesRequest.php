<?php

namespace App\Http\Requests\PainCategory;

use App\Models\PainCategory;
use Illuminate\Foundation\Http\FormRequest;

class GetAllPainCategoriesRequest extends FormRequest
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
        return PainCategory::all();
    }
}
