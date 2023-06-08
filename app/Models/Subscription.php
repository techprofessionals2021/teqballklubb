<?php

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Subscription extends Model
{
    protected $table = 'subscriptions';

    use HasFactory;

    public function subsItem()
    {
        return $this->belongsTo('App\Models\SubscriptionItem', 'id', 'subscription_id');
    }
    public function getRemainingDaysAttribute()
    {
        if ($this->subscription_ends_at >= $this->created_at ) {
            $remaining_days = Carbon::now()->diffInDays(Carbon::parse($this->subscription_ends_at));
        } else {
            $remaining_days = 0;
        }
        return $remaining_days;
    }

    public function getSubscriptionNameByPlanId($planId)
    {
        return MySubscription::where('stripe_price_a_month',$planId)->orWhere('stripe_price_6_month',$planId)->first();
    }


}
