<?php

namespace App\Http\Requests\Anthropometric;

use App\Models\Anthropometric;
use Illuminate\Foundation\Http\FormRequest;

class GetAnthropometricRequest extends FormRequest
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
    public function handle()
    {
        return Anthropometric::findOrNew($this->id);
    }

}
