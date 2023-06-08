<?php

namespace App\Http\Controllers;

use App\Http\Requests\ProgramSetup\GetProgramSetupRequest;
use App\Http\Requests\SetupFixedProgram\CreateSetupFixedProgramRequest;
use App\Http\Requests\SetupFixedProgram\GetAllSetupFixedProgramsRequest;
use App\Http\Requests\SetupFixedProgram\GetSetupFixedProgramRequest;
use App\Http\Requests\SetupFixedProgram\GetSetupFixedProgramValuesBySetUpFixedProgramId;
use App\Http\Requests\SetupFixedProgram\UpdateSetupFixedProgramRequest;
use App\Models\ExerciseCategory;
use App\Models\Group;
use App\Models\ProgramWithVideo;
use App\Models\SetupFixedProgram;
use App\Models\SetupFixedProgramValue;
use App\Models\User;
use Illuminate\Http\Request;

class SetupFixedProgramController extends Controller
{
    /**
     * @param GetAllSetupFixedProgramsRequest $request
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View
     */
    public function index(GetAllSetupFixedProgramsRequest $request)
    {
        $response = $request->handle();

        return view('admin.setup-fixed-program.index', ['setupFixedPrograms' => $response]);
    }

    /**
     * @param GetSetupFixedProgramRequest $request
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View
     */
    public function create(GetSetupFixedProgramRequest $request)
    {
        $request->id = 0;

        $response = $request->handle();

        $practitioners = User::WhereIs('practitioner')->get();

        $exerciseCategories = ExerciseCategory::all();

        $groups = Group::all();

        $route = url('setup-fixed-program');

        return view('admin.setup-fixed-program.form', ['setupFixedProgram' => $response,'practitioners' => $practitioners, 'exerciseCategories' => $exerciseCategories, 'groups' => $groups, 'route' => $route, 'edit' => false]);
    }

    /**
     * @param CreateSetupFixedProgramRequest $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store(CreateSetupFixedProgramRequest $request)
    {
        $response = $request->handle();

        return redirect()->route('setup-fixed-program.index')->with('success', __('custom.setup-fixed-program-add-successfully'));
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\SetupFixedProgram  $setupFixedProgram
     * @return \Illuminate\Http\Response
     */
    public function show(SetupFixedProgram $setupFixedProgram)
    {
        //
    }

    /**
     * @param $id
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View|\Illuminate\Http\RedirectResponse
     */
    public function edit($id)
    {

        $request = new GetSetupFixedProgramRequest();

        $request->id = $id;

        $response = $request->handle();

        if (!isset($response->id)) {
            return redirect()->route('setup-fixed-program.index')->with('error', 'Setup Fixed Program Not Found !!');
        }

        $route = route('setup-fixed-program.update', ['setup_fixed_program' => $response->id]);

        $practitioners = User::WhereIs('practitioner')->get();

        $exerciseCategories = ExerciseCategory::all();

        $groups = Group::all();

        return view('admin.setup-fixed-program.form', ['setupFixedProgram' => $response,'practitioners' => $practitioners, 'exerciseCategories' => $exerciseCategories, 'groups' => $groups, 'route' => $route, 'edit' => true]);
    }

    /**
     * @param UpdateSetupFixedProgramRequest $request
     * @param $id
     * @return \Illuminate\Http\RedirectResponse
     */
    public function update(UpdateSetupFixedProgramRequest $request , $id)
    {
        $request->id = $id;

        $response = $request->handle();

        return redirect()->route('setup-fixed-program.index')->with('success', __('custom.setup-fixed-program-edit-successfully'));
    }

    /**
     * @param $id
     * @return \Illuminate\Http\RedirectResponse
     */
    public function destroy($id)
    {

        SetupFixedProgram::find($id)->delete();


        return redirect()->back()->with('success',  __('custom.setup-fixed-program-deleted-successfully'));
    }
    public function destroyInnerValue($id)
    {
        SetupFixedProgramValue::find($id)->delete();

        return redirect()->back()->with('success',  __('custom.setup-fixed-program-deleted-successfully'));
    }

    /**
     * @param $id
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View
     */
    public function setupFixedProgramAddContent($id)
    {
        $request = new GetSetupFixedProgramValuesBySetUpFixedProgramId();

        $request->id = $id;

        $response = $request->handle();

        $allProgramsWithVideo = ProgramWithVideo::with('exCategory','exVideo')->orderBy('sort')->get();

        return view('admin.setup-fixed-program-value.index', ['fixedPrograms' => $response,'allProgramsWithVideo' => $allProgramsWithVideo, 'fixedProgramId' => $id]);
    }

    /**
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function submitSetupFixedProgramAddContent(Request $request)
    {
        if (isset($request->progValues)) {
            foreach ($request->progValues as $item) {
                $progVideoInfo = ProgramWithVideo::find($item);
                $setupPorg = New SetupFixedProgramValue();
                $setupPorg->setup_fixed_program_id = $request->fixedProgramId;
//                $setupPorg->user_id = $request->userId;
                $setupPorg->description = $progVideoInfo->description;
                $setupPorg->program_with_video_id = $item;
                $setupPorg->save();
            }
            return redirect()->back()->with('success', 'Øvelse har blitt lagt til');
        }
        return redirect()->back()->with('error', 'Please Select Any Program!');
    }

    public function setupFixedProgramValuesEdit($id)
    {
        $request = new GetSetupFixedProgramValuesBySetUpFixedProgramId();

        $request->id = $id;

        $fixedProgram = $request->editHandle();

        $route = route('submitSetupFixedProgramEdit');

        return view('admin.setup-fixed-program-value.setupFixedProgramEdit', ['fixedProgram' => $fixedProgram, 'fixedProgramId' => $id, 'route' => $route , 'edit' => true]);
    }

    /**
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function submitSetupFixedProgramEdit(Request $request)
    {
        $fixedProgram = new GetSetupFixedProgramValuesBySetUpFixedProgramId();

        $fixedProgram->id = $request->fixedProgramId;

        $setupPorg = $fixedProgram->editHandle();
//        dd();

        if (isset($setupPorg->id)) {
            $setupPorg->set = $request->set;
            $setupPorg->rep = $request->rep;
            $setupPorg->sort = $request->sort;
            $setupPorg->distance = $request->distance;
//            $setupPorg->exercise_no = $request->exerciseNo;
            $setupPorg->exercise_no = 01;
            $setupPorg->duration = $request->duration;
            $setupPorg->break = $request->break;
            $setupPorg->description = $request->description;
            $setupPorg->save();

            return redirect()->route('setupFixedProgramAddContent.id',$setupPorg->setup_fixed_program_id)->with('success', 'Øvelse har blitt endret');
        }
        return redirect()->back()->with('error', 'Setup Fixed Program Not Found !');
    }
}
