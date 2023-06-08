<?php

namespace App\Http\Requests\Anthropometric;

use App\Models\Anthropometric;
use Illuminate\Foundation\Http\FormRequest;

class UpdateAnthropometricRequest extends FormRequest
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

        $item = Anthropometric::find($params['anthroDataId']);
        $item->status = $params['status'];
        $item->user_id = $params['userId'];
        $item->date = $params['date'];
        $item->height = $params['height'];
        $item->weight = $params['weight'];
        $heightsq = ($params['height']*$params['height']);
//        $heightCmToMeterToSq = ($params['height']/100)*($params['height']/100);
        $item->bmi = round($params['weight'] / $heightsq ,2) ;
        //For BMI Cal
        $item->age = $params['age'];
        // $item->week_ant = $params['week_ant'];
        // $item->ant_train = $params['ant_train'];
        $item->damage_c = $params['damage_c'];
        $item->damage_nc = $params['damage_nc'];
        $item->note = $params['note'];
        // $item->vurdBorg = $params['vurd_borg'];
        // $item->VurdFys = $params['vurdFys'];
        // $item->jobs = $params['jobs'];
        // $item->r_reported = $params['r_reported'];
        // $item->internship = $params['internship'];
        // $item->comments = $params['comments'];

        $item->motivation = $params['motivation'];
        $item->akt_scale = $params['akt_scale'];
        $item->leg_length = $params['leg_length'];
        $item->shoe_size = $params['shoe_size'];
        $item->foot_size = $params['foot_size'];
        $item->position = $params['position'];
        $item->fat = $params['fat'];
      //$item->s_dribble_right = $params['s_dribble_right'];
      //$item->s_dribble_left = $params['s_dribble_left'];
        $item->save();
        return true;
    }
}
