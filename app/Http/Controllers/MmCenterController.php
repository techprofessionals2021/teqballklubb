<?php

namespace App\Http\Controllers;

use App\Http\Requests\MmCenter\CreateMmCenterRequest;
use App\Http\Requests\MmCenter\GetAllMmCentersRequest;
use App\Http\Requests\MmCenter\GetMmCenterRequest;
use App\Http\Requests\MmCenter\UpdateMmCenterRequest;
use App\Models\MmCenter;
use Illuminate\Http\Request;

class MmCenterController extends Controller
{
    /**
     * @param GetAllMmCentersRequest $request
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View
     */
    public function index(GetAllMmCentersRequest $request)
    {
        $response = $request->handle();

        return view('admin.mm-center.index', ['mmCenters' => $response]);
    }

    /**
     * @param GetMmCenterRequest $request
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View
     */
    public function create(GetMmCenterRequest $request)
    {
        $request->id = 0;

        $response = $request->handle();

        $route = url('mm-center');

        return view('admin.mm-center.form', ['mmCenter' => $response, 'route' => $route, 'edit' => false]);
    }

    /**
     * @param CreateMmCenterRequest $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store(CreateMmCenterRequest $request)
    {
        $response = $request->handle();

        return redirect()->route('mm-center.index')->with('success', 'Teqballklubb lagt til');
    }

    /**
     * @param MmCenter $mmCenter
     */
    public function show(MmCenter $mmCenter)
    {
        //
    }

    /**
     * @param $id
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View|\Illuminate\Http\RedirectResponse
     */
    public function edit($id)
    {
        $request = new GetMmCenterRequest();

        $request->id = $id;

        $response = $request->handle();

        if (!isset($response->id)) {
            return redirect()->route('mm-center.index')->with('error', 'Teqballklubb Not Found !!');
        }

        $route = route('mm-center.update', ['mm_center' => $response->id]);

        return view('admin.mm-center.form', ['mmCenter' => $response, 'route' => $route, 'edit' => true]);
    }

    /**
     * @param UpdateMmCenterRequest $request
     * @param $id
     * @return \Illuminate\Http\RedirectResponse
     */
    public function update(UpdateMmCenterRequest $request, $id)
    {
        $request->id = $id;

        $response = $request->handle();

        return redirect()->route('mm-center.index')->with('success', 'Teqballklubb er endret');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param \App\Models\MmCenter $mmCenter
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        MmCenter::find($id)->delete();

        return redirect()->route('mm-center.index')->with('success', 'Teqballklubb slettet');
    }
}
