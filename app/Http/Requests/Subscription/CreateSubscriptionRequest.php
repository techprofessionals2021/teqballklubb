<?php

namespace App\Http\Requests\Subscription;

use App\Models\MySubscription;
use App\Models\ProgramSetup;
use Illuminate\Foundation\Http\FormRequest;

class CreateSubscriptionRequest extends FormRequest
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

        $getProgram = ProgramSetup::find($params['programId']);

        $data = $this->except('_token');
        $data['slug'] = strtolower(str_replace(' ', '-', $getProgram->name));

        //create stripe product

        $stripeProduct = $this->stripe->products->create([
            'name' => $getProgram->name,
        ]);

        //create stripe product prices

        $stripe_price_a_month = $this->stripe->prices->create(
            [
                'product' => $stripeProduct->id,
                'unit_amount' => $params['priceForAMonth'] *100,
                'currency' => 'nok',
                'recurring' => ['interval' => 'month' ,'trial_period_days'=> 14,'interval_count'=> 1],
            ]
         );
       $stripe_price_6_month = $this->stripe->prices->create(
            [
                'product' => $stripeProduct->id,
                'unit_amount' => $params['priceFor6Month'] *100,
                'currency' => 'nok',
                'recurring' => ['interval' => 'month','trial_period_days'=> 14, 'interval_count'=> 6],
            ],
        );

        $item = new MySubscription();
        $item->group_id = $params['group'];
        $item->program_id = $params['programId'];
        $item->price_a_month = $params['priceForAMonth'];
        $item->price_6_month = $params['priceFor6Month'];

        $item->stripe_price_a_month = $stripe_price_a_month->id;
        $item->stripe_price_6_month = $stripe_price_6_month->id;
        $item->slug = $data['slug'].rand(50,3);
//        $item->stripe_plan = $data['stripe_plan'];
        $item->stripe_plan = $stripeProduct->id;
        $item->description = $params['description'];
        $item->create_by = auth()->id();
        $item->save();
        return true;
    }
}
