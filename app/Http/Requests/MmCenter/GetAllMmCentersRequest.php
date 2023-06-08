<?php

namespace App\Http\Requests\MmCenter;

use App\Models\MmCenter;
use Illuminate\Foundation\Http\FormRequest;

class GetAllMmCentersRequest extends FormRequest
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
        return MmCenter::all();
    }
}
