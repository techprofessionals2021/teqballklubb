<?php

namespace App\Http\Controllers;

use App\Models\Events;
use Carbon\Carbon;
use Illuminate\Auth\Events\Validated;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use RealRashid\SweetAlert\Facades\Alert;

class EventController extends Controller
{
    /**
     * @return \Illuminate\Http\JsonResponse
     */
    public function index()
    {
        $events = Events::latest()->get();
        return response()->json($events);
    }

    /**
     * @param $id
     * @return \Illuminate\Http\JsonResponse
     */
    public function eventsByCondition($id)
    {
        if ($id == 'all'){
            $events = Events::latest()->get();
        }elseif ($id == 'any'){
            $events = Events::where('resourceId','any')->latest()->get();
        }else{
            $events = Events::where('resourceId',$id)->latest()->get();
        }

        return response()->json($events);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store(Request $request)
    {
        try {
            $validator = Validator::make($request->all(), [
                'title' => ['required', 'string', 'max:255'],
            ]);

            if ($validator->fails()) {
                Alert::error('Error', $validator->messages()->first());
                return redirect()->back();
            } else {

                if (isset($request->lastAllDay)) {
                    $lastAllDay = 1;
                } else {
                    $lastAllDay = 0;
                }

                $combineStartTime = date('Y-m-d H:i:s', strtotime($request->startdate . ' ' . $request->starttime));
                $combineEndTime = date('Y-m-d H:i:s', strtotime($request->enddate . ' ' . $request->endtime));

                if (empty($request->eventId)) {

                    if (isset($request->repeatedcheck)) {
                        $recurrences = [
                            'daily' => [
                                'times'     => 365,
                                'function' => 'addDay'
                            ],
                            'weekly' => [
//                                'times'     => 52,
                                'times'     => 365,
                                'function' => 'addWeek'
                            ],
                            'monthly' => [
                                'times' => 20,
                                'function' => 'addMonth'
                            ]
                        ];

                        $startTime = Carbon::parse($combineStartTime);
                        $endTime = Carbon::parse($combineEndTime);
                        $recurrence = $recurrences[$request->repeatedselect] ?? null;

                        if ($recurrence) {
                            $tempp = [];
                            for ($i = 0; $i < $recurrence['times']; $i++) {

                                $startTime->{$recurrence['function']}();
                                $endTime->{$recurrence['function']}();

//                                $startDay = Carbon::parse(date('Y-m-d', strtotime($request->startdate)))->addDays(5);
                                $startDay = Carbon::parse($request->startdate)->addDays($i);

//                                $currentLoopDay = $startDay->addDays(5);

                                if ($request->repeatedselect == 'daily'){
                                    if ($request->each == 'each') {
                                        if ($i % $request->eachDay == 0) {
                                          $checkEvent = Events::create([
                                                'title' => $request->title,
                                                'start' => $startTime,
                                                'end' => $endTime,
                                                'allDay' => $lastAllDay,
                                                'resourceId' => $request->resource,
                                                'coachName' => $request->coachName,
                                                'label' => $request->label,
                                                'showTimeAs' => $request->showtime,
                                                'reminder' => $request->reminder,
                                                'note' => $request->comment,
                                            ]);
                                        }
                                    } elseif ($request->each == 'everyDayWeek') {
                                        $checkEvent = Events::create([
                                            'title' => $request->title,
                                            'start' => $startTime,
                                            'end' => $endTime,
                                            'allDay' => $lastAllDay,
                                            'resourceId' => $request->resource,
                                            'coachName' => $request->coachName,
                                            'label' => $request->label,
                                            'showTimeAs' => $request->showtime,
                                            'reminder' => $request->reminder,
                                            'note' => $request->comment,
                                        ]);
                                    }
                                }
                                if ($request->repeatedselect == 'weekly'){
                                       if (isset($request->weeksAt)) {
                                           $daychecker = date('D',strtotime($startDay));
//                                           dd($daychecker,$request->weeksAt,in_array($daychecker,$request->weeksAt),date('Y-m-d D',strtotime($startDay)),$request->startdate);
                                           if (in_array($daychecker,$request->weeksAt)){

                                               $tempp[$i] =[
                                                    'title' => $request->title,
                                                    'start' => $startTime,
                                                    'end' => $endTime,
                                                    'allDay' => $lastAllDay,
                                                    'resourceId' => $request->resource,
                                                    'coachName' => $request->coachName,
                                                    'label' => $request->label,
                                                    'showTimeAs' => $request->showtime,
                                                    'reminder' => $request->reminder,
                                                    'note' => $request->comment,
                                                ];

//                                                $checkEvent = Events::create([
//                                                    'title' => $request->title,
//                                                    'start' => $startTime,
//                                                    'end' => $endTime,
//                                                    'allDay' => $lastAllDay,
//                                                    'resourceId' => $request->resource,
//                                                    'coachName' => $request->coachName,
//                                                    'label' => $request->label,
//                                                    'showTimeAs' => $request->showtime,
//                                                    'reminder' => $request->reminder,
//                                                    'note' => $request->comment,
//                                                ]);
                                           }

                                       }else{
                                           Alert::error('Error', 'Vennligst velg minst én dag');
                                           return redirect()->back();
                                       }

                                }

                                if ($request->exitType == 'Exit Within'){
                                    if (date('Y-m-d',strtotime($checkEvent->start)) == $request->exitWithinValue ){
//                                    if (date('Y-m-d',strtotime($currentLoopDay)) == $request->exitWithinValue ){
                                        break;
                                    }
                                }
                            }
                            dd($tempp);

                        }


                    } else {
                        $checkEvent = Events::create([
                            'title' => $request->title,
                            'start' => $request->startdate . ' ' . $request->starttime,
                            'end' => $request->enddate . ' ' . $request->endtime,
                            'allDay' => $lastAllDay,
                            'resourceId' => $request->resource,
                            'coachName' => $request->coachName,
                            'label' => $request->label,
                            'showTimeAs' => $request->showtime,
                            'reminder' => $request->reminder,
                            'note' => $request->comment,
                        ]);
                    }
                    Alert::success('Success', "Event Create Successfully");
                } else {
                    Events::where('id', $request->eventId)->update([
                        'title' => $request->title,
                        'start' => $request->startdate . ' ' . $request->starttime,
                        'end' => $request->enddate . ' ' . $request->endtime,
                        'allDay' => $lastAllDay,
                        'resourceId' => $request->resource,
                        'coachName' => $request->coachName,
                        'label' => $request->label,
                        'showTimeAs' => $request->showtime,
                        'reminder' => $request->reminder,
                        'note' => $request->comment,
                    ]);
                    Alert::success('Success', "Event Update Successfully");
                }
                return redirect()->back();

            }
        } catch (\Exception $e) {
            Alert::error('Error', $e->getMessage());
            return redirect()->back();
        }
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
     * Show the form for editing the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * @param $id
     * @return \Illuminate\Http\RedirectResponse
     */
    public function destroy($id)
    {
        Events::where('id', $id)->delete();
        Alert::success('Success', "Event Deleted Successfully");
        return redirect()->back();
    }
}
