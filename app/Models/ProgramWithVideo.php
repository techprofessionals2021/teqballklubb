<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class ProgramWithVideo extends Model
{
    use HasFactory ,SoftDeletes;

    public function exCategory()
    {
        return $this->hasOne('App\Models\ExerciseCategory', 'id', 'exercise_category_id')->withTrashed();
    }
    public function exVideo()
    {
        return $this->hasOne('App\Models\Video', 'id', 'video_id')->withTrashed();
    }
}
