<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Events extends Model
{
    use HasFactory;

    protected $fillable = ['title', 'start', 'end', 'allDay', 'color', 'textColor', 'data', 'dataText', 'resourceId',
        'coachName', 'label', 'showTimeAs', 'reminder', 'note'];
}
