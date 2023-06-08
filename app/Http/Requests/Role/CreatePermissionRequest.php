<?php

namespace App\Http\Requests\Role;

use App\Models\Ability;
use Illuminate\Foundation\Http\FormRequest;

class CreatePermissionRequest extends FormRequest
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
            'name' => 'required', 'string', 'min:3', 'max:100',
            'title' => 'required', 'string', 'min:3', 'max:100',
        ];
    }

    public function handle()
    {
        $permissions = ['view','show','add','edit','delete'];
        $this->validated();
        $params = $this->all();
        if (isset($params['is_single'])){
            foreach ($permissions as $item){
                $ability = new Ability();
                $ability->title = ucfirst($item).' '.$params['title'];
                $ability->name = $item.'-'.$params['name'];
                $ability->save();
            }
        }
        else{
            $ability = new Ability();
            $ability->name = $params['name'];
            $ability->title = $params['title'];
            $ability->save();
        }
        return true;
    }
}
