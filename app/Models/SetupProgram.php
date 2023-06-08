<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class SetupProgram extends Model
{
    use HasFactory ,SoftDeletes;

    public function programWithVideo()
    {
        return $this->hasOne('App\Models\ProgramWithVideo', 'id', 'program_with_video_id')->withTrashed();
    }
}
