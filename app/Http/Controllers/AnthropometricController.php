<?php

namespace App\Http\Controllers;

use App\Http\Requests\Anthropometric\CreateAnthropometricRequest;
use App\Http\Requests\Anthropometric\GetAllAnthropometriesRequest;
use App\Http\Requests\Anthropometric\GetAnthropometricByUserId;
use App\Http\Requests\Anthropometric\GetAnthropometricRequest;
use App\Http\Requests\Anthropometric\UpdateAnthropometricRequest;
use App\Models\Anthropometric;
use App\Models\User;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Http\Request;

class AnthropometricController extends Controller
{
    /**
     * @param Request $request
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View
     */
    public function index(Request $request)
    {
        $usersAnthro = new GetAnthropometricByUserId();

        $usersAnthro->id = $request->user_id;

        $response = $usersAnthro->handle();

        $userInfo = User::find($request->user_id);

//        $avgAnthroPre = Anthropometric::where('status','pre')->get();
        $avgAnthroPre = Anthropometric::where('status','pre')->whereHas('practitioner', function (Builder $query) {
            $query->where('deleted_at', null);
        })->get();
        $avgAnthroPost = Anthropometric::where('status','post')->whereHas('practitioner', function (Builder $query) {
            $query->where('deleted_at', null);
        })->get();

        $anthroCols = ['height', 'weight', 'age', 'bmi',
            'motivation', 'akt_scale', 'damage_c', 'damage_nc',
            'leg_length', 'shoe_size', 'foot_size', 'note', 'fat',];

        $stdevAnthroPre = [];
        foreach($anthroCols as $item){
          $preAvg =  $avgAnthroPre->avg([$item]); // for avg

         $colListValues = $avgAnthroPre->pluck($item)->toArray(); // for cols list values only
          foreach ($colListValues as $calItem){
               $step1 = ($calItem-$preAvg) * ($calItem-$preAvg);

              $step2 = $step1 / count($colListValues);

              $step3 =  sqrt($step2);
              $stdevAnthroPre[$item] = number_format($step3 , 2);
          }
        }

//        ------------------

        $stdevAnthroPost = [];
        foreach($anthroCols as $item){
            $preAvg =  $avgAnthroPost->avg([$item]); // for avg

            $colListValues = $avgAnthroPost->pluck($item)->toArray(); // for cols list values only
            foreach ($colListValues as $calItem){
                $step1 = ($calItem-$preAvg) * ($calItem-$preAvg);

                $step2 = $step1 / count($colListValues);

                $step3 =  sqrt($step2);
                $stdevAnthroPost[$item] = number_format($step3 , 2);
            }
        }

        return view('admin.statistic.anthropometricData', ['anthropometrics' => $response ,'userInfo' => $userInfo,'avgAnthroPre' => $avgAnthroPre,'avgAnthroPost' => $avgAnthroPost ,'stdevAnthroPre' => $stdevAnthroPre ,'stdevAnthroPost' => $stdevAnthroPost, 'anthroCols' => $anthroCols ]);
    }

    /**
     * @param GetAnthropometricRequest $request
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View
     */
    public function create(GetAnthropometricRequest $request)
    {
        $request->id = 0;

        $response = $request->handle();

        $route = url('anthropometric');

        $posisjon_fotball = [1 => 'Målvakt',2 => 'Forsvarspiller',3 => 'Midtbanespiller',4 => 'Angrepsspiller/Spiss',5 => 'Ikke fotballspiller'];

        $userInfo = User::find($request->user_id);

        return view('admin.statistic.anthropometricDataForm', ['anthropometricData' => $response, 'posisjon_fotball' => $posisjon_fotball,'route' => $route,'userInfo' => $userInfo, 'edit' => false]);

    }

    /**
     * @param CreateAnthropometricRequest $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store(CreateAnthropometricRequest $request)
    {

        $response = $request->handle();


        return redirect()->route('anthropometric.index',['user_id'=>$request->userId])->with('success', __('custom.anthropometric-add-successfully'));
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Anthropometric  $anthropometric
     * @return \Illuminate\Http\Response
     */
    public function show(Anthropometric $anthropometric)
    {
        //
    }

    /**
     * @param Request $request
     * @param $id
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View\
     */
    public function edit(Request $request,$id)
    {
        $Anthro = new GetAnthropometricRequest();

        $Anthro->id = $id;

        $response = $Anthro->handle();

        $userInfo = User::find($request->user_id);

        $posisjon_fotball = [1 => 'Målvakt',2 => 'Forsvarspiller',3 => 'Midtbanespiller',4 => 'Angrepsspiller/Spiss',5 => 'Ikke fotballspiller'];

        $route = route('anthropometric.update', ['anthropometric' => $response->id]);

        return view('admin.statistic.anthropometricDataForm', ['anthropometricData' => $response, 'posisjon_fotball' => $posisjon_fotball,'route' => $route,'userInfo' => $userInfo, 'edit' => true]);
    }

    /**
     * @param UpdateAnthropometricRequest $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function update(UpdateAnthropometricRequest $request)
    {
        $response = $request->handle();

        return redirect()->route('anthropometric.index',['user_id'=>$request->userId])->with('success', __('custom.anthropometric-edit-successfully'));
    }

    /**
     * @param $id
     * @return \Illuminate\Http\RedirectResponse
     */
    public function destroy($id)
    {
        $result = Anthropometric::find($id);

        Anthropometric::find($id)->delete();

        return redirect()->route('anthropometric.index',['user_id'=>$result->user_id])->with('success', __('Antropometrisk data slettet'));

    }

    public function getAllAnthropometries(GetAllAnthropometriesRequest $request)
    {
        $response = $request->handle();

        return view('admin.export.anthropometries', ['anthropometries' => $response]);

    }


}
