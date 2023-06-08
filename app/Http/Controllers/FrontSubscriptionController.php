<?php

namespace App\Http\Controllers;

use App\Models\CombineSubscriptionPlanProgram;
use App\Models\MySubscription;
use App\Models\Subscription as UserSubscription;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Config;
use Laravel\Cashier\Subscription;
use Stripe\Checkout\Session;
use Stripe\Stripe;

class FrontSubscriptionController extends Controller
{
    protected $stripe;

    public function __construct()
    {

        $this->stripe = new \Stripe\StripeClient(Config::get('app.stripe_secret'));
    }

    public function create(Request $request)
    {
        $planInfo = MySubscription::findOrFail($request->get('plan'));

        $subscriptions = Subscription::where('user_id', auth()->id())->get();
        $trialCount = count($subscriptions->whereNotNull('trial_ends_at'));

        $userSubscriptionInfo = UserSubscription::where('user_id',auth()->id())
            ->where('stripe_price',$planInfo->stripe_price_6_month)
            ->where('trial_ends_at','!=',null)->get();

        $combineSubsPlanProgram = new CombineSubscriptionPlanProgram();

        $user = auth()->user();
        $user->createOrGetStripeCustomer();
        $paymentMethod = null;
        $paymentMethod = $request->paymentMethod;
        if($paymentMethod != null){
            $paymentMethod = $user->addPaymentMethod($paymentMethod);
        }

        if ($request->planType == '6month'){
            $plan = $planInfo->stripe_price_6_month;

            $combineSubsPlanProgram->is_6_month = 1;
        }else{
            $plan = $planInfo->stripe_price_a_month;

            $combineSubsPlanProgram->is_a_month = 1;
        }

        try {
            $subscription =  $user->newSubscription('default', $plan)
                ->create( $paymentMethod != null ? $paymentMethod->id: '');

            if ($request->planType == '6month') {
                $subscription->subscription_ends_at = date('Y-m-d h:i:s',strtotime(Carbon::now()->subMonths(-6)));

                if ((count($userSubscriptionInfo) > 0) == false) {
                    $subscription->trial_ends_at = date('Y-m-d h:i:s',strtotime(Carbon::now()->addDays(14)));
                }
//                if ($trialCount < 1){
//                    $subscription->trial_ends_at = date('Y-m-d h:i:s',strtotime(Carbon::now()->addDays(14)));
//                }

            } else {
                $subscription->subscription_ends_at = date('Y-m-d h:i:s',strtotime(Carbon::now()->subMonths(-1)));
            }

            $subscription->save();

            $combineSubsPlanProgram->user_id = $user->id;
            $combineSubsPlanProgram->plan_id = $planInfo->id;
            $combineSubsPlanProgram->program_id = $planInfo->program_id;
            $combineSubsPlanProgram->subscription_id = $subscription->id;
            $combineSubsPlanProgram->save();


        }
        catch(Exception $ex){
            return back()->withErrors([
                'error' => 'Unable to create subscription due to this issue '. $ex->getMessage()
            ]);
        }

//        -------------------

//
//        if ($request->planType == '6month') {
//
//            $pirce = $plan->stripe_price_6_month;
//        } else {
//
//            $pirce = $plan->stripe_price_a_month;
//        }
//
//        $user = $request->user();
//
//        $paymentMethod = $request->paymentMethod;
//        $user->createOrGetStripeCustomer();
//        $user->updateDefaultPaymentMethod($paymentMethod);
//
//        $subscription = $user->newSubscription('default',$pirce)
//            ->create($paymentMethod, [
//                'email' => $user->email,
////                'trial_end' => 1610403705,
//            ]);
//        if ($request->planType == '6month') {
//            $subscription->ends_at = date('Y-m-d h:i:s',strtotime(Carbon::now()->subMonths(-6)));
//        } else {
//            $subscription->ends_at = date('Y-m-d h:i:s',strtotime(Carbon::now()->subMonths(-1)));
//        }
//
//        $subscription->save();

        return redirect()->route('usersAllSubscription')->with('success', 'Abonnementet ditt er kjøpt og lagt til din konto');
    }


    public function subscribeSuccess(Request $request)
    {

        Stripe::setApiKey(Config::get('app.stripe_secret'));

        $checkout_session = Session::retrieve($request->session_id);

        $subscriptions_details = \Stripe\Subscription::retrieve($checkout_session->subscription);

        if ($subscriptions_details->plan->interval_count == 6){
            $planInfo = MySubscription::where('stripe_plan_6',$subscriptions_details->plan->product)->first();
        }else{
            $planInfo = MySubscription::where('stripe_plan',$subscriptions_details->plan->product)->first();
        }

        $subscriptions = Subscription::where('user_id', auth()->id())->get();

        $trialCount = count($subscriptions->whereNotNull('trial_ends_at'));

        $userSubscriptionInfo = UserSubscription::where('user_id',auth()->id())
            ->where('stripe_price',$planInfo->stripe_price_6_month)
            ->where('trial_ends_at','!=',null)->get();

        $combineSubsPlanProgram = new CombineSubscriptionPlanProgram();

        $user = auth()->user();
        $paymentMethod = $subscriptions_details->default_payment_method;

        if ($subscriptions_details->plan->interval_count == 6){
            $plan = $planInfo->stripe_price_6_month;

            $combineSubsPlanProgram->is_6_month = 1;
        }else{
            $plan = $planInfo->stripe_price_a_month;

            $combineSubsPlanProgram->is_a_month = 1;
        }

        try {
            $subscription =  $user->newSubscription('default', $plan)
                ->create( $paymentMethod != null ? $paymentMethod: '');

            if ($subscriptions_details->plan->interval_count == 6) {
                $subscription->subscription_ends_at = date('Y-m-d h:i:s',strtotime(Carbon::now()->subMonths(-6)));

                if ((count($userSubscriptionInfo) > 0) == false) {
                    $subscription->trial_ends_at = date('Y-m-d h:i:s',strtotime(Carbon::now()->addDays(14)));
                }
//                if ($trialCount < 1){
//                    $subscription->trial_ends_at = date('Y-m-d h:i:s',strtotime(Carbon::now()->addDays(14)));
//                }

            } else {
                $subscription->subscription_ends_at = date('Y-m-d h:i:s',strtotime(Carbon::now()->subMonths(-1)));
            }

            $subscription->save();

            $combineSubsPlanProgram->user_id = $user->id;
            $combineSubsPlanProgram->plan_id = $planInfo->id;
            $combineSubsPlanProgram->program_id = $planInfo->program_id;
            $combineSubsPlanProgram->subscription_id = $subscription->id;
            $combineSubsPlanProgram->save();

        } catch(Exception $ex){
            return back()->withErrors([
                'error' => 'Unable to create subscription due to this issue '. $ex->getMessage()
            ]);
        }

        return redirect()->route('usersAllSubscription2')->with('success', 'Abonnementet ditt er kjøpt og lagt til din konto');
    }

//    public function create(Request $request)
//    {
//        $plan = MySubscription::findOrFail($request->get('plan'));
//
//        $getStripProd = $this->stripe->products->retrieve($plan->stripe_plan);
//
//        if ($request->planType == '6month') {
//
//            $pirce = $plan->stripe_price_6_month;
//        } else {
//
//            $pirce = $plan->stripe_price_a_month;
//        }
//
//        $user = $request->user();
//
//        $paymentMethod = $request->paymentMethod;
//        $user->createOrGetStripeCustomer();
//        $user->updateDefaultPaymentMethod($paymentMethod);
//
//        $subscription = $user->newSubscription('default',$pirce)
//            ->create($paymentMethod, [
//                'email' => $user->email,
////                'trial_end' => 1610403705,
//                ]);
//        if ($request->planType == '6month') {
//            $subscription->ends_at = date('Y-m-d h:i:s',strtotime(Carbon::now()->subMonths(-6)));
//        } else {
//            $subscription->ends_at = date('Y-m-d h:i:s',strtotime(Carbon::now()->subMonths(-1)));
//        }
//
//        $subscription->save();
//
//            return redirect()->route('userInfo')->with('success', 'Your plan subscribed successfully');
//    }

    public function pauseSubscription($subId)
    {
        $user = auth()->user();
//        $onTrail = $user->onTrial($subId);
        $data = $user->subscription($subId)->cancel();
//        return redirect()->route('usersAllSubscription')->with('success', 'Ditt abonnement er kansellert.');
        return redirect()->back()->with('success', 'Ditt abonnement er kansellert.');
    }

    public function renewSubscription($subId)
    {
        $user = auth()->user();
//        $onTrail = $user->onTrial($subId);
        $user->subscription($subId)->resume();

//        return redirect()->route('usersAllSubscription')->with('success', 'Ditt abonnement er aktivert.');
        return redirect()->back()->with('success', 'Ditt abonnement er aktivert.');
    }

}
