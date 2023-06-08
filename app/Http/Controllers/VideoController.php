<?php

namespace App\Http\Controllers;

use App\Http\Requests\Video\CreateVideoRequest;
use App\Http\Requests\Video\GetAllVideosRequest;
use App\Http\Requests\Video\GetVideoRequest;
use App\Http\Requests\Video\UpdateVideoRequest;
use App\Models\ExerciseCategory;
use App\Models\Video;
use Illuminate\Http\Request;

class VideoController extends Controller
{
    /**
     * @param GetAllVideosRequest $request
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View
     */
    public function index(GetAllVideosRequest $request)
    {
        $response = $request->handle();

        return view('admin.video.index', ['videos' => $response]);
    }

    /**
     * @param GetVideoRequest $request
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View
     */
    public function create(GetVideoRequest $request)
    {
        $request->id = 0;

        $response = $request->handle();

        $categories = ExerciseCategory::all();

        $route = url('video');

        return view('admin.video.form', ['video' => $response, 'categories' => $categories, 'route' => $route, 'edit' => false]);
    }

    /**
     * @param CreateVideoRequest $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store(CreateVideoRequest $request)
    {
        $response = $request->handle();

        return redirect()->route('video.index')->with('success', __('custom.video-add-successfully'));
    }

    /**
     * @param Video $group
     */
    public function show(Video $group)
    {
        //
    }

    /**
     * @param $id
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View|\Illuminate\Http\RedirectResponse
     */
    public function edit($id)
    {
        $request = new GetVideoRequest();

        $request->id = $id;

        $response = $request->handle();

        if (!isset($response->id)) {
            return redirect()->route('video.index')->with('error', 'Video Not Found !!');
        }

        $categories = ExerciseCategory::all();

        $selectedCategory = ExerciseCategory::find($response->exercise_category_id);

        $route = route('video.update', ['video' => $response->id]);

        return view('admin.video.form', ['video' => $response, 'categories' => $categories, 'route' => $route, 'selectedCategory' => $selectedCategory, 'edit' => true]);
    }

    /**
     * @param UpdateVideoRequest $request
     * @param $id
     * @return \Illuminate\Http\RedirectResponse
     */
    public function update(UpdateVideoRequest $request, $id)
    {
        $request->id = $id;

        $response = $request->handle();

        return redirect()->route('video.index')->with('success', __('custom.video-edit-successfully'));
    }

    /**
     * @param $id
     * @return \Illuminate\Http\RedirectResponse
     */
    public function destroy($id)
    {
        Video::find($id)->delete();

        return redirect()->route('video.index')->with('success', __('custom.video-delete-successfully'));
    }
}
