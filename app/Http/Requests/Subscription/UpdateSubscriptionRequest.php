<?php

namespace App\Http\Requests\Subscription;

use App\Models\MySubscription;
use App\Models\ProgramSetup;
use Illuminate\Foundation\Http\FormRequest;

class UpdateSubscriptionRequest extends FormRequest
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

        $item = MySubscription::find($this->id);
        $getProgram = ProgramSetup::find($params['programId']);

        $data = $this->except('_token');
        $data['slug'] = strtolower(str_replace(' ', '-', $getProgram->name));

        $stripeProduct = $this->stripe->products->update(
            $item->stripe_plan,[
            'name' => $getProgram->name,
        ]);


        $stripe_price_a_month = $this->stripe->prices->update(
            $item->stripe_price_a_month,[
//                'product' => $stripeProduct->id,
//                'unit_amount' => $params['priceForAMonth'] *100,
//                'currency' => 'nok',
            ]
        );

        $stripe_price_6_month = $this->stripe->prices->update(
            $item->stripe_price_6_month,
            [
//                'product' => $stripeProduct->id,
//                'unit_amount' => $params['priceFor6Month'] *100,
//                'currency' => 'nok',
            ],
        );

//        $item = MySubscription::find($this->id);
        $item->group_id = $params['group'];
        $item->program_id = $params['programId'];
        $item->price_a_month = $params['priceForAMonth'];
        $item->price_6_month = $params['priceFor6Month'];
        $item->slug = $data['slug'].rand(50,3);
        $item->description = $params['description'];
        $item->create_by = auth()->id();
        $item->save();
        return true;
    }
}
