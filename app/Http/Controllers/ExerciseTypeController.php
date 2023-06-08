<?php

namespace App\Http\Controllers;

use App\Http\Requests\ExerciseType\CreateExerciseTypeRequest;
use App\Http\Requests\ExerciseType\GetAllExerciseTypesRequest;
use App\Http\Requests\ExerciseType\GetExerciseTypeRequest;
use App\Http\Requests\ExerciseType\UpdateExerciseTypeRequest;
use App\Models\ExerciseType;
use Illuminate\Http\Request;

class ExerciseTypeController extends Controller
{
    /**
     * @param GetAllExerciseTypesRequest $request
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View
     */
    public function index(GetAllExerciseTypesRequest $request)
    {
        $response = $request->handle();

        return view('admin.exercise-type.index', ['exerciseTypes' => $response]);
    }

    /**
     * @param GetExerciseTypeRequest $request
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View
     */
    public function create(GetExerciseTypeRequest $request)
    {
        $request->id = 0;

        $response = $request->handle();

        $route = url('exercise-type');

        return view('admin.exercise-type.form', ['exerciseType' => $response, 'route' => $route, 'edit' => false]);
    }

    /**
     * @param CreateExerciseTypeRequest $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store(CreateExerciseTypeRequest $request)
    {
        $response = $request->handle();

        return redirect()->route('exercise-type.index')->with('success', 'Aktivitetsform har blitt lagt til');
    }

    /**
     * Display the specified resource.
     *
     * @param \App\Models\ExerciseType $exerciseType
     * @return \Illuminate\Http\Response
     */
    public function show(ExerciseType $exerciseType)
    {
        //
    }

    /**
     * @param $id
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View|\Illuminate\Http\RedirectResponse
     */
    public function edit($id)
    {
        $request = new GetExerciseTypeRequest();

        $request->id = $id;

        $response = $request->handle();

        if (!isset($response->id)) {
            return redirect()->route('exercise-type.index')->with('error', 'Exercise Type Not Found !!');
        }

        $route = route('exercise-type.update', ['exercise_type' => $response->id]);

        return view('admin.exercise-type.form', ['exerciseType' => $response, 'route' => $route, 'edit' => true]);

    }

    /**
     * @param UpdateExerciseTypeRequest $request
     * @param $id
     * @return \Illuminate\Http\RedirectResponse
     */
    public function update(UpdateExerciseTypeRequest $request, $id)
    {
        $request->id = $id;

        $response = $request->handle();

        return redirect()->route('exercise-type.index')->with('success', 'Aktivitetsform endret');
    }

    /**
     * @param $id
     * @return \Illuminate\Http\RedirectResponse
     */
    public function destroy($id)
    {
         ExerciseType::find($id)->delete();

        return redirect()->route('exercise-type.index')->with('success', 'Aktivitetsform slettet');
    }
}
