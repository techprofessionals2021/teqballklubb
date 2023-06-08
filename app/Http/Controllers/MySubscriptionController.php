<?php

namespace App\Http\Controllers;

use App\Http\Requests\SetupFixedProgram\GetAllSetupFixedProgramsRequest;
use App\Http\Requests\Subscription\CreateSubscriptionRequest;
use App\Http\Requests\Subscription\GetSubscriptionRequest;
use App\Http\Requests\Subscription\UpdateSubscriptionRequest;
use App\Models\Group;
use App\Models\ProgramSetup;
use App\Models\MySubscription;
use App\Models\Subscription as UserSubscription;
use App\Models\SubscriptionProgram;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Config;
use Laravel\Cashier\Subscription;
use Stripe\PaymentLink;
use Stripe\Plan;

class MySubscriptionController extends Controller
{
    protected $stripe;

    public function __construct()
    {

        $this->stripe = new \Stripe\StripeClient(Config::get('app.stripe_secret'));
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * @param GetSubscriptionRequest $request
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View
     */
    public function create(GetSubscriptionRequest $request)
    {
        $request->id = 0;

        $response = $request->handle();

        $allSetupFixedPrograms = new GetAllSetupFixedProgramsRequest();

        $allSetupFixedPrograms = $allSetupFixedPrograms->handle();

        $selectedProgramItems = [];

        $groups = Group::all();

        $route = url('subscription/store');

        return view('admin.subscription.form', ['subscription' => $response,'selectedProgramItems' => $selectedProgramItems,'groups' => $groups, 'allSetupFixedPrograms' => $allSetupFixedPrograms, 'route' => $route, 'edit' => false]);
    }

    /**
     * @param CreateSubscriptionRequest $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store(CreateSubscriptionRequest $request)
    {

        $request->stripe = $this->stripe ;

        $response = $request->handle();

        return redirect()->route('program-setup.index')->with('success', __('custom.subscription-add-successfully'));

    }

    public function saveSubscription(Request $request)
    {

        \Stripe\Stripe::setApiKey(config('services.stripe.secret'));
//        $getProgram = ProgramSetup::find($request->programId);

        $slug = strtolower(str_replace(' ', '-', $request->subscription_name));

        try {

            $plan = Plan::create([
                'amount' => $request->priceForAMonth*100,
                'currency' => 'nok',
                'interval' => 'month',
                'interval_count' => 1,
                'trial_period_days'=> 14,
//                'recurring' => ['interval' => 'month' ,'trial_period_days'=> 14,'interval_count'=> 1],
                'product' => [
                    'name' => $request->subscription_name
                ]
            ]);

            $plan2 = Plan::create([
                'amount' => $request->priceFor6Month*100,
                'currency' => 'nok',
                'interval' => 'month',
                'interval_count' => 6,
                'trial_period_days'=> 14,
//                'recurring' => ['interval' => 'month' ,'trial_period_days'=> 14,'interval_count'=> 6],
                'product' => [
                    'name' => $request->subscription_name
                ]
            ]);

//       ------for payment links------

//            $stripe_price_a_month_link = PaymentLink::create(
//                ['line_items' => [['price' => $plan->id,'quantity' => 1,]],
//                    'allow_promotion_codes' => true,
////                    'automatic_tax' => ['enabled' => true],
//                ]
//            );
//            $stripe_price_6_month_link = PaymentLink::create(
//                ['line_items' => [['price' => $plan2->id,'quantity' => 1,]],
//                    'allow_promotion_codes' => true,
////                    'automatic_tax' => ['enabled' => true],
//                    'subscription_data' => ['trial_period_days'=> 14],
//                ]
//            );

            $item = new MySubscription();
//            $item->group_id = $request->group; //  group related work remove by the client.
//            $item->program_id = $request->programId; // we create a bridge table for multiple programs in one subscription.
            $item->subscription_name = $request->subscription_name;
            $item->price_a_month = $request->priceForAMonth;
            $item->price_6_month = $request->priceFor6Month;

            $item->stripe_price_a_month = $plan->id;
            $item->stripe_price_6_month = $plan2->id;

//            $item->stripe_price_a_month_link = $stripe_price_a_month_link->url;
//            $item->stripe_price_6_month_link = $stripe_price_6_month_link->url;

            $item->slug = $slug.rand(50,3);
            $item->stripe_plan = $plan->product;
            $item->stripe_plan_6 = $plan2->product;
            $item->description = $request->description;
            $item->create_by = auth()->id();
            $item->save();

            foreach ($request->programId as $progItem){
               $subsPrograms = SubscriptionProgram::create([
                    'subscription_id'=>$item->id,
                    'program_setup_id'=>$progItem,
                ]);
            }

        }
        catch(Exception $ex){
            dd($ex->getMessage());
        }

        return redirect()->route('program-setup.index')->with('success', __('custom.subscription-add-successfully'));
    }


    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * @param $id
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View|\Illuminate\Http\RedirectResponse
     */
    public function edit($id)
    {
        $request = new GetSubscriptionRequest();

        $request->id = $id;

        $response = $request->handle();

        if (!isset($response->id)) {
            return redirect()->route('program-setup.index')->with('error', 'Abonnement Ikke funnet!!');
        }
        $allSetupFixedPrograms = new GetAllSetupFixedProgramsRequest();

        $allSetupFixedPrograms = $allSetupFixedPrograms->handle();

        $selectedProgramItems = $response->getProgramSetupBySubscription->pluck('program_setup_id')->toArray();

        $route = route('mysubscription.update', ['mysubscription' => $response->id]);

        $groups = Group::all();

        return view('admin.subscription.form', ['subscription' => $response, 'allSetupFixedPrograms' => $allSetupFixedPrograms,'selectedProgramItems' => $selectedProgramItems,'groups' => $groups, 'route' => $route, 'edit' => true]);
    }

    /**
     * @param Request $request
     * @param $id
     * @return \Illuminate\Http\RedirectResponse
     */

    public function update(Request $request, $id)
    {
        $item = MySubscription::find($id);
//        $getProgram = ProgramSetup::find($request->programId);

        $slug = strtolower(str_replace(' ', '-', $request->subscription_name));

//        $item->group_id = $request->group; //  group related work remove by the client.
//        $item->program_id = $request->programId;
        $item->subscription_name = $request->subscription_name;
        $item->price_a_month = $request->priceForAMonth;
        $item->price_6_month = $request->priceFor6Month;

//        $item->stripe_price_a_month = $plan->id;
//        $item->stripe_price_6_month = $plan2->id;

        $item->slug = $slug.rand(50,3);
//        $item->stripe_plan = $plan->product;
//        $item->stripe_plan_6 = $plan2->product;
        $item->description = $request->description;
        $item->create_by = auth()->id();
        $item->save();


        $delSubsPrograms = SubscriptionProgram::where('subscription_id',$id)->delete();

        foreach ($request->programId as $progItem){
            $subsPrograms = SubscriptionProgram::create([
                'subscription_id'=>$item->id,
                'program_setup_id'=>$progItem,
            ]);
        }

        return redirect()->route('program-setup.index')->with('success', __('custom.subscription-edit-successfully'));
    }

//    public function update(UpdateSubscriptionRequest $request, $id)
//    {
//        $request->id = $id;
//
//        $request->stripe = $this->stripe ;
//
//        $response = $request->handle();
//
//        return redirect()->route('program-setup.index')->with('success', __('custom.subscription-edit-successfully'));
//    }

    /**
     * @param $id
     * @return \Illuminate\Http\RedirectResponse
     */
    public function destroy($id)
    {
        MySubscription::find($id)->delete();

        return redirect()->route('program-setup.index')->with('success', __('custom.subscription-delete-successfully'));
    }

    public function getProgramsByGroupId(Request $request)
    {

        $progIds = SubscriptionProgram::where('subscription_id',$request->subsId)->pluck('program_setup_id')->toArray();

        $groupProgram = ProgramSetup::with('group')
            ->where('group_id', $request->group_id)->get();

        $body = "<option value='' disabled>".__('Velg program')."</option>";
        if ($groupProgram) {
            foreach ($groupProgram as $key => $value) {
                $isSelected = in_array($value->id,$progIds) ? "selected" : "";
                $body .= "<option value='" . $value->id . "' ".$isSelected.">" . $value->name . "</option>"; // if this not working try below
//          $body[$key] = "<option value='".$value->id."'>".$value->name."</option>";  // Todo  Resolved
            }
            $bod['status'] = 1;
            $bod['body'] = $body;
        } else {
            $bod['status'] = 0;
            $bod['body'] = $bod;
        }

        $response = json_encode($bod);
        return $response;
    }

    public function createPaymentSession(Request $request,$prodId,$planId)
    {
        $user = Auth::user();

        $subscriptionInfo = MySubscription::where('stripe_plan_6',$prodId)->where('stripe_price_6_month',$planId)->first();
        $userSubscriptionInfo = UserSubscription::where('user_id',$user->id)
            ->where('stripe_price',$subscriptionInfo->stripe_price_6_month ?? '-');
         //   ->where('trial_ends_at','!=',null)->get();


        $responce = $request->user()->newSubscription($prodId, $planId);

        // if ((count($userSubscriptionInfo) > 0) == false){
        //         $responce = $responce->trialDays(15);
        //     }

        $responce = $responce->allowPromotionCodes()
            ->checkout([
                'locale' => "en",
                'success_url' => route(
                    'subscription.subscribe.success',
                ) . '?session_id={CHECKOUT_SESSION_ID}',
                'cancel_url' => url()->previous() ,
            ]);

        return $responce ;
    }

    public function usersAllSubscription()
    {
        $user = Auth::user();

        $usersPlans =$user->subscription();

//       $allUserSubLists = MySubscription::with(['programSetup','group','combineSubsProgram.subscription'])->where('group_id',$user->group_id)->get();
       $allUserSubLists = MySubscription::with(['programSetup','group','combineSubsProgram.subscription'])->get();

        $usersAllSubscriptions = UserSubscription::with('subsItem.product.programSetup','subsItem.product6.programSetup')->where('user_id',$user->id)->get();

        return view('user.user-subscription-list', ['userSubLists' => $allUserSubLists, 'usersPlans' => $usersPlans, 'usersAllSubscriptions' => $usersAllSubscriptions]);
    }

    public function allSubscriptionMain()
    {


        $allUserSubLists = MySubscription::with(['programSetup','group','combineSubsProgram.subscription'])->get();

        return view('user.user-subscription-list', ['userSubLists' => $allUserSubLists]);
    }


    public function subscriptionResponse(){

//        $endpoint_secret = 'whsec_7c59e0aee43c6a698bf27b8f538767b08aa215e546684f939262e8f0b6ccfdd3';
        $endpoint_secret = 'whsec_kY1GiZSm0NZgo8qiIPBh27hmW7ZteoHF';
        $payload = @file_get_contents('php://input');
        $sig_header = $_SERVER['HTTP_STRIPE_SIGNATURE'];

        $event = null;

        try {
            $event = \Stripe\Webhook::constructEvent(
                $payload, $sig_header, $endpoint_secret
            );
        } catch(\UnexpectedValueException $e) {
            // Invalid payload
            http_response_code(400);
            exit();
        } catch(\Stripe\Exception\SignatureVerificationException $e) {
            // Invalid signature
            http_response_code(400);
            exit();
        }

        // Handle the event
        switch ($event->type) {
            case 'checkout.session.async_payment_failed':
                $session = $event->data->object;
            case 'checkout.session.async_payment_succeeded':
                $session = $event->data->object;
            case 'checkout.session.completed':
                $session = $event->data->object;
            case 'checkout.session.expired':
                $session = $event->data->object;
            case 'customer.subscription.created':
                $subscription = $event->data->object;
            case 'customer.subscription.trial_will_end':
                $subscription = $event->data->object;
            case 'customer.subscription.updated':
                $subscription = $event->data->object;
            case 'invoice.payment_succeeded':
                $invoice = $event->data->object;
            case 'order.created':
                $order = $event->data->object;
            case 'payment_intent.amount_capturable_updated':
                $paymentIntent = $event->data->object;
            case 'payment_intent.canceled':
                $paymentIntent = $event->data->object;
            case 'payment_intent.created':
                $paymentIntent = $event->data->object;
            case 'payment_intent.partially_funded':
                $paymentIntent = $event->data->object;
            case 'payment_intent.payment_failed':
                $paymentIntent = $event->data->object;
            case 'payment_intent.processing':
                $paymentIntent = $event->data->object;
            case 'payment_intent.requires_action':
                $paymentIntent = $event->data->object;
            case 'payment_intent.succeeded':
                $paymentIntent = $event->data->object;
            // ... handle other event types
            default:
                echo 'Received unknown event type ' . $event->type;
        }

        http_response_code(200);
    }

    public function usersAllSubscription2()
    {
        $user = Auth::user();

        $usersPlans =$user->subscription();

        $usersAllSubscriptions = UserSubscription::with('subsItem.product.programSetup','subsItem.product6.programSetup')->where('user_id',$user->id)->get();

        return view('user.user-subscription-list-2', [ 'usersPlans' => $usersPlans, 'usersAllSubscriptions' => $usersAllSubscriptions]);
    }


    public function usersSubscriptionById($id, Request $request)
    {
        $paymentMethods = $request->user()->paymentMethods();
        $intent = $request->user()->createSetupIntent();

        $subByid = MySubscription::with('programSetup','group')->find($id);

        return view('user.packageDetail', ['subPlan' => $subByid ,'paymentMethods' => $paymentMethods ,'intent' => $intent , ]);
    }

}
