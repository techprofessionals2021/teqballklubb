<?php

namespace App\Http\Requests\Stats3dScreening;

use App\Models\Stats3dScreening;
use Illuminate\Foundation\Http\FormRequest;

class CreateStats3dScreeningRequest extends FormRequest
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
        $stats3dValues = [
            'fpi1h', 'fpi1v', 'fpi2h', 'fpi2v',
            'fpi3h', 'fpi3v', 'fpi4h', 'fpi4v',
            'fpi5h', 'fpi5v', 'fpi6h', 'fpi6v',
            'irh', 'irv', 'erh', 'erv',
            'addh', 'addv', 'abdh', 'abdv',
            'eksh', 'eksv', 'flekh', 'flekv',
            'rotbh', 'rotbv', 'latbh', 'latbv'
        ];

        $item = new Stats3dScreening();
        $item->status = $params['status'];
        $item->user_id = $params['userId'];

        foreach ($stats3dValues as $tdValue){
            $item[$tdValue] = $params[$tdValue] ?? null;
        }

//        $item->comments = $params['comments'];

        $item->save();
        return true;
    }
}
