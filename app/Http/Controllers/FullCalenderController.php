<?php

namespace App\Http\Controllers;

use App\Models\Events;
use App\Models\User;
use Illuminate\Http\Request;

class FullCalenderController extends Controller
{
    public function index($id){
       $allCoaches = User::with('coachInfo')->whereIs('coach','coach-responsible','manager')->where('is_active', 1)->get();

        return view('admin.calender.fullcalender',['allCoaches' => $allCoaches ,'eventsData' => $id]);
    }

    public function expendFullCalender(){
//        return view('admin.calender.index');
        return view('admin.calender.fullcalender_bkp');
    }
}
