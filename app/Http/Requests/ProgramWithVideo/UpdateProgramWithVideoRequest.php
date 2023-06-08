<?php

namespace App\Http\Requests\ProgramWithVideo;

use App\Models\ProgramWithVideo;
use Illuminate\Foundation\Http\FormRequest;

class UpdateProgramWithVideoRequest extends FormRequest
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

        $item = ProgramWithVideo::find($this->id);
        $item->name = $params['name'];
        $item->video_id = $params['video'];
        $item->exercise_category_id = $params['category'];
        $item->load = $params['load'];
        $item->sort = $params['sort'];
        $item->description = $params['description'];
        if (isset($params['is_active'])){
            $item->is_active = 1;
        }else{
            $item->is_active = 0;
        }
        $item->save();
        return true;
    }
}
