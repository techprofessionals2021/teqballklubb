<?php

namespace App\Http\Controllers;

use App\Http\Requests\FootballStats\CreateFootballStatsRequest;
use App\Http\Requests\FootballStats\GetAllFootballStatsRequest;
use App\Http\Requests\FootballStats\GetFootballStatsByUserIdRequest;
use App\Http\Requests\FootballStats\GetFootballStatsRequest;
use App\Http\Requests\FootballStats\UpdateFootballStatsRequest;
use App\Models\Football;
use App\Models\User;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Http\Request;

class FootballController extends Controller
{
    /**
     * @param Request $request
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View
     */
    public function index(Request $request)
    {
        $statsTester = new GetFootballStatsByUserIdRequest();

        $statsTester->id = $request->user_id;

        $response = $statsTester->handle();

        $userInfo = User::find($request->user_id);

        $statsFootballValue =
            ['yoyo_test', 'dlbt_dom','dlbt_non', 'lb_pass', 'lb_shoot', 'lb_velocity',
             'lb_point', 's180', 's_dribble_right', 's_dribble_left',
             'vertXXX', 'vertRXX', 'vertLLX', 'hoXXX', 'hrslj', 'hlslj',
             'speed_10m', 'speed_20m', 'speed_30m', 'speed_40m', 'RMBenk1',
             'RMSquat1', 'RMDead1'];

        $avgFootballPre = Football::where('status','pre')->whereHas('practitioner', function (Builder $query) {
            $query->where('deleted_at', null);
        })->get();
        $avgFootballPost = Football::where('status','post')->whereHas('practitioner', function (Builder $query) {
            $query->where('deleted_at', null);
        })->get();

        $stdevPre = [];
        foreach($statsFootballValue as $item){
            $preAvg =  $avgFootballPre->avg([$item]); // for avg

            $colListValues = $avgFootballPre->pluck($item)->toArray(); // for cols list values only
            foreach ($colListValues as $calItem){
                $step1 = ($calItem-$preAvg) * ($calItem-$preAvg);

                $step2 = $step1 / count($colListValues);

                $step3 =  sqrt($step2);
                $stdevPre[$item] = number_format($step3 , 2);
            }
        }

//        ------------------

        $stdevPost = [];
        foreach($statsFootballValue as $item){
            $preAvg =  $avgFootballPost->avg([$item]); // for avg

            $colListValues = $avgFootballPost->pluck($item)->toArray(); // for cols list values only
            foreach ($colListValues as $calItem){
                $step1 = ($calItem-$preAvg) * ($calItem-$preAvg);

                $step2 = $step1 / count($colListValues);

                $step3 =  sqrt($step2);
                $stdevPost[$item] = number_format($step3 , 2);
            }
        }

        return view('admin.statistic.footballStatsData', ['footballStats' => $response ,'userInfo' => $userInfo ,'statsFootballValue' => $statsFootballValue ,'avgFootballPre' => $avgFootballPre ,'avgFootballPost' => $avgFootballPost ,'stdevPre' => $stdevPre ,'stdevPost' => $stdevPost ]);
    }

    /**
     * @param GetFootballStatsRequest $request
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View
     */
    public function create(GetFootballStatsRequest $request)
    {
        $request->id = 0;

        $response = $request->handle();

        $route = url('football');

        $userInfo = User::find($request->user_id);

        return view('admin.statistic.footballStatsDataForm', ['footballStatsData' => $response, 'route' => $route,'userInfo' => $userInfo, 'edit' => false]);

    }

    /**
     * @param CreateFootballStatsRequest $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store(CreateFootballStatsRequest $request)
    {
        $response = $request->handle();

        return redirect()->route('football.index',['user_id'=>$request->userId])->with('success', __('custom.football-add-successfully'));
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Football  $football
     * @return \Illuminate\Http\Response
     */
    public function show(Football $football)
    {
        //
    }

    /**
     * @param Request $request
     * @param $id
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View
     */
    public function edit(Request $request,$id)
    {
        $Anthro = new GetFootballStatsRequest();

        $Anthro->id = $id;

        $response = $Anthro->handle();

        $userInfo = User::find($request->user_id);

        $route = route('football.update', ['football' => $response->id]);

        return view('admin.statistic.footballStatsDataForm', ['footballStatsData' => $response, 'route' => $route,'userInfo' => $userInfo, 'edit' => true]);
    }

    /**
     * @param UpdateFootballStatsRequest $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function update(UpdateFootballStatsRequest $request)
    {
        $response = $request->handle();

        return redirect()->route('football.index',['user_id'=>$request->userId])->with('success', __('custom.football-edit-successfully'));
    }

    /**
     * @param $id
     * @return \Illuminate\Http\RedirectResponse
     */
    public function destroy($id)
    {
        $result = Football::find($id);

        Football::find($id)->delete();

        return redirect()->route('football.index',['user_id'=>$result->user_id])->with('success', __('custom.football-delete-successfully'));
    }


    public function getAllStatsFootballs(GetAllFootballStatsRequest $request)
    {
        $response = $request->handle();

        return view('admin.export.footballStats', ['footballStats' => $response]);

    }
}
