<?php

namespace App\Http\Controllers;

use App\Http\Requests\StatsTester\CreateStatsTesterRequest;
use App\Http\Requests\StatsTester\GetAllStatsTestersRequest;
use App\Http\Requests\StatsTester\GetStatsTesterByUserIdRequest;
use App\Http\Requests\StatsTester\GetStatsTesterRequest;
use App\Http\Requests\StatsTester\UpdateStatsTesterRequest;
use App\Models\StatsTester;
use App\Models\User;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Http\Request;

class StatsTesterController extends Controller
{
    /**
     * @param Request $request
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View
     */
    public function index(Request $request)
    {
        $statsTester = new GetStatsTesterByUserIdRequest();

        $statsTester->id = $request->user_id;

        $response = $statsTester->handle();

        $userInfo = User::find($request->user_id);

        $statsTesterValue =
            ['step_test_time','step_test_count','bicycle_time','bicycle_dist',
            'cooperes_dist','cooperes_count', 'cooperes_time','funk_strength'];

        $avgTesterPre = StatsTester::where('status','pre')->whereHas('practitioner', function (Builder $query) {
            $query->where('deleted_at', null);
        })->get();
        $avgTesterPost = StatsTester::where('status','post')->whereHas('practitioner', function (Builder $query) {
            $query->where('deleted_at', null);
        })->get();

        $stdevPre = [];
        foreach($statsTesterValue as $item){
            $preAvg =  $avgTesterPre->avg([$item]); // for avg

            $colListValues = $avgTesterPre->pluck($item)->toArray(); // for cols list values only
            foreach ($colListValues as $calItem){
                $step1 = ($calItem-$preAvg) * ($calItem-$preAvg);

                $step2 = $step1 / count($colListValues);

                $step3 =  sqrt($step2);
                $stdevPre[$item] = number_format($step3 , 2);
            }
        }

//        ------------------

        $stdevPost = [];
        foreach($statsTesterValue as $item){
            $preAvg =  $avgTesterPost->avg([$item]); // for avg

            $colListValues = $avgTesterPost->pluck($item)->toArray(); // for cols list values only
            foreach ($colListValues as $calItem){
                $step1 = ($calItem-$preAvg) * ($calItem-$preAvg);

                $step2 = $step1 / count($colListValues);

                $step3 =  sqrt($step2);
                $stdevPost[$item] = number_format($step3 , 2);
            }
        }

        return view('admin.statistic.statsTesterData', ['statsTesters' => $response ,'userInfo' => $userInfo ,'statsTesterValue' => $statsTesterValue ,'avgTesterPre' => $avgTesterPre ,'avgTesterPost' => $avgTesterPost ,'stdevPre' => $stdevPre ,'stdevPost' => $stdevPost ]);
    }

    /**
     * @param GetStatsTesterRequest $request
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View
     */
    public function create(GetStatsTesterRequest $request)
    {
        $request->id = 0;

        $response = $request->handle();

        $route = url('stats-tester');

        $userInfo = User::find($request->user_id);

        return view('admin.statistic.statsTesterDataForm', ['statsTesterData' => $response, 'route' => $route,'userInfo' => $userInfo, 'edit' => false]);

    }

    /**
     * @param CreateStatsTesterRequest $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store(CreateStatsTesterRequest $request)
    {
        $response = $request->handle();

        return redirect()->route('stats-tester.index',['user_id'=>$request->userId])->with('success', __('custom.tester-add-successfully'));
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\StatsTester  $statsTester
     * @return \Illuminate\Http\Response
     */
    public function show(StatsTester $statsTester)
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
        $Anthro = new GetStatsTesterRequest();

        $Anthro->id = $id;

        $response = $Anthro->handle();

        $userInfo = User::find($request->user_id);

        $route = route('stats-tester.update', ['stats_tester' => $response->id]);

        return view('admin.statistic.statsTesterDataForm', ['statsTesterData' => $response, 'route' => $route,'userInfo' => $userInfo, 'edit' => true]);
    }

    /**
     * @param UpdateStatsTesterRequest $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function update(UpdateStatsTesterRequest $request)
    {
        $response = $request->handle();

        return redirect()->route('stats-tester.index',['user_id'=>$request->userId])->with('success', __('custom.tester-edit-successfully'));
    }

    /**
     * @param $id
     * @return \Illuminate\Http\RedirectResponse
     */
    public function destroy($id)
    {
        $result = StatsTester::find($id);

        StatsTester::find($id)->delete();

        return redirect()->route('stats-tester.index',['user_id'=>$result->user_id])->with('success', __('custom.tester-delete-successfully'));
    }

    /**
     * @param GetAllStatsTestersRequest $request
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View
     */
    public function getAllStatsTesters(GetAllStatsTestersRequest $request)
    {
        $response = $request->handle();

        return view('admin.export.statsTester', ['statsTesters' => $response]);

    }
}
