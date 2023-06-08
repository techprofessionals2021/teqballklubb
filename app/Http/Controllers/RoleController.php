<?php

namespace App\Http\Controllers;

use App\Http\Requests\Role\CreatePermissionRequest;
use App\Http\Requests\Role\CreateRoleRequest;
use App\Http\Requests\Role\GetAllPermissionsRequest;
use App\Http\Requests\Role\GetAllRolesRequest;
use App\Http\Requests\Role\GetPermissionRequest;
use App\Http\Requests\Role\GetRoleRequest;
use App\Http\Requests\Role\SavePermissionRequest;
use App\Http\Requests\Role\UpdateRoleRequest;
use App\Models\role;
use App\Models\role_assign;
use Illuminate\Http\Request;

class RoleController extends Controller
{
    /**
     * @param GetAllRolesRequest $request
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View
     */
    public function index(GetAllRolesRequest $request)
    {
        $response = $request->handle();

        return view('admin.role.index', ['roles' => $response]);
    }

    /**
     * @param GetRoleRequest $request
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View
     */
    public function create(GetRoleRequest $request)
    {
        $request->id = 0;

        $response = $request->handle();

        $route = url('role');

        return view('admin.role.form', ['role' => $response, 'route' => $route, 'edit' => false]);
    }

    /**
     * @param CreateRoleRequest $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store(CreateRoleRequest $request)
    {
        $response = $request->handle();

        return redirect()->route('role.index')->with('success', 'Trenerfunksjon lagt til');
    }

    /**
     * Display the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * @param $id
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View|\Illuminate\Http\RedirectResponse
     */
    public function edit($id)
    {
        $request = new GetRoleRequest();

        $request->id = $id;

        $response = $request->handle();

        if (!isset($response->id)) {
            return redirect()->route('role.index')->with('error', 'Role Not Found !!');
        }

        $route = route('role.update', ['role' => $response->id]);

        return view('admin.role.form', ['role' => $response, 'route' => $route, 'edit' => true]);
    }

    /**
     * @param UpdateRoleRequest $request
     * @param $id
     * @return \Illuminate\Http\RedirectResponse
     */
    public function update(UpdateRoleRequest $request, $id)
    {
        $request->id = $id;

        $response = $request->handle();

        return redirect()->route('role.index')->with('success', 'Role Edit Successfully');
    }

    /**
     * @param $id
     * @return \Illuminate\Http\RedirectResponse
     */
    public function destroy($id)
    {
        $assigneRole = role_assign::where('role_id',$id)->get()->count();
        if ($assigneRole == 0){

            role::find($id)->delete();

            return redirect()->route('role.index')->with('success', 'Trenerfunksjon slettet');
        }
        return redirect()->route('role.index')->with('error', 'Role Can not delete!');
    }

    /**
     * @param $id
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View|\Illuminate\Http\RedirectResponse
     */
    public function permission($id)
    {

        $request = new GetRoleRequest();

        $request->id = $id;

        $response = $request->handle();

        if (!isset($response->id)) {
            return redirect()->route('role.index')->with('error', 'Role Not Found !!');
        }

        $request = new GetAllPermissionsRequest();

        $permissions = $request->handle();

        $assigned_permissions = $response->getAbilities()->pluck('name')->toArray();

        return view('admin.role.permission',[ 'role' => $response, 'permissions' => $permissions, 'assigned_permissions' => $assigned_permissions ]);

    }

    /**
     * @param SavePermissionRequest $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function savePermissions(SavePermissionRequest $request)
    {
        $response = $request->handle();

        return redirect()->route('role.index')->with('success','Permission Assignee Successfully');
    }

    /**
     * @param GetPermissionRequest $request
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View
     */
    public function createPermissions(GetPermissionRequest $request)
    {
        $request->id = 0;

        $response = $request->handle();

        $route = url('submitPermissions');

        return view('admin.role.permissionform', ['permission' => $response, 'route' => $route, 'edit' => false]);
    }

    /**
     * @param CreatePermissionRequest $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function submitPermissions(CreatePermissionRequest $request)
    {
        $response = $request->handle();

        return redirect()->back()->with('success', 'permission Add Successfully');
    }
}
