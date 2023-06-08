<?php

namespace App\Http\Controllers;

use App\Http\Requests\Intensity\CreateIntensityRequest;
use App\Http\Requests\Intensity\GetAllIntensitiesRequest;
use App\Http\Requests\Intensity\GetIntensityRequest;
use App\Http\Requests\Intensity\UpdateIntensityRequest;
use App\Models\Intensity;
use Illuminate\Http\Request;

class IntensityController extends Controller
{
    /**
     * @param GetAllIntensitiesRequest $request
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View
     */
    public function index(GetAllIntensitiesRequest $request)
    {
        $response = $request->handle();

        return view('admin.intensity.index', ['intensities' => $response]);
    }

    /**
     * @param GetIntensityRequest $request
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View
     */
    public function create(GetIntensityRequest $request)
    {
        $request->id = 0;

        $response = $request->handle();

        $route = url('intensity');

        return view('admin.intensity.form', ['intensity' => $response, 'route' => $route, 'edit' => false]);
    }

    /**
     * @param CreateIntensityRequest $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store(CreateIntensityRequest $request)
    {
        $response = $request->handle();

        return redirect()->route('intensity.index')->with('success', 'Intensity Add Successfully');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Intensity  $intensity
     * @return \Illuminate\Http\Response
     */
    public function show(Intensity $intensity)
    {
        //
    }

    /**
     * @param $id
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View|\Illuminate\Http\RedirectResponse
     */
    public function edit($id)
    {
        $request = new GetIntensityRequest();

        $request->id = $id;

        $response = $request->handle();

        if (!isset($response->id)) {
            return redirect()->route('intensity.index')->with('error', 'Intensity Not Found !!');
        }

        $route = route('intensity.update', ['intensity' => $response->id]);

        return view('admin.intensity.form', ['intensity' => $response, 'route' => $route, 'edit' => true]);
    }

    /**
     * @param UpdateIntensityRequest $request
     * @param $id
     * @return \Illuminate\Http\RedirectResponse
     */
    public function update(UpdateIntensityRequest $request, $id)
    {
        $request->id = $id;

        $response = $request->handle();

        return redirect()->route('intensity.index')->with('success', 'Intensity Edit Successfully');
    }

    /**
     * @param $id
     * @return \Illuminate\Http\RedirectResponse
     */
    public function destroy($id)
    {
        Intensity::find($id)->delete();

        return redirect()->route('intensity.index')->with('success', 'Intensity Deleted Successfully');
    }
}
