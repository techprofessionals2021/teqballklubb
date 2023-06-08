<?php

namespace App\Http\Requests\FootballStats;

use App\Models\Football;
use Illuminate\Foundation\Http\FormRequest;

class UpdateFootballStatsRequest extends FormRequest
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

        $item = Football::find($params['footballStatsDataId']);
        $item->status = $params['status'];
        $item->user_id = $params['userId'];
        $item->date = $params['date'];
        $item->yoyo_test = $params['yoyo_test'];
//        $item->dlbt = $params['dlbt'];
        $item->dlbt_dom = $params['dlbt_dom'];
        $item->dlbt_non = $params['dlbt_non'];
//        $item->rm_squat = $params['rm_squat'];
        $item->lb_pass = $params['lb_pass'];
        $item->lb_shoot = $params['lb_shoot'];
        $item->lb_velocity = $params['lbVelocity'];
        $item->lb_point = $params['lb_point'];
        $item->s180 = $params['s180'];
//        $item->s_dribble = $params['s_dribble'];
        $item->s_dribble_right = $params['s_dribble_right'];
        $item->s_dribble_left = $params['s_dribble_left'];
//        $item->turn = $params['turn'];
//        $item->bench_press = $params['bench_press'];
//        $item->markl_1RM = $params['markl_1RM'];
        $item->vertXXX = $params['vertXXX'];
        $item->vertRXX = $params['vertRXX'];
        $item->vertLLX = $params['vertLLX'];
        $item->hoXXX = $params['hoXXX'];
        $item->hrslj = $params['hrslj'];
        $item->hlslj = $params['hlslj'];
        $item->speed_10m = $params['speed10'];
        $item->speed_20m = $params['speed20'];
        $item->speed_30m = $params['speed30'];
        $item->speed_40m = $params['speed40'];
        $item->RMBenk1 = $params['rmBenk1'];
        $item->RMSquat1 = $params['rmSquat1'];
        $item->RMDead1 = $params['rmDead1'];
//        $item->right = $params['right'];
//        $item->left = $params['left'];
        $item->comments = $params['comments'];
        $item->save();
        return true;
    }
}
