<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Football extends Model
{
    use HasFactory, SoftDeletes;

    protected $fillable = ['dlbt','lb_velocity','s180','hrslj','hlslj','speed_10m','speed_20m','speed_30m','speed_40m',
        'RMBenk1','RMSquat1','RMDead1',];

    public function practitioner()
    {
        return $this->hasOne('App\Models\User', 'id', 'user_id');
    }
}
