<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class RegisterActivity extends Model
{
    use HasFactory , SoftDeletes;

    public function userInfo()
    {
        return $this->hasOne('App\Models\User', 'id', 'user_id');
    }
    public function coachInfo()
    {
        return $this->hasOne('App\Models\User', 'id', 'coach_id');
    }
}
