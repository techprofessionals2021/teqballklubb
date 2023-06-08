<?php

namespace App\Models;

use App\Notifications\PasswordReset;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Cashier\Billable;
use Laravel\Sanctum\HasApiTokens;
use Silber\Bouncer\Database\Concerns\HasRoles;
use Silber\Bouncer\Database\HasRolesAndAbilities;

class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable ,HasRolesAndAbilities ,HasRoles ,SoftDeletes ,Billable ;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'name',
        'email',
        'password',
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    public function exType()
    {
        return $this->hasOne('App\Models\ExerciseType', 'id', 'type_id');
    }
    public function group()
    {
        return $this->hasOne('App\Models\Group', 'id', 'group_id')->withTrashed();
    }
    public function casemanager()
    {
        return $this->hasOne('App\Models\CaseWorker', 'id', 'case_manager_id');
    }
    public function profession()
    {
        return $this->hasOne('App\Models\Profession', 'id', 'profession_id');
    }
    public function coachInfo()
    {
        return $this->belongsTo('App\Models\Coach', 'id', 'user_id');
    }
    public function mmcenter()
    {
        return $this->hasOne('App\Models\MmCenter', 'id', 'center');
    }
    public function userStats()
    {
        return $this->belongsTo('App\Models\Statistic', 'id', 'user_id');
    }
    public function ptClips()
    {
        return $this->belongsTo('App\Models\PtClipboard', 'id', 'user_id');
    }

    public function sendPasswordResetNotification($token)
    {
        $this->notify(new PasswordReset($token));
    }
}
