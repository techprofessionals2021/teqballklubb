<?php

namespace App\Http\Controllers;

use App\Http\Requests\Statistic\GetAllStatisticsRequest;
use App\Http\Requests\User\GetAllUsersRequest;
use App\Models\Group;
use App\Models\Statistic;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Http\Request;

class StatisticController extends Controller
{
    /**
     * @param GetAllStatisticsRequest $request
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View
     */
    public function index(GetAllStatisticsRequest $request)
    {
        $response = $request->handle();

        $allGroups = Group::all();

        return view('admin.statistic.index', ['statistics' => $response , 'allGroups' => $allGroups, 'group_id' => 0]);
    }

    /**
     * @param GetAllUsersRequest $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function create(GetAllUsersRequest $request)
    {
        $allUsers = $request->handle();
        foreach ($allUsers as $user){

            if ($user->statistics == 0){ continue; }

            $checkptuser = Statistic::where('user_id',$user->id)->first();

            if (!isset($checkptuser)){
                $userStats = new Statistic();
                $userStats->user_id = $user->id;
                $userStats->save();
            }

        }
        return redirect()->route('statistic.index')->with('success',  __('custom.statistics-refresh-successfully'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Statistic  $statistic
     * @return \Illuminate\Http\Response
     */
    public function show(Statistic $statistic)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Statistic  $statistic
     * @return \Illuminate\Http\Response
     */
    public function edit(Statistic $statistic)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Statistic  $statistic
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Statistic $statistic)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Statistic  $statistic
     * @return \Illuminate\Http\Response
     */
    public function destroy(Statistic $statistic)
    {
        //
    }

    public function getStatsByGroupId($id)
    {

        $statistics = Statistic::with('practitioner')->whereHas('practitioner', function (Builder $query) use ($id) {
            $query->where('group_id', $id);
        })->get();

        $allGroups = Group::all();

        return view('admin.statistic.index', ['statistics' => $statistics , 'allGroups' => $allGroups, 'group_id' => $id]);
    }
}
