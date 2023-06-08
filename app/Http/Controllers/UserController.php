<?php

namespace App\Http\Controllers;

use App\Http\Requests\User\CreateUserRequest;
use App\Http\Requests\User\GetAllUsersRequest;
use App\Http\Requests\User\GetUserRequest;
use App\Http\Requests\User\UpdateUserRequest;
use App\Models\Anthropometric;
use App\Models\CaseWorker;
use App\Models\ExerciseType;
use App\Models\Football;
use App\Models\Group;
use App\Models\MmCenter;
use App\Models\Profession;
use App\Models\Stats3dScreening;
use App\Models\StatsQuestion;
use App\Models\StatsTester;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use function PHPUnit\Framework\isEmpty;
use function PHPUnit\Framework\isNull;

class UserController extends Controller
{
    /**
     * @param GetAllUsersRequest $request
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View
     */
    public function index(GetAllUsersRequest $request)
    {
        $response = $request->handle();

        return view('admin.user.index', ['users' => $response]);
    }

    /**
     * @param GetUserRequest $request
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View
     */
    public function create(GetUserRequest $request)
    {
        $request->id = 0;

        $response = $request->handle();

        $route = url('user');

        $professions = Profession::all();

        $groups = Group::all();

        $caseworkers = CaseWorker::all();

        $centers = MmCenter::all();

        $exerciseTypes = ExerciseType::all();

        $rightOrLefts = ['right' => __('custom.right'),'left' => __('custom.left'),'both' => __('custom.both'),'ikke_fotballspiller' => __('Ikke fotballspiller')];

        $levels = [1 => __('custom.beginner'),2 => __('custom.medium'),3 => __('custom.experienced')];

        $posisjon_fotball = [1 => 'Målvakt',2 => 'Forsvarspiller',3 => 'Midtbanespiller',4 => 'Angrepsspiller/Spiss',5 => 'Ikke fotballspiller'];

        return view('admin.user.form', [
            'user' => $response,
            'professions' => $professions,
            'groups' => $groups,
            'caseworkers' => $caseworkers,
            'centers' => $centers,
            'exerciseTypes' => $exerciseTypes,
            'rightOrLefts' => $rightOrLefts,
            'levels' => $levels,
            'posisjon_fotball' => $posisjon_fotball,
            'route' => $route,
            'edit' => false]);
    }

    /**
     * @param CreateUserRequest $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store(CreateUserRequest $request)
    {
        $response = $request->handle();

        return redirect()->route('user.index')->with('success', __('custom.user-add-successfully'));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
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
        $request = new GetUserRequest();

        $request->id = $id;

        $response = $request->handle();

        if (!isset($response->id)) {
            return redirect()->route('user.index')->with('error', 'User Not Found !!');
        }

        $route = route('user.update', ['user' => $response->id]);

        $professions = Profession::all();

        $groups = Group::all();

        $caseworkers = CaseWorker::all();

        $centers = MmCenter::all();

        $exerciseTypes = ExerciseType::all();

        $rightOrLefts = ['right' =>'Høyre','left'=>'Venstre','both'=>'Begge','ikke_fotballspiller'=>'Ikke fotballspiller'];

        $levels = [1 => 'Nybegynner', 2 => 'Medium', 3 => 'Erfaren'];

        $posisjon_fotball = [1 => 'Målvakt',2 => 'Forsvarspiller',3 => 'Midtbanespiller',4 => 'Angrepsspiller/Spiss',5 => 'Ikke fotballspiller'];

        return view('admin.user.form', [
            'user' => $response,
            'professions' => $professions,
            'groups' => $groups,
            'caseworkers' => $caseworkers,
            'centers' => $centers,
            'exerciseTypes' => $exerciseTypes,
            'rightOrLefts' => $rightOrLefts,
            'levels' => $levels,
            'posisjon_fotball' => $posisjon_fotball,
            'route' => $route,
            'edit' => true]);
    }

    /**
     * @param UpdateUserRequest $request
     * @param $id
     * @return \Illuminate\Http\RedirectResponse
     */
    public function update(UpdateUserRequest $request, $id)
    {
        $request->id = $id;

        $response = $request->handle();

        return redirect()->route('user.index')->with('success', __('custom.user-edit-successfully'));
    }

    /**
     * @param $id
     * @return \Illuminate\Http\RedirectResponse
     */
    public function destroy($id)
    {
        $user = User::find($id);

        Anthropometric::where('user_id',$user->id)->delete();
        Football::where('user_id',$user->id)->delete();
        Stats3dScreening::where('user_id',$user->id)->delete();
        StatsQuestion::where('user_id',$user->id)->delete();
        StatsTester::where('user_id',$user->id)->delete();

        $user->delete();

        return redirect()->route('user.index')->with('success', __('custom.user-delete-successfully'));
    }

    public function getUsersByGroupId(Request $request)
    {
        $groupUsers = User::with('group')
            ->where('group_id', $request->group_id)->get();

        $body = "<option value='' disabled selected>".__('custom.pleaseSelectPractitioner')."</option>";
        if ($groupUsers) {
            foreach ($groupUsers as $key => $value) {

                $body .= "<option value='" . $value->id . "'>" . $value->name . "</option>"; // if this not working try below
//          $body[$key] = "<option value='".$value->id."'>".$value->name."</option>";  // Todo  Resolved
            }
            $bod['status'] = 1;
            $bod['body'] = $body;
        } else {
            $bod['status'] = 0;
            $bod['body'] = $bod;
        }

        $response = json_encode($bod);
        return $response;
    }
}
