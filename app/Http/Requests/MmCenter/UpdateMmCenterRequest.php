<?php

namespace App\Http\Requests\MmCenter;

use App\Models\MmCenter;
use Illuminate\Foundation\Http\FormRequest;

class UpdateMmCenterRequest extends FormRequest
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
        $item = MmCenter::find($this->id);
        $item->name = $params['name'];
        $item->address = $params['address'];
        $item->postal_code = $params['postalCode'];
        $item->city = $params['city'];
        $item->telephone = $params['telephone'];
        $item->description = $params['description'];
        if(isset($params['is_active'])){
            $item->is_active = 1;
        }else{
            $item->is_active = 0;
        }
        $item->save();
        return true;
    }
}
