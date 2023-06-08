<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SubscriptionProgram extends Model
{
    use HasFactory;
    protected $table = 'subscription_programs';
    protected $fillable = [
        'program_setup_id',
        'subscription_id',
    ];

}
