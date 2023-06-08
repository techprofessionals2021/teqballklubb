<?php

namespace App\Http\Requests\Subscription;

use App\Models\MySubscription;
use Illuminate\Foundation\Http\FormRequest;

class GetAllSubscriptionsRequest extends FormRequest
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
        return MySubscription::with('programSetup','group')->get();
    }
}
