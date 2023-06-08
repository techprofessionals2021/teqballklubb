<?php

namespace App\Http\Controllers;

use App\Http\Requests\Group\CreateGroupRequest;
use App\Http\Requests\Group\GetAllGroupsRequest;
use App\Http\Requests\Group\GetGroupRequest;
use App\Http\Requests\Group\UpdateGroupRequest;
use App\Models\Group;
use Illuminate\Http\Request;

class GroupController extends Controller
{
    /**
     * @param GetAllGroupsRequest $request
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View
     */
    public function index(GetAllGroupsRequest $request)
    {
        $response = $request->handle();

        return view('admin.group.index', ['groups' => $response]);
    }

    /**
     * @param GetGroupRequest $request
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View
     */
    public function create(GetGroupRequest $request)
    {
        $request->id = 0;

        $response = $request->handle();

        $route = url('group');

        return view('admin.group.form', ['group' => $response, 'route' => $route, 'edit' => false]);
    }

    /**
     * @param CreateGroupRequest $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store(CreateGroupRequest $request)
    {
        $response = $request->handle();

        return redirect()->route('group.index')->with('success', 'Gruppe lagt til');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Group  $group
     * @return \Illuminate\Http\Response
     */
    public function show(Group $group)
    {
        //
    }

    /**
     * @param $id
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View|\Illuminate\Http\RedirectResponse
     */
    public function edit($id)
    {
        $request = new GetGroupRequest();

        $request->id = $id;

        $response = $request->handle();

        if (!isset($response->id)) {
            return redirect()->route('group.index')->with('error', 'Group Not Found !!');
        }

        $route = route('group.update', ['group' => $response->id]);

        return view('admin.group.form', ['group' => $response, 'route' => $route, 'edit' => true]);
    }

    /**
     * @param UpdateGroupRequest $request
     * @param $id
     * @return \Illuminate\Http\RedirectResponse
     */
    public function update(UpdateGroupRequest $request, $id)
    {
        $request->id = $id;

        $response = $request->handle();

        return redirect()->route('group.index')->with('success', 'Gruppe har blitt endret');
    }

    /**
     * @param $id
     * @return \Illuminate\Http\RedirectResponse
     */
    public function destroy($id)
    {
        Group::find($id)->delete();

        return redirect()->route('group.index')->with('success', 'Gruppe slettet');
    }
}
