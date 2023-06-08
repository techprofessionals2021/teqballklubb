<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SubscriptionItem extends Model
{
    protected $table = 'subscription_items';

    use HasFactory;

    public function product()
    {
        return $this->belongsTo('App\Models\MySubscription', 'stripe_product', 'stripe_plan');
    }
    public function product6()
    {
        return $this->belongsTo('App\Models\MySubscription', 'stripe_product', 'stripe_plan_6');
    }
}
