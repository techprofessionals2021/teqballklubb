<?php

namespace App\Http\Requests\Coach;

use App\Models\User;
use Illuminate\Foundation\Http\FormRequest;

class GetAllCoachesRequest extends FormRequest
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
    public function handle(){
//        return User::with('coachInfo')->whereIs('coach','coach-responsible','manager')->get();
        return User::with('coachInfo')->whereIsNot('practitioner')->get();
    }
}
