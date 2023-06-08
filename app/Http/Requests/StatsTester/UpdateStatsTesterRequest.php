<?php

namespace App\Http\Requests\StatsTester;

use App\Models\StatsTester;
use Illuminate\Foundation\Http\FormRequest;

class UpdateStatsTesterRequest extends FormRequest
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
        $this->validated();
        $params = $this->all();
        $item = StatsTester::find($params['statusTesterId']);
        $item->status = $params['status'];
        $item->user_id = $params['userId'];
        $item->step_test_time = $params['step_test_time'];
        $item->step_test_count = $params['step_test_count'];
        $item->bicycle_time = $params['bicycle_time'];
        $item->bicycle_dist = $params['bicycle_dist'];
        $item->funk_strength = $params['funk_strength'];
        $item->cooperes_dist = $params['cooperes_dist'];
        $item->cooperes_count = $params['cooperes_count'];
        $item->cooperes_time = $params['cooperes_time'];
        $item->comments = $params['comments'];
        $item->save();
        return true;
    }
}
