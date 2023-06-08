<?php

namespace App\Http\Controllers;

use App\Http\Requests\CaseWorker\CreateCaseWorkerRequest;
use App\Http\Requests\CaseWorker\GetAllCaseWorkersRequest;
use App\Http\Requests\CaseWorker\GetCaseWorkerRequest;
use App\Http\Requests\CaseWorker\UpdateCaseWorkerRequest;
use App\Models\CaseWorker;
use Illuminate\Http\Request;

class CaseWorkerController extends Controller
{
    /**
     * @param GetAllCaseWorkersRequest $request
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View
     */
    public function index(GetAllCaseWorkersRequest $request)
    {
        $response = $request->handle();

        return view('admin.caseworker.index', ['caseworkers' => $response]);
    }

    /**
     * @param GetCaseWorkerRequest $request
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View
     */
    public function create(GetCaseWorkerRequest $request)
    {
        $request->id = 0;

        $response = $request->handle();

        $route = url('caseworker');

        return view('admin.caseworker.form', ['caseworker' => $response, 'route' => $route, 'edit' => false]);
    }

    /**
     * @param CreateCaseWorkerRequest $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store(CreateCaseWorkerRequest $request)
    {
        $response = $request->handle();

        return redirect()->route('caseworker.index')->with('success', 'Case-Worker Add Successfully');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\CaseWorker  $caseWorker
     * @return \Illuminate\Http\Response
     */
    public function show(CaseWorker $caseWorker)
    {
        //
    }

    /**
     * @param $id
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View|\Illuminate\Http\RedirectResponse
     */
    public function edit($id)
    {
        $request = new GetCaseWorkerRequest();

        $request->id = $id;

        $response = $request->handle();

        if (!isset($response->id)) {
            return redirect()->route('caseworker.index')->with('error', 'Case-Worker Not Found !!');
        }

        $route = route('caseworker.update', ['caseworker' => $response->id]);

        return view('admin.caseworker.form', ['caseworker' => $response, 'route' => $route, 'edit' => true]);
    }

    /**
     * @param UpdateCaseWorkerRequest $request
     * @param $id
     * @return \Illuminate\Http\RedirectResponse
     */
    public function update(UpdateCaseWorkerRequest $request, $id)
    {
        $request->id = $id;

        $response = $request->handle();

        return redirect()->route('caseworker.index')->with('success', 'Case-Worker Edit Successfully');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\CaseWorker  $caseWorker
     * @return \Illuminate\Http\Response
     */
    public function destroy(CaseWorker $caseWorker)
    {
        //
    }
}
