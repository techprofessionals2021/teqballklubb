<?php

namespace App\Http\Requests\CaseWorker;

use App\Models\CaseWorker;
use Illuminate\Foundation\Http\FormRequest;

class GetCaseWorkerRequest extends FormRequest
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
        return CaseWorker::findOrNew($this->id);
    }
}