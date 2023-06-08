<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Statistic extends Model
{
    use HasFactory;

    public function practitioner()
    {
        return $this->hasOne('App\Models\User', 'id', 'user_id')->withTrashed();
    }
}
