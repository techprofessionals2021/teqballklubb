<?php

namespace App\Http\Controllers;

use App\Models\RegisterActivity;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class RegisterActivityController extends Controller
{
    /**
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View
     */
    public function index()
    {
        $user = Auth::user();

        $activityLists = RegisterActivity::with('userInfo','coachInfo')->where('user_id',$user->id)->get();

        return view('user.activity-list',['activityLists' => $activityLists]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        //
    }

    /**
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store(Request $request)
    {
        $registerActivity = new RegisterActivity();

        $registerActivity->user_id = auth()->user()->id;
        $registerActivity->recordDate = $request->recordDate;
        $registerActivity->duration = $request->duration;
        $registerActivity->exerciseName = $request->exerciseName;
        $registerActivity->intensity = $request->intensity;
        $registerActivity->injuryPain = $request->injuryPain;
        $registerActivity->recovery = $request->recovery;
        $registerActivity->sleep = $request->sleep;
        $registerActivity->sleep_quality = $request->sleep_quality;
        $registerActivity->coach_id = $request->coach_id;
        $registerActivity->comment = $request->comments;
        $registerActivity->save();

        return redirect()->route('register-activity.index')->with('success', 'Activity Add Successfully');

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\RegisterActivity  $registerActivity
     * @return \Illuminate\Http\Response
     */
    public function show(RegisterActivity $registerActivity)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\RegisterActivity  $registerActivity
     * @return \Illuminate\Http\Response
     */
    public function edit(RegisterActivity $registerActivity)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\RegisterActivity  $registerActivity
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
        //
    }

    /**
     * @param $id
     */
    public function destroy($id)
    {
        //
    }
    public function deleteUsersActivity($id)
    {
        RegisterActivity::find($id)->delete();

        return redirect()->back()->with('success', 'User Register Activity Deleted Successfully');
    }

    public function allUsersActivityList()
    {
        $allUsersActivities = RegisterActivity::with('userInfo','coachInfo')->get();

        return view('admin.practitioner-activity.index',['allUsersActivities' => $allUsersActivities]);
    }

    public function registeredActivityNote(Request $request)
    {
        $redActivity = RegisterActivity::find($request->regActivityid);
        $redActivity->note = $request->note;
        $redActivity->save();

        return redirect()->route('allUsersActivityList')->with('success', 'Oppdatert kommentar fra PT');

    }


}
