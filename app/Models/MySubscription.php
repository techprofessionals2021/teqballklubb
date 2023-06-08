<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class MySubscription extends Model
{
    protected $table = 'my_subscriptions';

    use HasFactory ,SoftDeletes;

    public function group()
    {
        return $this->hasOne('App\Models\Group', 'id', 'group_id')->withTrashed();
    }

    public function programSetup()
    {
        return $this->hasOne('App\Models\ProgramSetup', 'id', 'program_id')->withTrashed();
    }
    public function setupFixedProgram()
    {
        return $this->hasOne('App\Models\SetupFixedProgram', 'id', 'program_id');
    }

    public function getProgramSetupBySubscription()
    {
        return $this->hasMany('App\Models\SubscriptionProgram', 'subscription_id', 'id');
    }

    public function combineSubsProgram()
    {
        return $this->belongsTo('App\Models\CombineSubscriptionPlanProgram', 'id', 'plan_id');
    }

}
