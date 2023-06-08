<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class StatsQuestion extends Model
{
    use HasFactory , SoftDeletes;

    public function practitioner()
    {
        return $this->hasOne('App\Models\User', 'id', 'user_id');
    }

    public function allStatsQuestionAndValues()
    {
        return $this->hasMany('App\Models\StatsQuestionValue', 'stats_question_id', 'id');
    }

}
