<?php

namespace App\Http\Requests\StatsQuestion;

use App\Models\Group;
use App\Models\StatsQuestion;
use App\Models\StatsQuestionValue;
use Illuminate\Foundation\Http\FormRequest;

class CreateStatsQuestionRequest extends FormRequest
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
        $item = new StatsQuestion();
        $item->status = $params['status'];
        $item->user_id = $params['userId'];
        $item->save();
        for($i = 1; $i <= 32; $i++){
            $itemData = new StatsQuestionValue();
            $itemData->stats_question_id = $item->id;
            $itemData->question_no = 'q'.$i;
            $itemData->question_value = $params['q'.$i] ?? null;
            $itemData->save();
        }
        return true;
    }
}
