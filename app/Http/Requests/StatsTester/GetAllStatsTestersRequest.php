<?php

namespace App\Http\Requests\StatsTester;

use App\Models\StatsTester;
use Illuminate\Foundation\Http\FormRequest;

class GetAllStatsTestersRequest extends FormRequest
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
        return StatsTester::with('practitioner')->get();
    }
}
