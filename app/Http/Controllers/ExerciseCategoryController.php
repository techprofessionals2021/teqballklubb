<?php

namespace App\Http\Controllers;

use App\Http\Requests\ExerciseCategory\CreateExerciseCategoryRequest;
use App\Http\Requests\ExerciseCategory\GetAllExerciseCategoriesRequest;
use App\Http\Requests\ExerciseCategory\GetExerciseCategoryRequest;
use App\Http\Requests\ExerciseCategory\UpdateExerciseCategoryRequest;
use App\Models\ExerciseCategory;
use App\Models\ProgramSetup;
use App\Models\ProgramWithVideo;
use App\Models\SetupFixedProgram;
use App\Models\Video;
use Illuminate\Http\Request;

class ExerciseCategoryController extends Controller
{
    /**
     * @param GetAllExerciseCategoriesRequest $request
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View
     */
    public function index(GetAllExerciseCategoriesRequest $request)
    {
        $response = $request->handle();

        return view('admin.exercise-category.index', ['exerciseCategories' => $response]);
    }

    /**
     * @param GetExerciseCategoryRequest $request
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View
     */
    public function create(GetExerciseCategoryRequest $request)
    {
        $request->id = 0;

        $response = $request->handle();

        $route = url('exercise-category');

        return view('admin.exercise-category.form', ['exercise_category' => $response, 'route' => $route, 'edit' => false]);
    }

    /**
     * @param CreateExerciseCategoryRequest $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store(CreateExerciseCategoryRequest $request)
    {
        $response = $request->handle();

        return redirect()->route('exercise-category.index')->with('success', 'Øvelse kategori lagt til');
    }

    /**
     * @param ExerciseCategory $group
     */
    public function show(ExerciseCategory $group)
    {
        //
    }

    /**
     * @param $id
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View|\Illuminate\Http\RedirectResponse
     */
    public function edit($id)
    {
        $request = new GetExerciseCategoryRequest();

        $request->id = $id;

        $response = $request->handle();

        if (!isset($response->id)) {
            return redirect()->route('exercise-category.index')->with('error', 'Exercise Category Not Found !!');
        }

        $route = route('exercise-category.update', ['exercise_category' => $response->id]);

        return view('admin.exercise-category.form', ['exercise_category' => $response, 'route' => $route, 'edit' => true]);
    }

    /**
     * @param UpdateExerciseCategoryRequest $request
     * @param $id
     * @return \Illuminate\Http\RedirectResponse
     */
    public function update(UpdateExerciseCategoryRequest $request, $id)
    {
        $request->id = $id;

        $response = $request->handle();

        return redirect()->route('exercise-category.index')->with('success', 'Øvelse kategori endret');
    }

    /**
     * @param $id
     * @return \Illuminate\Http\RedirectResponse
     */
    public function destroy($id)
    {
        ProgramSetup::where('exercise_category_id',$id)->delete();
        ProgramWithVideo::where('exercise_category_id',$id)->delete();
        SetupFixedProgram::where('exercise_category_id',$id)->delete();
        Video::where('exercise_category_id',$id)->delete();
        ExerciseCategory::find($id)->delete();

        return redirect()->route('exercise-category.index')->with('success', 'Øvelse kategori og tilhørende programmer er slettet');
    }
}
