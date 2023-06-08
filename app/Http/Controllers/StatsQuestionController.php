<?php

namespace App\Http\Controllers;

use App\Http\Requests\StatsQuestion\CreateStatsQuestionRequest;
use App\Http\Requests\StatsQuestion\GetAllStatsQuestionsRequest;
use App\Http\Requests\StatsQuestion\GetStatsQuestionByUserIdRequest;
use App\Http\Requests\StatsQuestion\GetStatsQuestionRequest;
use App\Http\Requests\StatsQuestion\UpdateStatsQuestionRequest;
use App\Models\StatsQuestion;
use App\Models\StatsQuestionValue;
use App\Models\User;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Http\Request;

class StatsQuestionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
       //
    }
    public function getQuesByUserId($userId)
    {
        $request = new GetStatsQuestionByUserIdRequest();

        $request->id = $userId;

        $response = $request->handle();

        $userInfo = User::find($userId);

        $avgQuesValuePre = StatsQuestionValue::with(['statsQuestionById','statsQuestionById.practitioner'])->whereHas('statsQuestionById', function (Builder $query) {
            $query->where('status', 'pre');})
            ->whereHas('statsQuestionById.practitioner', function (Builder $query) {
            $query->where('deleted_at', null);})->get();

        $avgQuesValuePost = StatsQuestionValue::with('statsQuestionById')->whereHas('statsQuestionById', function (Builder $query) {
            $query->where('status', 'post');})
            ->whereHas('statsQuestionById.practitioner', function (Builder $query) {
                $query->where('deleted_at', null);})->get();

        $stdevAnthroPre = [];
            for($i = 1; $i <= 32; $i++){

                $preAvg =  number_format($avgQuesValuePre->where('question_no','q'.$i)->avg('question_value'), 2, '.', ''); // for avg

                $colListValues = $avgQuesValuePre->where('question_no','q'.$i)->pluck('question_value')->toArray(); // for cols list values only

                foreach ($colListValues as $calItem){
                    $step1 = ($calItem-$preAvg) * ($calItem-$preAvg);

                    $step2 = $step1 / count($colListValues);

                    $step3 =  sqrt($step2);
                    $stdevAnthroPre['q'.$i] = number_format($step3 , 2);
                }
            }

//            -------------

        $stdevAnthroPost = [];
        for($i = 1; $i <= 32; $i++){

            $preAvg =  number_format($avgQuesValuePost->where('question_no','q'.$i)->avg('question_value'), 2, '.', ''); // for avg

            $colListValues = $avgQuesValuePost->where('question_no','q'.$i)->pluck('question_value')->toArray(); // for cols list values only

            foreach ($colListValues as $calItem){
                $step1 = ($calItem-$preAvg) * ($calItem-$preAvg);

                $step2 = $step1 / count($colListValues);

                $step3 =  sqrt($step2);
                $stdevAnthroPost['q'.$i] = number_format($step3 , 2);
            }
        }


        return view('admin.statistic.questionsData', ['statsQuestions' => $response ,'userInfo' => $userInfo ,'avgQuesValuePre' => $avgQuesValuePre ,'avgQuesValuePost' => $avgQuesValuePost,'stdevAnthroPre' => $stdevAnthroPre ,'stdevAnthroPost' => $stdevAnthroPost ]);

    }

    /**
     * @param GetStatsQuestionRequest $request
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View
     */
    public function create(GetStatsQuestionRequest $request)
    {
        $request->id = 0;

        $response = $request->handle();

        $route = url('stats-question');

        $userInfo = User::find($request->user_id);

        return view('admin.statistic.questionDataForm', ['questionsData' => $response, 'route' => $route,'userInfo' => $userInfo, 'edit' => false]);
    }

    /**
     * @param CreateStatsQuestionRequest $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store(CreateStatsQuestionRequest $request)
    {
        $response = $request->handle();

        return redirect()->route('getQuesBy.UserId',$request->userId)->with('success', 'Spørreskjema lagt til');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\StatsQuestion  $statsQuestion
     * @return \Illuminate\Http\Response
     */
    public function show(StatsQuestion $statsQuestion)
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
        $statsQues = new GetStatsQuestionRequest();

        $statsQues->id = $id;

        $response = $statsQues->handle();

        $userInfo = User::find($request->user_id);

        $route = route('stats-question.update', ['stats_question' => $response->id]);

        return view('admin.statistic.questionDataForm', ['questionsData' => $response, 'route' => $route,'userInfo' => $userInfo, 'edit' => true]);
    }

    /**
     * @param UpdateStatsQuestionRequest $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function update(UpdateStatsQuestionRequest $request)
    {
        $response = $request->handle();

        return redirect()->route('getQuesBy.UserId',$request->userId)->with('success', 'Spørreskjema endret');
    }

    /**
     * @param $id
     * @return \Illuminate\Http\RedirectResponse
     */
    public function destroy($id)
    {

        $result = StatsQuestion::find($id);


        StatsQuestion::find($id)->delete();

        return redirect()->route('getQuesBy.UserId',$result->user_id)->with('success', __('custom.question-delete-successfully'));
    }

    public function getAllStatsQuestions(GetAllStatsQuestionsRequest $request)
    {
        $response = $request->handle();

        return view('admin.export.questions', ['statsQuestions' => $response]);

    }
}
