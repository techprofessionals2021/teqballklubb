<?php

namespace App\Http\Controllers;

use App\Http\Requests\Coach\CreateCoachRequest;
use App\Http\Requests\Coach\GetAllCoachesRequest;
use App\Http\Requests\Coach\UpdateCoachRequest;
use App\Http\Requests\Role\GetAllRolesRequest;
use App\Http\Requests\User\GetUserRequest;
use App\Models\Coach;
use App\Models\User;
use Illuminate\Http\Request;

class CoachController extends Controller
{
    /**
     * @param GetAllCoachesRequest $request
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View
     */
    public function index(GetAllCoachesRequest $request)
    {
        $response = $request->handle();

        $getAllRoles = new GetAllRolesRequest();

        $roles = $getAllRoles->handle();

        return view('admin.coach.index', ['coaches' => $response , 'roles' =>$roles]);
    }

    /**
     * @param GetUserRequest $request
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View
     */
    public function create(GetUserRequest $request)
    {
        $request->id = 0;

        $response = $request->handle();

        $coachUser = Coach::where('user_id', 0)->firstOrNew();

        $route = url('coach');

//        $coachFunctions = [3 => __('custom.coach'),4 => __('custom.coachResponsible'),5 => __('custom.manager')];
        $getAllRoles = new GetAllRolesRequest();
        $coachFunctions = $getAllRoles->handle();
        return view('admin.coach.form', [
            'user' => $response, 'coachUser' => $coachUser, 'coachFunctions' => $coachFunctions, 'route' => $route, 'edit' => false]);
    }

    /**
     * @param CreateCoachRequest $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store(CreateCoachRequest $request)
    {
        $response = $request->handle();

        return redirect()->route('coach.index')->with('success', 'Trener har blitt lagt til');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Coach  $coach
     * @return \Illuminate\Http\Response
     */
    public function show(Coach $coach)
    {
        //
    }

    /**
     * @param $id
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View|\Illuminate\Http\RedirectResponse
     */
    public function edit($id)
    {
        $request = new GetUserRequest();

        $request->id = $id;

        $response = $request->handle();

        $coachUser = Coach::where('user_id', $id)->first();

        if (!isset($response->id)) {
            return redirect()->route('coach.index')->with('error', 'Coach Not Found !!');
        }

        $route = route('coach.update', ['coach' => $response->id]);

//        $coachFunctions = [3 => __('custom.coach'),4 => __('custom.coachResponsible'),5 => __('custom.manager')];
        $getAllRoles = new GetAllRolesRequest();
        $coachFunctions = $getAllRoles->handle();
        return view('admin.coach.form', [
            'user' => $response, 'coachUser' => $coachUser, 'coachFunctions' => $coachFunctions, 'route' => $route, 'edit' => true]);
    }

    /**
     * @param UpdateCoachRequest $request
     * @param $id
     * @return \Illuminate\Http\RedirectResponse
     */
    public function update(UpdateCoachRequest $request ,$id)
    {
        $request->id = $id;

        $response = $request->handle();

        return redirect()->route('coach.index')->with('success', 'Informasjon om trener har blitt endret');
    }

    /**
     * @param $id
     * @return \Illuminate\Http\RedirectResponse
     */
    public function destroy($id)
    {
        User::find($id)->delete();
        Coach::where('user_id',$id)->first()->delete();

        return redirect()->route('coach.index')->with('success', 'Trener har blitt slettet');
    }
}
