<?php

namespace App\Http\Controllers;

use App\Http\Requests\FootballStats\GetFootballStatsByUserIdRequest;
use App\Http\Requests\Stats3dScreening\CreateStats3dScreeningRequest;
use App\Http\Requests\Stats3dScreening\GetAllStats3dScreeningsRequest;
use App\Http\Requests\Stats3dScreening\GetStats3dScreeningRequest;
use App\Http\Requests\Stats3dScreening\Stats3dScreeningByUserIdRequest;
use App\Http\Requests\Stats3dScreening\UpdateStats3dScreeningRequest;
use App\Models\Stats3dScreening;
use App\Models\User;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Http\Request;

class Stats3dScreeningController extends Controller
{
    /**
     * @param Request $request
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View
     */
    public function index(Request $request)
    {
        $statsTester = new Stats3dScreeningByUserIdRequest();

        $statsTester->id = $request->user_id;

        $response = $statsTester->handle();

        $userInfo = User::find($request->user_id);

        $stats3dValues = [
            'fpi1h', 'fpi1v', 'fpi2h', 'fpi2v',
            'fpi3h', 'fpi3v', 'fpi4h', 'fpi4v',
            'fpi5h', 'fpi5v', 'fpi6h', 'fpi6v',
            'irh', 'irv', 'erh', 'erv',
            'addh', 'addv', 'abdh', 'abdv',
            'eksh', 'eksv', 'flekh', 'flekv',
            'rotbh', 'rotbv', 'latbh', 'latbv'
        ];

        $avgStats3dPre = Stats3dScreening::where('status','pre')->whereHas('practitioner', function (Builder $query) {
            $query->where('deleted_at', null);
        })->get();
        $avgStats3dPost = Stats3dScreening::where('status','post')->whereHas('practitioner', function (Builder $query) {
            $query->where('deleted_at', null);
        })->get();

        $stdevPre = [];
        foreach($stats3dValues as $item){
            $preAvg =  $avgStats3dPre->avg([$item]); // for avg

            $colListValues = $avgStats3dPre->pluck($item)->toArray(); // for cols list values only
            foreach ($colListValues as $calItem){
                $step1 = ($calItem-$preAvg) * ($calItem-$preAvg);

                $step2 = $step1 / count($colListValues);

                $step3 =  sqrt($step2);
                $stdevPre[$item] = number_format($step3 , 2);
            }
        }

//        ------------------

        $stdevPost = [];
        foreach($stats3dValues as $item){
            $preAvg =  $avgStats3dPost->avg([$item]); // for avg

            $colListValues = $avgStats3dPost->pluck($item)->toArray(); // for cols list values only
            foreach ($colListValues as $calItem){
                $step1 = ($calItem-$preAvg) * ($calItem-$preAvg);

                $step2 = $step1 / count($colListValues);

                $step3 =  sqrt($step2);
                $stdevPost[$item] = number_format($step3 , 2);
            }
        }

        return view('admin.statistic.stats3dScreeningData', ['stats3dScreenings' => $response ,'userInfo' => $userInfo ,'stats3dValues' => $stats3dValues ,'avgStats3dPre' => $avgStats3dPre ,'avgStats3dPost' => $avgStats3dPost ,'stdevPre' => $stdevPre ,'stdevPost' => $stdevPost ]);
    }

    /**
     * @param GetStats3dScreeningRequest $request
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View
     */
    public function create(GetStats3dScreeningRequest $request)
    {
        $request->id = 0;

        $response = $request->handle();

        $route = url('stats-3dscreening');

        $userInfo = User::find($request->user_id);

        $stats3dValues = [
            'fpi1h', 'fpi1v', 'fpi2h', 'fpi2v',
            'fpi3h', 'fpi3v', 'fpi4h', 'fpi4v',
            'fpi5h', 'fpi5v', 'fpi6h', 'fpi6v',
            'irh', 'irv', 'erh', 'erv',
            'addh', 'addv', 'abdh', 'abdv',
            'eksh', 'eksv', 'flekh', 'flekv',
            'rotbh', 'rotbv', 'latbh', 'latbv'
        ];

        return view('admin.statistic.stats3dDataForm', ['stats3dData' => $response, 'route' => $route,'userInfo' => $userInfo,'stats3dValues' => $stats3dValues, 'edit' => false]);

    }

    /**
     * @param CreateStats3dScreeningRequest $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store(CreateStats3dScreeningRequest $request)
    {
        $response = $request->handle();

        return redirect()->route('stats-3dscreening.index',['user_id'=>$request->userId])->with('success', '3D Screening lagt til');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Stats3dScreening  $stats3dScreening
     * @return \Illuminate\Http\Response
     */
    public function show(Stats3dScreening $stats3dScreening)
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
        $Anthro = new GetStats3dScreeningRequest();

        $Anthro->id = $id;

        $response = $Anthro->handle();

        $userInfo = User::find($request->user_id);

        $stats3dValues = [
            'fpi1h', 'fpi1v', 'fpi2h', 'fpi2v',
            'fpi3h', 'fpi3v', 'fpi4h', 'fpi4v',
            'fpi5h', 'fpi5v', 'fpi6h', 'fpi6v',
            'irh', 'irv', 'erh', 'erv',
            'addh', 'addv', 'abdh', 'abdv',
            'eksh', 'eksv', 'flekh', 'flekv',
            'rotbh', 'rotbv', 'latbh', 'latbv'
        ];

        $route = route('stats-3dscreening.update', ['stats_3dscreening' => $response->id]);

        return view('admin.statistic.stats3dDataForm', ['stats3dData' => $response, 'route' => $route,'userInfo' => $userInfo,'stats3dValues' => $stats3dValues, 'edit' => true]);
    }

    /**
     * @param UpdateStats3dScreeningRequest $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function update(UpdateStats3dScreeningRequest $request)
    {
        $response = $request->handle();

        return redirect()->route('stats-3dscreening.index',['user_id'=>$request->userId])->with('success', '3D Screening endret');
    }

    /**
     * @param $id
     * @return \Illuminate\Http\RedirectResponse
     */
    public function destroy($id)
    {
        $result = Stats3dScreening::find($id);

        Stats3dScreening::find($id)->delete();

        return redirect()->route('stats-3dscreening.index',['user_id'=>$result->user_id])->with('success', __('custom.stats-3dScreening-delete-successfully'));
    }

    /**
     * @param GetAllStats3dScreeningsRequest $request
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View
     */
    public function getAllStats3dScreenings(GetAllStats3dScreeningsRequest $request)
    {
        $response = $request->handle();

        $stats3dValues = [
            'fpi1h', 'fpi1v', 'fpi2h', 'fpi2v',
            'fpi3h', 'fpi3v', 'fpi4h', 'fpi4v',
            'fpi5h', 'fpi5v', 'fpi6h', 'fpi6v',
            'irh', 'irv', 'erh', 'erv',
            'addh', 'addv', 'abdh', 'abdv',
            'eksh', 'eksv', 'flekh', 'flekv',
            'rotbh', 'rotbv', 'latbh', 'latbv'
        ];

        return view('admin.export.stats3dScreening', ['stats3dScreenings' => $response ,'stats3dValues' => $stats3dValues ]);
    }
}
