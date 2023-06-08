<?php

namespace App\Http\Requests\Video;

use App\Models\ExerciseCategory;
use App\Models\Video;
use Illuminate\Foundation\Http\FormRequest;

class UpdateVideoRequest extends FormRequest
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

        $getCategory = ExerciseCategory::where('name',$params['category'])->firstOrNew();
        if (!isset($getCategory->id)){
            $getCategory->name = $params['category'];
            $getCategory->sort = 99;
            $getCategory->save();
        }

        $item = Video::find($this->id);
        $item->name = $params['name'];
        $item->type = $params['type'];
//        $item->exercise_category_id = $params['category'];
        $item->exercise_category_id = $getCategory->id;
        $item->video_sd = $params['video_sd'];
        $item->video_hd = $params['video_hd'];
//        $item->description = $params['description'];
        $item->save();
        return true;
    }
}
