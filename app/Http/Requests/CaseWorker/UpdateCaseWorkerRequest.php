<?php

namespace App\Http\Requests\CaseWorker;

use App\Models\CaseWorker;
use Illuminate\Foundation\Http\FormRequest;

class UpdateCaseWorkerRequest extends FormRequest
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
        $item = CaseWorker::findOrNew($this->id);
        $item->name = $params['name'];
        $item->telephone = $params['telephone'];
        $item->email = $params['email'];
        $item->organization = $params['organization'];
        $item->sort = $params['sort'];

        if(isset($params['is_active'])){
            $item->is_active = 1;
        }else{
            $item->is_active = 0;
        }
        $item->save();
        return true;
    }
}
