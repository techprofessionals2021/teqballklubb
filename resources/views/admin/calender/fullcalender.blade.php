@extends("layouts.app")

@section("style")
    <link href='https://cdn.jsdelivr.net/npm/fullcalendar@5.10.2/main.min.css' rel='stylesheet'/>
    {{--<link href="{{asset('assets/fullcalender/fullcalendar.css')}}" rel="stylesheet" />--}}
    <style>
        html, body {
            margin: 0;
            padding: 0;
            font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
            font-size: 14px;
        }
        .cust-coach-select {
            width: 12% !important;
            position: absolute;
            top: 15px;
            left: 290px;
        }

        /*#calendar {*/
        /*    max-width: 1100px;*/
        /*    margin: 40px auto;*/
        /*}*/
    </style>
@endsection

@section("wrapper")
    <!--start page wrapper -->
    <div class="page-wrapper">
        @include("layouts.alert_message")
        <div class="page-content">
            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
{{--                            @dd($eventsData)--}}
                            @if( auth()->user()->getRoles()->first() == 'admin' || auth()->user()->coachInfo->calendar == 1)
                                <select class="form-control cust-coach-select" id="custom-coach-select" name="custom-coach-select" style="{{ app()->getLocale() == 'no' ? 'left: 250px;' : '' }}">
                                    <option disabled selected>-- {{__('custom.select')}} --</option>
                                    <option {{$eventsData == 'all' ? 'selected' : ''}} value="all">{{__('custom.all')}}</option>
                                    {{--                            <option value="any">(Any)</option>--}}
                                    @foreach($allCoaches as $item)
                                        <option {{$eventsData == $item->id ? 'selected' : ''}} value="{{$item->id}}">{{$item->name}}</option>
                                    @endforeach
                                </select>
                                <div id='calendar'></div>
                            @else
                                <h4 class="text-center alert-danger">{{__('custom.calendarNotActiveMsg')}}</h4>
                            @endif
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="addevent" tabindex="-1" aria-hidden="true">
        <div class="modal-dialog modal-xl modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 id="modalTitle" class="modal-title">{{__('custom.addEvent')}}</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                            aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form class="g-3" id="addEventForm" method="POST" action="{{route('calender-event.store')}}">
                        @csrf
                        <div class="row">
                            <input type="hidden" name="eventId" id="eventId" value="">
                            <div class="col-md-12 p-4 pb-0">
                                <div class="row">
                                    <div class="col-lg-2 col-md-2">
                                        <label for="title" class="mt-1">{{__('custom.subject')}}: </label>
                                    </div>
                                    <div class="col-lg-10 col-md-10 mb-4">
                                        <input type="text" class="form-control input-lg" id="title" name="title">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-6 col-md-12">
                                        <div class="form-check form-switch mb-4 p-0">
                                            <div class="row">
                                                <div class="col-lg-4 col-md-4">
                                                    <label class="form-check-label" for="lastAllDay">{{__('custom.lastsAllDay')}}: </label>
                                                </div>
                                                <div class="col-lg-8 col-md-8">
                                                    <input class="form-check-input m-0" type="checkbox" id="lastAllDay" name="lastAllDay">
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-lg-4 col-md-4">
                                                <label for="startdate" class="mt-1 mr-2">{{__('custom.startTime')}}:</label>
                                            </div>
                                            <div class="col-lg-8 col-md-8">
                                                <div class="input-group mb-4">
                                                    <input type="date" class="form-control input-lg" id="startdate" value="" name="startdate">
                                                    <input type="time" class="form-control input-lg" id="starttime" value="" name="starttime">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-4 col-md-4">
                                                <label for="enddate" class="mt-1 mr-2">{{__('custom.endTime')}}:</label>
                                            </div>
                                            <div class="col-lg-8 col-md-8">
                                                <div class="input-group mb-4">
                                                    <input type="date" class="form-control input-lg" id="enddate" name="enddate">
                                                    <input type="time" class="form-control input-lg" id="endtime" name="endtime">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-4 col-md-4">
                                                <label for="resource" class="mt-1 mr-2">{{__('Trener')}}:</label>
                                            </div>
                                            <div class="col-lg-8 col-md-8 mb-4">
                                                <select class="form-control" id="resource" name="resource">
                                                    <option value="any">(Alle)</option>
                                                    @foreach($allCoaches as $item)
                                                        <option value="{{$item->id}}">{{$item->name}}</option>
                                                    @endforeach
                                                </select>
                                            </div>
                                        </div>

                                    </div>
                                    <div class="col-lg-6 col-md-12">
{{--                                        <div class="row">--}}
{{--                                            <div class="col-lg-4 col-md-4">--}}
{{--                                                <label for="coach" class="mt-1 mr-2">{{__('custom.coach')}}:</label>--}}
{{--                                            </div>--}}
{{--                                            <div class="col-lg-8 col-md-8 mb-4">--}}
{{--                                                <input type="text" class="form-control input-lg" id="coach" name="coachName">--}}
{{--                                            </div>--}}
{{--                                        </div>--}}

                                        <div class="row">
                                            <div class="col-lg-4 col-md-4">
                                                <label for="label" class="mt-1 mr-2">{{__('custom.label')}}:</label>
                                            </div>
                                            <div class="col-lg-8 col-md-8 mb-4">
                                                <select class="form-control" id="label" name="label">
                                                    <option value="screening">{{__('custom.screening')}}</option>
                                                    <option value="group_training">{{__('custom.groupTraining')}}</option>
                                                    <option value="pt_time">{{__('custom.ptTime')}}</option>
                                                    <option value="tv">TV</option>
                                                    <option value="vacation">{{__('custom.vacation')}}</option>
                                                    <option value="overall_training">{{__('custom.overallTraining')}}</option>
                                                    <option value="travel">{{__('custom.travel')}}</option>
                                                    <option value="preparations">{{__('custom.preparations')}}</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-4 col-md-4">
                                                <label for="showtime" class="mt-1 mr-2">{{__('custom.showTimeAs')}}:</label>
                                            </div>
                                            <div class="col-lg-8 col-md-8 mb-4">
                                                <select class="form-control" id="showtime" name="showtime">
                                                    <option value="free">{{__('custom.free')}}</option>
                                                    <option value="supposedly_busy">{{__('custom.supposedlyBusy')}}</option>
                                                    <option value="busy">{{__('custom.busy')}}</option>
                                                    <option value="out">{{__('custom.out')}}</option>
                                                    <option value="works_elsewhere">{{__('custom.worksElsewhere')}}</option>
                                                </select>
                                            </div>
                                        </div>
{{--                                        <div class="row">--}}
{{--                                            <div class="col-lg-4 col-md-4">--}}
{{--                                                <label for="reminder" class="mt-1 mr-2">{{__('custom.reminder')}}:</label>--}}
{{--                                            </div>--}}
{{--                                            <div class="col-lg-8 col-md-8 mb-4">--}}
{{--                                                <select class="form-control" id="reminder" name="reminder">--}}
{{--                                                    <option value="no">{{__('custom.no')}}</option>--}}
{{--                                                    <option value="0min">0 {{__('custom.minutes')}}</option>--}}
{{--                                                    <option value="5min">5 {{__('custom.minutes')}}</option>--}}
{{--                                                    <option value="10min">10 {{__('custom.minutes')}}</option>--}}
{{--                                                    <option value="15min">15 {{__('custom.minutes')}}</option>--}}
{{--                                                    <option value="30min">30 {{__('custom.minutes')}}</option>--}}
{{--                                                    <option value="1hour">1 {{__('custom.hour')}}</option>--}}
{{--                                                    <option value="2hours">2 {{__('custom.hours')}}</option>--}}
{{--                                                    <option value="3hours">3 {{__('custom.hours')}}</option>--}}
{{--                                                    <option value="4hours">4 {{__('custom.hours')}}</option>--}}
{{--                                                    <option value="5hours">5 {{__('custom.hours')}}</option>--}}
{{--                                                    <option value="6hours">6 {{__('custom.hours')}}</option>--}}
{{--                                                    <option value="7hours">7 {{__('custom.hours')}}</option>--}}
{{--                                                    <option value="8hours">8 {{__('custom.hours')}}</option>--}}
{{--                                                    <option value="9hours">9 {{__('custom.hours')}}</option>--}}
{{--                                                    <option value="10hours">10 {{__('custom.hours')}}</option>--}}
{{--                                                    <option value="11hours">11 {{__('custom.hours')}}</option>--}}
{{--                                                    <option value="12hours">12 {{__('custom.hours')}}</option>--}}
{{--                                                    <option value="18hours">18 {{__('custom.hours')}}</option>--}}
{{--                                                    <option value="1day">1 {{__('custom.day')}}</option>--}}
{{--                                                    <option value="2days">2 {{__('custom.days')}}</option>--}}
{{--                                                    <option value="3days">3 {{__('custom.days')}}</option>--}}
{{--                                                    <option value="4days">4 {{__('custom.days')}}</option>--}}
{{--                                                    <option value="1week">1 {{__('custom.week')}}</option>--}}
{{--                                                    <option value="2weeks">2 {{__('custom.weeks')}}</option>--}}
{{--                                                </select>--}}
{{--                                            </div>--}}
{{--                                        </div>--}}

                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-12 col-md-12 p-4 pt-0">
                                <div class="form-group">
                                    <textarea class="form-control" id="comment" name="comment" rows="5"></textarea>
                                </div>
                            </div>
                            <div class="col-lg-12 col-md-12 p-4 pt-0">
                                <div class="form-check form-switch p-0">
                                    <div class="row">
                                        <div class="col-lg-2 col-md-4">
                                            <label class="form-check-label" for="repeatedcheck">{{__('custom.repeated')}}: </label>
                                        </div>
                                        <div class="col-lg-8 col-md-8">
                                            <input class="form-check-input m-0" type="checkbox" id="repeatedcheck" name="repeatedcheck">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            @php
                                $monthNames = ['january','february','march','april','may','june','july','august'
                                               ,'september','october','november','december'];
                                $dayName = ['day','weekday','weekend','monday','tuesday','wednesday','thursday','friday'
                                            ,'saturday','sunday']
                            @endphp
                            <div class="col-lg-12 col-md-12 p-4 pt-0" style="display: none" id="repeatedMainDiv">
                                <div class="row">
                                    <div class="col-lg-6 col-md-12">
                                        <div class="row">
                                            <div class="col-lg-4 col-md-4">
                                                <label for="repeatedselect" class="mt-1 mr-2">{{__('custom.repeated')}}:</label>
                                            </div>
                                            <div class="col-lg-8 col-md-8 mb-4">
                                                <select class="form-control" id="repeatedselect" name="repeatedselect">
                                                    <option value="daily">{{__('custom.daily')}}</option>
                                                    <option value="weekly">{{__('custom.weekly')}}</option>
{{--                                                    <option value="monthly">{{__('custom.monthly')}}</option>--}}
{{--                                                    <option value="annual">{{__('custom.annual')}}</option>--}}
                                                </select>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-12 col-md-12 repDailyMainDiv d-none">
                                                <div class="row">
                                                    <div class="col-lg-4 col-md-4">
                                                        <div class="form-check">
                                                            <input class="form-check-input" type="radio" name="each" id="each" value="each" checked>
                                                            <label class="form-check-label" for="each">{{__('custom.each')}}</label>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-8 col-md-8 mb-4">
                                                        <input type="number" class="form-control input-lg" placeholder="1 dag(er)" id="eachDay" name="eachDay" value="1" min="1">
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-lg-12 col-md-12">
                                                        <div class="form-check">
                                                            <input class="form-check-input" type="radio" name="each" id="everyDayWeek" value="everyDayWeek">
                                                            <label class="form-check-label" for="everyDayWeek">{{__('custom.everydayOfTheWeek')}}</label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-lg-12 col-md-12 repWeeklyMainDiv" style="display: none">
                                                <div class="row">
                                                    <div class="col-lg-12 col-md-12">
                                                        <div class="row d-none">
                                                            <div class="col-lg-4 col-md-4">
                                                                <label class="form-check-label" for="repeachweek">{{__('custom.each')}} : </label>
                                                            </div>
                                                            <div class="col-lg-8 col-md-8 mb-4">
                                                                <div class="form-check p-0">
                                                                    <input type="number" class="form-control" min="1"
                                                                           max="99" value="1" id="repeachweek"
                                                                           name="eachweek">
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="row weeksAtDays">
                                                            <div class="col-lg-4 col-md-4">
                                                                <label class="form-check-label">{{__('Velg dager i uken')}} : </label>
                                                            </div>
                                                            <div class="col-lg-8 col-md-8 mb-4">

                                                                <input class="form-check-input" type="checkbox" name="weeksAt[]" id="mon" value="Mon">
                                                                <label class="form-check-label" for="mon">{{__('custom.mon')}}</label>

                                                                <input class="form-check-input" type="checkbox" name="weeksAt[]" id="tue" value="Tue">
                                                                <label class="form-check-label" for="tue">{{__('custom.tue')}}</label>

                                                                <input class="form-check-input" type="checkbox" name="weeksAt[]" id="wed" value="Wed">
                                                                <label class="form-check-label" for="wed">{{__('custom.wed')}}</label>

                                                                <input class="form-check-input" type="checkbox" name="weeksAt[]" id="thu" value="Thu">
                                                                <label class="form-check-label" for="thu">{{__('custom.thu')}}</label>

                                                                <input class="form-check-input" type="checkbox" name="weeksAt[]" id="fri" value="Fri">
                                                                <label class="form-check-label" for="fri">{{__('custom.fri')}}</label>

                                                                <input class="form-check-input" type="checkbox" name="weeksAt[]" id="sat" value="Sat">
                                                                <label class="form-check-label" for="sat">{{__('custom.sat')}}</label>

                                                                <input class="form-check-input" type="checkbox" name="weeksAt[]" id="sun" value="Sun">
                                                                <label class="form-check-label" for="sun">{{__('custom.sun')}}</label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-lg-12 col-md-12 repMonthlyMainDiv" style="display: none" >
                                                <div class="row">
                                                    <div class="col-lg-12 col-md-12">
                                                        <div class="row">
                                                            <div class="col-lg-4 col-md-4">
                                                                <input class="form-check-input" type="radio" name="monthlyEachDayOrTo" id="monthlyEachDay" value="monthlyEachDay" >
                                                                <label class="form-check-label" for="monthlyEachDay">{{__('custom.day')}} : </label>
                                                            </div>
                                                            <div class="col-lg-8 col-md-8 mb-4">
                                                                <div class="form-check p-0 mb-3">
                                                                    <input type="number" class="form-control" min="1"
                                                                           max="31" placeholder="1" id="repEachMonthDay"
                                                                           name="repEachMonth">
                                                                </div>

                                                                <label class="form-check-label" for="repEachMonth">{{__('custom.forEach')}} : </label>
                                                                <input type="number" class="form-control d-inline-block w-75" min="1"
                                                                       max="99" placeholder="1 måned(er)" id="repEachMonth"
                                                                       name="repEachMonth">
                                                            </div>
                                                        </div>

                                                        <div class="row">
                                                            <div class="col-lg-4 col-md-4">
                                                                <input class="form-check-input" type="radio" name="monthlyEachDayOrTo" id="monthlyDayTo" value="monthlyDayTo" >
                                                                <label class="form-check-label" for="monthlyDayTo">{{__('custom.it')}} : </label>
                                                            </div>
                                                            <div class="col-lg-8 col-md-8 mb-4">
                                                                <select class="form-control mb-3 d-inline-block" style="width: 47%" id="weekLap" name="weekLap">
                                                                    <option value="first">First</option>
                                                                    <option value="second">Second</option>
                                                                    <option value="third">Third</option>
                                                                    <option value="fourth">Fourth</option>
                                                                    <option value="last">Last</option>
                                                                </select>

                                                                <select class="form-control mb-3 d-inline-block"  style="width: 47%" id="dayWeekName" name="dayWeekName">
                                                                    {{--                                                                    <option value="day">Day</option>--}}
                                                                    <option value="weekday">Weekday</option>
                                                                    <option value="weekend">Weekend</option>
                                                                    <option value="monday">Monday</option>
                                                                    <option value="tuesday">Tuesday</option>
                                                                    <option value="wednesday">Wednesday</option>
                                                                    <option value="thursday">Thursday</option>
                                                                    <option value="friday">Friday</option>
                                                                    <option value="saturday">Saturday</option>
                                                                    <option value="sunday">Sunday</option>
                                                                </select>


                                                                <label class="form-check-label" for="repEachMonth">{{__('custom.forEach')}} : </label>
                                                                <input type="number" class="form-control d-inline-block w-75" min="1"
                                                                       max="99" placeholder="1 måned(er)" id="repEachMonth"
                                                                       name="repEachMonth">
                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-lg-12 col-md-12 repAnnualMainDiv" style="display: none">
                                                <div class="row">
                                                    <div class="col-lg-12 col-md-12">
                                                        <div class="row">
                                                            <div class="col-lg-4 col-md-4">
                                                                <input class="form-check-input" type="radio" name="yearlyEachMonthOrTo" id="yearlyEach" value="yearlyEach" >
                                                                <label class="form-check-label" for="yearlyEacOrTo">{{__('custom.each')}} : </label>
                                                            </div>
                                                            <div class="col-lg-8 col-md-8 mb-4">
                                                                <select class="form-control mb-3 d-inline-block" style="width: 49%" id="yearMonth" name="yearMonth">
                                                                    @foreach($monthNames as $item)
                                                                        <option value="{{$item}}">{{ucfirst($item)}}</option>
                                                                    @endforeach
                                                                </select>

                                                                <input type="number" class="form-control d-inline-block" min="1"
                                                                       max="31" placeholder="1" id="repEachMonthDay"
                                                                       name="repEachMonth" style="width: 49%" >
                                                            </div>
                                                        </div>

                                                        <div class="row">
                                                            <div class="col-lg-4 col-md-4">
                                                                <input class="form-check-input" type="radio" name="yearlyEachMonthOrTo" id="yearlyDayTo" value="yearlyDayTo" >
                                                                <label class="form-check-label" for="yearlyDayTo">{{__('custom.it')}} : </label>
                                                            </div>
                                                            <div class="col-lg-8 col-md-8 mb-4">
                                                                <select class="form-control mb-3 d-inline-block" style="width: 48%" id="weekLap" name="weekLap">
                                                                    <option value="first">First</option>
                                                                    <option value="second">Second</option>
                                                                    <option value="third">Third</option>
                                                                    <option value="fourth">Fourth</option>
                                                                    <option value="last">Last</option>
                                                                </select>

                                                                <select class="form-control mb-3 d-inline-block"  style="width: 48%" id="dayWeekName" name="dayWeekName">
                                                                    @foreach($dayName as $item)
                                                                        <option value="{{$item}}">{{ucfirst($item)}}</option>
                                                                    @endforeach
                                                                </select>


                                                                <label class="form-check-label" for="repEachMonth">{{__('custom.of')}} : </label>
                                                                <select class="form-control mb-3 d-inline-block" style="width: 90%" id="yearMonthTo" name="yearMonthTo">
                                                                    @foreach($monthNames as $item)
                                                                        <option value="{{$item}}">{{ucfirst($item)}}</option>
                                                                    @endforeach
                                                                </select>
                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-lg-6 col-md-12">
                                        <div class="row">
                                            <div class="col-lg-12 col-md-12 mb-4">
                                                <div class="form-check">
                                                    <input class="form-check-input" type="radio" name="exitType" id="noEndDate" value="No End Date" checked>
                                                    <label class="form-check-label" for="noEndDate">{{__('custom.noEndDate')}}</label>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row d-none">
                                            <div class="col-lg-4 col-md-4">
                                                <div class="form-check">
                                                    <input class="form-check-input" type="radio" name="exitType" id="exitAfterCheck" value="Exit After">
                                                    <label class="form-check-label" for="exitAfterCheck">{{__('custom.exitAfter')}}:</label>
                                                </div>
                                            </div>
                                            <div class="col-lg-8 col-md-8 mb-4">
                                                <input type="number" class="form-control input-lg" placeholder="forekomster" id="exitAfterValue" name="exitAfterValue">
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-4 col-md-4">
                                                <div class="form-check">
                                                    <input class="form-check-input" type="radio" name="exitType" id="exitWithinCheck" value="Exit Within">
                                                    <label class="form-check-label" for="exitWithinCheck">{{__('custom.exitWithin')}}:</label>
                                                </div>
                                            </div>
                                            <div class="col-lg-8 col-md-8 mb-4">
                                                <input type="date" class="form-control input-lg" id="exitWithinValue" name="exitWithinValue">
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">{{__('custom.close')}}</button>
                    <button type="submit" class="btn btn-primary addSavebtn">{{__('custom.addEvent')}}</button>
                    {{--                    <button type="button" class="btn btn-success">OK</button>--}}
                    {{--                    <button type="button" class="btn btn-success">Cancel</button>--}}
                    <button onclick="deleteRecord()" id="deleteEvent" data-id="" class="btn btn-danger deleteEvent d-none">{{__('custom.deleteEvent')}}</button>
                </div>
            </div>
        </div>
    </div>

    <form id="delete-form" method="POST" style="display:none">
        @method('DELETE')
        @csrf
        <button type="submit">Delete</button>
    </form>
    <!--end page wrapper -->
@endsection

@section("script")
        <script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.11.0/locales/nb.js'></script>
    {{--    <script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.10.2/main.min.js'></script>--}}

{{--    <script src='https://cdn.jsdelivr.net/npm/rrule@2.6.4/dist/es5/rrule.min.js'></script>--}}

    <!-- fullcalendar bundle -->
    <script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.10.1/main.min.js'></script>

    <!-- the rrule-to-fullcalendar connector. must go AFTER the rrule lib -->
{{--    <script src='https://cdn.jsdelivr.net/npm/@fullcalendar/rrule@5.5.0/main.global.min.js'></script>--}}
    {{--<script src="{{asset('assets/fullcalender/fullcalendar.js')}}"></script>--}}
    <script>

        // for coach vise events show
        $('#custom-coach-select').on('change', function (e) {
            var optionSelected = $("option:selected", this);
            var valueSelected = this.value;
            // console.log(valueSelected);
            location = '{{url('fullcalender')}}'+'/'+valueSelected;
            {{--location = '{{route('eventsByCondition')}}?'+valueSelected;--}}
        });
        // for coach vise events show

        function deleteRecord() {
            let confirmBox = confirm('Vil du virkelig slette?');
            let id = $("#deleteEvent").data('id');
            if (confirmBox) {
                let path = `{{ url('calender-event/${id}') }}`;
                $('#delete-form').attr('action', path);
                $('#delete-form').submit();
            }
        }
        // For all day check box start
        $(function () {
            $("#lastAllDay").click(function () {
                if ($(this).is(":checked")) {
                    $("#starttime").hide();
                    $("#endtime").hide();
                } else {
                    $("#starttime").show();
                    $("#endtime").show();
                }
            });
        });
        // For all day check box end

        // For Repeated Values Changes Drop Down
        $("#repeatedselect").change(function(){
            let repMainVal = $(this).val();
            if (repMainVal == 'daily') {
                $(".repDailyMainDiv").show();

                $(".repWeeklyMainDiv").hide();
                $(".repMonthlyMainDiv").hide();
                $(".repAnnualMainDiv").hide();

            }else if(repMainVal == 'weekly'){
                $(".repWeeklyMainDiv").show();

                $(".repDailyMainDiv").hide();
                $(".repMonthlyMainDiv").hide();
                $(".repAnnualMainDiv").hide();

            }else if(repMainVal == 'monthly'){
                $(".repMonthlyMainDiv").show();

                $(".repDailyMainDiv").hide();
                $(".repWeeklyMainDiv").hide();
                $(".repAnnualMainDiv").hide();

            }else if(repMainVal == 'annual'){
                $(".repAnnualMainDiv").show();

                $(".repDailyMainDiv").hide();
                $(".repWeeklyMainDiv").hide();
                $(".repMonthlyMainDiv").hide();
            }
        });
        // For Repeated Values Changes Drop Down

        // For Repeated check box start
        $(function () {
            $("#repeatedcheck").click(function () {
                if ($(this).is(":checked")) {
                    $("#repeatedMainDiv").show();
                } else {
                    $("#repeatedMainDiv").hide();
                }
            });
        });
        // For Repeated check box start

        // Code goes here
        $(".addSavebtn").click(function (e) {
            e.preventDefault();
            $('#addEventForm').submit();
        });
        // $(document).ready(function() {

        // page is now ready, initialize the calendar...

        function convertDateTime(str) {
            const d = new Date(str);
            let month = '' + (d.getMonth() + 1);
            let day = '' + d.getDate();
            let year = '' + d.getFullYear();
            if (month.length < 2) month = '0' + month;
            if (day.length < 2) day = '0' + day;
            let hour = '' + d.getHours();
            let minutes = '' + d.getMinutes();
            let seconds = '' + d.getSeconds();
            if (hour.length < 2) hour = '0' + hour;
            if (minutes.length < 2) minutes = '0' + minutes;
            if (seconds.length < 2) seconds = '0' + seconds;
            return [year, month, day].join('-') + ' ' + [hour, minutes, seconds].join(':');
        }

        function convertDate(str) {
            const d = new Date(str);
            let month = '' + (d.getMonth() + 1);
            let day = '' + d.getDate();
            let year = '' + d.getFullYear();
            if (month.length < 2) month = '0' + month;
            if (day.length < 2) day = '0' + day;
            return [year, month, day].join('-');
        }

        function convertTime(str) {
            const d = new Date(str);
            let hour = '' + d.getHours();
            let minutes = '' + d.getMinutes();
            let seconds = '' + d.getSeconds();
            if (hour.length < 2) hour = '0' + hour;
            if (minutes.length < 2) minutes = '0' + minutes;
            if (seconds.length < 2) seconds = '0' + seconds;
            return [hour, minutes, seconds].join(':');
        }

        // });

        document.addEventListener('DOMContentLoaded', function () {
            var calendarEl = document.getElementById('calendar');

            var calendar = new FullCalendar.Calendar(calendarEl, {
                navLinks: true,
                selectable: true,
                // dragabble: true,
                nowIndicator: true,
                // handleWindowResize: false,
                firstDay: 1,
                locale: '{{ app()->getLocale() == 'en' ? 'en' : 'nb'}}',

                initialView: 'timeGridWeek',

                headerToolbar: {
                    left: 'prev,next today,addEventButton',
                    center: 'title',
                    right: 'dayGridMonth,timeGridWeek,timeGridDay,timeGridThreeDay,listMonth'
                },
                buttonText: {
                    dayGridMonth: '{{__('custom.month')}}',
                    timeGridWeek: '{{__('custom.week')}}',
                    timeGridDay: '{{__('custom.day')}}',
                    listMonth: '{{__('custom.list')}}',
                    today: '{{__('custom.today')}}',
                },
                views: {
                    timeGridThreeDay: {
                        type: 'timeGrid',
                        duration: { days: 3 },
                        buttonText: '{{__('custom.day3')}}'
                    }
                },
                customButtons: {
                    addEventButton: {
                        text: '{{__('custom.addNewEvent')}}',
                        click: function() {

                            $('.deleteEvent').removeClass('d-block');
                            $('.deleteEvent').addClass('d-none');

                            $('#title').val('');
                            $('#coach').val('');

                            $('#addevent').modal('show');

                            // var dateStr = prompt('Enter a date in YYYY-MM-DD format');
                            // var date = new Date(dateStr + 'T00:00:00'); // will be in local time

                            // if (!isNaN(date.valueOf())) { // valid?
                            //     calendar.addEvent({
                            //         title: 'dynamic event',
                            //         start: date,
                            //         allDay: true
                            //     });
                            //     alert('Great. Now, update your database...');
                            // } else {
                            //     alert('Invalid date.');
                            // }
                        }
                    }
                },

                // select: function(start,end,view) {
                select: function(info) {
                    $('#modalTitle').text('{{__('custom.addEvent')}}');
                    $('.addSavebtn').html('{{__('custom.addEvent')}}');

                    $('#eventId').val('');
                    $('#title').val('');
                    $('#coach').val('');

                    $('.deleteEvent').removeClass('d-block');
                    $('.deleteEvent').addClass('d-none');

                    // alert('selected ' + info.start + ' to ' + info.end);
                    // console.log(info);
                    $('#startdate').val(convertDate(info.start));
                    $('#starttime').val(convertTime(info.start));

                    $('#enddate').val(convertDate(info.end));
                    $('#endtime').val(convertTime(info.end));

                    $('#addevent').modal('show');
                },
                eventClick: function(info) {
                    console.log(info)
                    // console.log(info.event.extendedProps.note)
                    // alert('clicked ' + info.dateStr);
                    $("#deleteEvent").attr("data-id",info.event.id);
                    $('#modalTitle').text('{{__('custom.editEvent')}}');
                    $('.addSavebtn').html('{{__('custom.editEvent')}}');

                    $('.deleteEvent').removeClass('d-none');
                    $('.deleteEvent').addClass('d-block');

                    $('#eventId').val(info.event.id);
                    $('#title').val(info.event.title);
                    $('#coach').val(info.event.extendedProps.coachName);

                    $('#startdate').val(convertDate(info.event.start));
                    $('#starttime').val(convertTime(info.event.start));

                    $('#enddate').val(convertDate(info.event.end));
                    $('#endtime').val(convertTime(info.event.end));

                    $('#label').val(info.event.extendedProps.label).change();
                    $('#showtime').val(info.event.extendedProps.showTimeAs).change();
                    $('#reminder').val(info.event.extendedProps.reminder).change();
                    $('#lastAllDay').prop('checked', info.event.allDay);


                    $('#addevent').modal('show');
                    // alert('Event: ' + info.event.title);
                    // alert('Coordinates: ' + info.jsEvent.pageX + ',' + info.jsEvent.pageY);
                    // alert('View: ' + info.view.type);
                    //
                    // // change the border color just for fun
                    // info.el.style.borderColor = 'red';
                },
                // select: function(info) {
                //     alert('selected ' + info.startStr + ' to ' + info.endStr);
                // },

                {{--events: '{{route('calender-event.index')}}',--}}
                events: '{{route('eventsByCondition.id',$eventsData)}}',

                // editable: true
            });

            calendar.render();
        });
    </script>
@endsection
