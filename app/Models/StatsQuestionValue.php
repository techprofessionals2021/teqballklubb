<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class StatsQuestionValue extends Model
{
    use HasFactory;

    public function statsQuestionById()
    {
        return $this->belongsTo('App\Models\StatsQuestion', 'stats_question_id', 'id');
    }
}
