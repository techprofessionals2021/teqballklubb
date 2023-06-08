<?php

namespace App\Http\Controllers;

use App\Http\Requests\Profession\CreateProfessionRequest;
use App\Http\Requests\Profession\GetAllProfessionsRequest;
use App\Http\Requests\Profession\GetProfessionRequest;
use App\Http\Requests\Profession\UpdateProfessionRequest;
use App\Models\Profession;
use Illuminate\Http\Request;

class ProfessionController extends Controller
{
    /**
     * @param GetAllProfessionsRequest $request
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View
     */
    public function index(GetAllProfessionsRequest $request)
    {
        $response = $request->handle();

        return view('admin.profession.index', ['professions' => $response]);
    }

    /**
     * @param GetProfessionRequest $request
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View
     */
    public function create(GetProfessionRequest $request)
    {
        $request->id = 0;

        $response = $request->handle();

        $route = url('profession');

        return view('admin.profession.form', ['profession' => $response, 'route' => $route, 'edit' => false]);
    }

    /**
     * @param CreateProfessionRequest $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store(CreateProfessionRequest $request)
    {
        $response = $request->handle();

        return redirect()->route('profession.index')->with('success', 'Yrke lagt til');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Profession  $profession
     * @return \Illuminate\Http\Response
     */
    public function show(Profession $profession)
    {
        //
    }

    /**
     * @param $id
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View|\Illuminate\Http\RedirectResponse
     */
    public function edit($id)
    {
        $request = new GetProfessionRequest();

        $request->id = $id;

        $response = $request->handle();

        if (!isset($response->id)) {
            return redirect()->route('profession.index')->with('error', 'Profession Not Found !!');
        }

        $route = route('profession.update', ['profession' => $response->id]);

        return view('admin.profession.form', ['profession' => $response, 'route' => $route, 'edit' => true]);
    }

    /**
     * @param UpdateProfessionRequest $request
     * @param $id
     * @return \Illuminate\Http\RedirectResponse
     */
    public function update(UpdateProfessionRequest $request, $id)
    {
        $request->id = $id;

        $response = $request->handle();

        return redirect()->route('profession.index')->with('success', 'Yrke endret');
    }

    /**
     * @param $id
     * @return \Illuminate\Http\RedirectResponse
     */
    public function destroy($id)
    {
        Profession::find($id)->delete();

        return redirect()->route('profession.index')->with('success', 'Yrke slettet');
    }
}
