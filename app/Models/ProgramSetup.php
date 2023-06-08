<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class ProgramSetup extends Model
{
    use HasFactory ,SoftDeletes;

    public function exCategory()
    {
        return $this->hasOne('App\Models\ExerciseCategory', 'id', 'exercise_category_id')->withTrashed();
    }
    public function group()
    {
        return $this->hasOne('App\Models\Group', 'id', 'group_id')->withTrashed();
    }
    public function group2()
    {
        return $this->hasOne('App\Models\Group', 'id', 'group_id');
    }
    public function practitioner()
    {
        return $this->hasOne('App\Models\User', 'id', 'user_id')->withTrashed();
    }
    public function setupProgramsByRegProgram()
    {
        return $this->hasMany('App\Models\SetupProgram', 'register_program_id', 'id');
    }
}
