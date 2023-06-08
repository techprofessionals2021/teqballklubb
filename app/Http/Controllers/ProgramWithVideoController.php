<?php

namespace App\Http\Controllers;

use App\Http\Requests\ProgramWithVideo\CreateProgramWithVideoRequest;
use App\Http\Requests\ProgramWithVideo\GetAllProgramsWithVideoRequest;
use App\Http\Requests\ProgramWithVideo\GetProgramWithVideoRequest;
use App\Http\Requests\ProgramWithVideo\UpdateProgramWithVideoRequest;
use App\Models\ExerciseCategory;
use App\Models\ProgramWithVideo;
use App\Models\Video;
use Illuminate\Http\Request;

class ProgramWithVideoController extends Controller
{
    /**
     * @param GetAllProgramsWithVideoRequest $request
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View
     */
    public function index(GetAllProgramsWithVideoRequest $request)
    {
        $response = $request->handle();

        return view('admin.program-with-video.index', ['programsWithVideo' => $response]);
    }

    /**
     * @param GetProgramWithVideoRequest $request
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View
     */
    public function create(GetProgramWithVideoRequest $request)
    {
        $request->id = 0;

        $response = $request->handle();

        $videos = Video::all();

        $categories = ExerciseCategory::all();

        $load = [__('custom.easy'),__('custom.normal'),__('custom.hard')];

        $route = url('program-with-video');

        return view('admin.program-with-video.form', ['programWithVideo' => $response, 'route' => $route, 'videos' => $videos, 'categories' => $categories, 'load' => $load, 'edit' => false]);
    }

    /**
     * @param CreateProgramWithVideoRequest $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store(CreateProgramWithVideoRequest $request)
    {
        $response = $request->handle();

        return redirect()->route('program-with-video.index')->with('success', 'Øvelse har blitt lagt til');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\ProgramWithVideo  $programWithVideo
     * @return \Illuminate\Http\Response
     */
    public function show(ProgramWithVideo $programWithVideo)
    {
        //
    }

    /**
     * @param $id
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View
     */
    public function edit($id)
    {
        $request = new GetProgramWithVideoRequest();

        $request->id = $id;

        $response = $request->handle();

        $videos = Video::all();

        $categories = ExerciseCategory::all();

        $load = [__('custom.easy'),__('custom.normal'),__('custom.hard')];


        $route = route('program-with-video.update', ['program_with_video' => $response->id]);

        return view('admin.program-with-video.form', ['programWithVideo' => $response, 'route' => $route, 'videos' => $videos, 'categories' => $categories, 'load' => $load, 'edit' => true]);
    }

    /**
     * @param UpdateProgramWithVideoRequest $request
     * @param $id
     * @return \Illuminate\Http\RedirectResponse
     */
    public function update(UpdateProgramWithVideoRequest $request ,$id)
    {
        $request->id = $id;

        $response = $request->handle();

        return redirect()->route('program-with-video.index')->with('success', 'Øvelse har blitt endret');
    }

    /**
     * @param $id
     * @return \Illuminate\Http\RedirectResponse
     */
    public function destroy($id)
    {
        ProgramWithVideo::find($id)->delete();

        return redirect()->route('program-with-video.index')->with('success', 'Øvelse har blitt slettet');
    }
}
