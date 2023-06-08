<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PtClipboardLog extends Model
{
    use HasFactory;

    public function practitioner()
    {
        return $this->hasOne('App\Models\User', 'id', 'user_id')->withTrashed();
    }

    public function createBy()
    {
        return $this->hasOne('App\Models\User', 'id', 'create_by');
    }
}
