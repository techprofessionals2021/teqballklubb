<?php

namespace App\Http\Requests\PtClipboard;

use App\Models\Group;
use App\Models\PtClipboard;
use Illuminate\Foundation\Http\FormRequest;

class GetAllPtClipboardsRequest extends FormRequest
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
        return PtClipboard::with('practitioner')->get();
    }

}
