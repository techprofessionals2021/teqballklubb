<?php

namespace App\Http\Controllers;

use App\Http\Requests\PtClipboard\GetAllPtClipboardsRequest;
use App\Http\Requests\User\GetAllUsersRequest;
use App\Models\PtClipboard;
use App\Models\PtClipboardLog;
use Illuminate\Http\Request;

class PtClipboardController extends Controller
{
    /**
     * @param GetAllPtClipboardsRequest $request
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View
     */
    public function index(GetAllPtClipboardsRequest $request)
    {
        $response = $request->handle();

        return view('admin.pt-clipboard.index', ['ptClipboards' => $response]);
    }

    /**
     * @param GetAllUsersRequest $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function create(GetAllUsersRequest $request)
    {
        $allUsers = $request->handle();
        foreach ($allUsers as $user){

            if ($user->pt_customer == 0){ continue; }

            $checkptuser = PtClipboard::where('user_id',$user->id)->first();

            if (!isset($checkptuser)){
                $ptuser = new PtClipboard();
                $ptuser->user_id = $user->id;
                $ptuser->remain_clip = 0;
                $ptuser->save();
            }

        }
        return redirect()->route('pt-clipboard.index')->with('success', 'PT Clipboard Refresh Successfully');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\PtClipboard  $ptClipboard
     * @return \Illuminate\Http\Response
     */
    public function show(PtClipboard $ptClipboard)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\PtClipboard  $ptClipboard
     * @return \Illuminate\Http\Response
     */
    public function edit(PtClipboard $ptClipboard)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\PtClipboard  $ptClipboard
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, PtClipboard $ptClipboard)
    {
        //
    }

    /**
     * @param $id
     * @return \Illuminate\Http\RedirectResponse
     */
    public function destroy($id)
    {
        PtClipboard::find($id)->delete();

        return redirect()->route('pt-clipboard.index')->with('success', 'PT Clipboard Deleted Successfully');
    }

    /**
     * @param $id
     * @return \Illuminate\Http\RedirectResponse
     */
    public function registerAttendance($id)
    {
       $ptClipBoard = PtClipboard::find($id);

       $ptLog = new PtClipboardLog();
       $ptLog->user_id = $ptClipBoard->user_id;
       $ptLog->previous = $ptClipBoard->remain_clip;
       $ptLog->now = $ptClipBoard->remain_clip - 1;
       $ptLog->create_by = auth()->user()->id;
       $ptLog->save();

       $ptClipBoard->remain_clip = $ptClipBoard->remain_clip - 1;
       $ptClipBoard->save();

        return redirect()->route('pt-clipboard.index')->with('success', 'Oppmøte registrert');
    }

    /**
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View
     */
    public function ptClipboardLogs()
    {
        $ptClipboardLogs = PtClipboardLog::with('practitioner','createBy')->orderByDesc('id')->get();

        return view('admin.pt-clipboard-logs.index', ['ptClipboardLogs' => $ptClipboardLogs]);
    }
    public function addUserPtClipboard(Request $request)
    {
        if (!isset($request->clipboard) || $request->clipboard < 0){
            return redirect()->route('pt-clipboard.index')->with('error', 'Invalid Value!');
        }


        $ptClipBoard = PtClipboard::find($request->userPtClipboardid);

        $ptLog = new PtClipboardLog();
        $ptLog->user_id = $ptClipBoard->user_id;
        $ptLog->previous = $ptClipBoard->remain_clip;
        $ptLog->now = $ptClipBoard->remain_clip + $request->clipboard;
        $ptLog->create_by = auth()->user()->id;
        $ptLog->save();

        $ptClipBoard->remain_clip = $ptClipBoard->remain_clip + $request->clipboard;
        $ptClipBoard->save();

        return redirect()->route('pt-clipboard.index')->with('success', 'User PT Clipboard Add Successfully');
    }

    public function editUserPtClipboard(Request $request)
    {
        if (!isset($request->clipboard) || $request->clipboard < 0){
            return redirect()->route('pt-clipboard.index')->with('error', 'Invalid Value!');
        }

        $ptClipBoard = PtClipboard::find($request->userPtClipboardid);

        $ptLog = new PtClipboardLog();
        $ptLog->user_id = $ptClipBoard->user_id;
        $ptLog->previous = $ptClipBoard->remain_clip;
        $ptLog->now = $request->clipboard;
        $ptLog->create_by = auth()->user()->id;
        $ptLog->save();

        $ptClipBoard->remain_clip = $request->clipboard;
        $ptClipBoard->save();
        return redirect()->route('pt-clipboard.index')->with('success', 'Antall klipp oppdatert');
    }
}
