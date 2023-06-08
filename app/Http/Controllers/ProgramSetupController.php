<?php

namespace App\Http\Controllers;

use App\Http\Requests\ProgramSetup\CreateFastProgramRequest;
use App\Http\Requests\ProgramSetup\CreateProgramSetupRequest;
use App\Http\Requests\ProgramSetup\GetAllProgramSetupsRequest;
use App\Http\Requests\ProgramSetup\GetProgramSetupRequest;
use App\Http\Requests\ProgramSetup\UpdateProgramSetupRequest;
use App\Http\Requests\ProgramWithVideo\GetAllProgramsWithVideoRequest;
use App\Http\Requests\SetupProgram\GetSetupProgramsByUserIdnRegProgramId;
use App\Http\Requests\SetupProgram\GetSetupProgramsByUserIdnSetupProgramId;
use App\Http\Requests\Subscription\GetAllSubscriptionsRequest;
use App\Models\ExerciseCategory;
use App\Models\Group;
use App\Models\ProgramSetup;
use App\Models\ProgramWithVideo;
use App\Models\SetupFixedProgram;
use App\Models\SetupProgram;
use App\Models\User;
use Illuminate\Http\Request;

class ProgramSetupController extends Controller
{
    /**
     * @param GetAllProgramSetupsRequest $request
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View
     */
    public function index(GetAllProgramSetupsRequest $request)
    {
        $response = $request->handle();

        $subscriptionRequest = new GetAllSubscriptionsRequest();

        $subscriptionList = $subscriptionRequest->handle();

        return view('admin.program-setup.index', ['programSetups' => $response ,'subscriptionList' => $subscriptionList]);
    }

    /**
     * @param GetProgramSetupRequest $request
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View
     */
    public function create(GetProgramSetupRequest $request)
    {
        $request->id = 0;

        $response = $request->handle();

        $practitioners = User::WhereIs('practitioner')->get();

        $exerciseCategories = ExerciseCategory::all();

        $groups = Group::all();

        $route = url('program-setup');

        return view('admin.program-setup.form', ['programSetup' => $response,'practitioners' => $practitioners, 'exerciseCategories' => $exerciseCategories, 'groups' => $groups, 'route' => $route, 'edit' => false]);
    }

    /**
     * @param CreateProgramSetupRequest $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store(CreateProgramSetupRequest $request)
    {
        $response = $request->handle();

        return redirect()->route('program-setup.index')->with('success', 'Program Setup Add Successfully');
    }

    public function fastProgramCreate(GetProgramSetupRequest $request){

        $request->id = 0;

        $response = $request->handle();

        $practitioners = User::WhereIs('practitioner')->get();

        $exerciseCategories = ExerciseCategory::all();

        $route = url('submit-fast-program');

        $groups = Group::all();

        $fastPrograms = SetupFixedProgram::with('exCategory','group','practitioner')->get();

        return view('admin.program-setup.fastprogramform', ['programSetup' => $response,'practitioners' => $practitioners, 'exerciseCategories' => $exerciseCategories, 'route' => $route, 'groups' => $groups, 'fastPrograms' => $fastPrograms, 'edit' => false,'fastProgram' => true]);
    }

    public function submitFastProgram(CreateFastProgramRequest $request)
    {
        $response = $request->handle();

        return redirect()->route('program-setup.index')->with('success', 'Program Setup Add Successfully');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\ProgramSetup  $programSetup
     * @return \Illuminate\Http\Response
     */
    public function show(ProgramSetup $programSetup)
    {
        //
    }

    /**
     * @param $id
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View|\Illuminate\Http\RedirectResponse
     */
    public function edit($id)
    {

        $request = new GetProgramSetupRequest();

        $request->id = $id;

        $response = $request->handle();

        if (!isset($response->id)) {
            return redirect()->route('program-setup.index')->with('error', 'Program Setup Not Found !!');
        }

        $route = route('program-setup.update', ['program_setup' => $response->id]);

        $practitioners = User::WhereIs('practitioner')->get();

        $exerciseCategories = ExerciseCategory::all();

        $groups = Group::all();

        return view('admin.program-setup.form', ['programSetup' => $response,'practitioners' => $practitioners, 'exerciseCategories' => $exerciseCategories, 'groups' => $groups, 'route' => $route, 'edit' => true]);
    }

    /**
     * @param UpdateProgramSetupRequest $request
     * @param $id
     * @return \Illuminate\Http\RedirectResponse
     */
    public function update(UpdateProgramSetupRequest $request , $id)
    {
        $request->id = $id;

        $response = $request->handle();

        return redirect()->route('program-setup.index')->with('success', 'Program Setup Edit Successfully');
    }

    /**
     * @param $id
     */
    public function destroy($id)
    {
        ProgramSetup::find($id)->delete();

        return redirect()->route('program-setup.index')->with('success', 'Øvelse har blitt slettet');
    }

    public function destroySetupProgramInner($id)
    {
        SetupProgram::find($id)->delete();

        return redirect()->back()->with('success', 'Øvelse har blitt slettet');
    }

    /**
     * @param $id
     * @param $userId
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View
     */
    public function programSetupAddProgram($id ,$userId)
    {
        $setupProgramrequest = new GetSetupProgramsByUserIdnRegProgramId();

        $setupProgramrequest->id = $id;
        $setupProgramrequest->userId = $userId;

        $userPrograms = $setupProgramrequest->handle();

        $allProgramsWithVideo = ProgramWithVideo::with('exCategory','exVideo')->get();

        return view('admin.setup-program.index', ['userPrograms' => $userPrograms,'allProgramsWithVideo' => $allProgramsWithVideo, 'regProgramId' => $id, 'userId' => $userId]);
    }

    /**
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function submitProgramSetupAddProgram(Request $request)
    {
        if (isset($request->progValues)) {
            foreach ($request->progValues as $item) {
                $progWithVideo = ProgramWithVideo::find($item);
                $setupPorg = New SetupProgram();
                $setupPorg->register_program_id = $request->regProgramId;
                $setupPorg->user_id = $request->userId;
                $setupPorg->program_with_video_id = $item;
                $setupPorg->description = $progWithVideo->description;
                $setupPorg->save();
            }
            return redirect()->back()->with('success', 'Øvelse har blitt lagt til');
        }
        return redirect()->back()->with('error', 'Vennligst velg et hvilket som helst program!');
    }


    /**
     * @param $id
     * @param $userId
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View
     */
    public function userSetupProgramEdit($id ,$userId)
    {
        $setupProgramrequest = new GetSetupProgramsByUserIdnSetupProgramId();

        $setupProgramrequest->id = $id;
        $setupProgramrequest->userId = $userId;

        $userProgram = $setupProgramrequest->handle();

        $route = route('submitUserSetupProgramEdit');

        return view('admin.setup-program.setupProgramEdit', ['userProgram' => $userProgram, 'setupProgramId' => $id, 'userId' => $userId , 'route' => $route , 'edit' => true]);
    }

    public function submitUserSetupProgramEdit(Request $request)
    {

       
        $setupProgramrequest = new GetSetupProgramsByUserIdnSetupProgramId();

        $setupProgramrequest->id = $request->setupProgramId;
        $setupProgramrequest->userId = $request->userId;

        $setupPorg = $setupProgramrequest->handle();
        if (isset($setupPorg->id)) {
                $setupPorg->set = $request->set;
                $setupPorg->rep = $request->rep;
                $setupPorg->sort = $request->sort;
                $setupPorg->distance = $request->distance;
                $setupPorg->exercise_no = $request->exerciseNo;
                $setupPorg->duration = $request->duration;
                $setupPorg->break = $request->break;
                $setupPorg->description = $request->description;
                $setupPorg->save();

                return redirect()->route('programSetupAddProgram.id.userId', ['id' => $setupPorg->register_program_id , 'userId' => $request->userId]);
              

            // return redirect()->route('program-setup.index')->with('success', 'User Setup Program Update Successfully');
        }
        return redirect()->back()->with('error', 'User Setup Program Not Found !');
    }

}
