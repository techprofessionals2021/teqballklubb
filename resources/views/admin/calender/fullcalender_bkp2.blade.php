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
            <div class="card">
                <div class="card-body">
                    <div id='calendar'></div>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="addevent" tabindex="-1" aria-hidden="true">
        <div class="modal-dialog modal-xl modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Add Event</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                            aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form class="g-3" id="addEventForm" method="POST" action="#">
                        @csrf
                        <div class="row">
                            <div class="col-md-12 p-4 pb-0">
                                <div class="row">
                                    <div class="col-lg-2 col-md-2">
                                        <label for="subject" class="mt-1">Subject: </label>
                                    </div>
                                    <div class="col-lg-10 col-md-10 mb-4">
                                        <input type="text" class="form-control input-lg" id="subject" name="subject">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-6 col-md-12">
                                        <div class="form-check form-switch mb-4 p-0">
                                            <div class="row">
                                                <div class="col-lg-4 col-md-4">
                                                    <label class="form-check-label" for="lastAllDay">Lasts all day: </label>
                                                </div>
                                                <div class="col-lg-8 col-md-8">
                                                    <input class="form-check-input m-0" type="checkbox" id="lastAllDay" name="lastAllDay" checked>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-lg-4 col-md-4">
                                                <label for="startdate" class="mt-1 mr-2">Start Time:</label>
                                            </div>
                                            <div class="col-lg-8 col-md-8">
                                                <div class="input-group mb-4">
                                                    <input type="date" class="form-control input-lg" id="startdate" name="">
                                                    <input type="time" class="form-control input-lg" id="starttime" name="">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-4 col-md-4">
                                                <label for="enddate" class="mt-1 mr-2">End Time:</label>
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
                                                <label for="resource" class="mt-1 mr-2">Resource:</label>
                                            </div>
                                            <div class="col-lg-8 col-md-8 mb-4">
                                                <select class="form-control" id="resource" name="">
                                                    <option value="any">(Any)</option>
                                                    <option value="alpha_doboyou">Alpha Doboyou</option>
                                                    <option value="lasse_lassen">Lasse Lassen</option>
                                                </select>
                                            </div>
                                        </div>

                                    </div>
                                    <div class="col-lg-6 col-md-12">
                                        <div class="row">
                                            <div class="col-lg-4 col-md-4">
                                                <label for="coach" class="mt-1 mr-2">Coach:</label>
                                            </div>
                                            <div class="col-lg-8 col-md-8 mb-4">
                                                <input type="text" class="form-control input-lg" id="coach" name="coachName">
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-lg-4 col-md-4">
                                                <label for="label" class="mt-1 mr-2">Label:</label>
                                            </div>
                                            <div class="col-lg-8 col-md-8 mb-4">
                                                <select class="form-control" id="label" name="label">
                                                    <option value="screening">Screening</option>
                                                    <option value="group_training">Group training</option>
                                                    <option value="pt_time">PT Time</option>
                                                    <option value="ivs1">IVS1</option>
                                                    <option value="vacation">Vacation</option>
                                                    <option value="overall_training">Overall training</option>
                                                    <option value="travel">Travel</option>
                                                    <option value="preparations">Preparations</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-4 col-md-4">
                                                <label for="showtime" class="mt-1 mr-2">Show time as:</label>
                                            </div>
                                            <div class="col-lg-8 col-md-8 mb-4">
                                                <select class="form-control" id="showtime" name="showtime">
                                                    <option value="free">Free</option>
                                                    <option value="supposedly_busy">Supposedly busy</option>
                                                    <option value="busy">Busy</option>
                                                    <option value="out">Out</option>
                                                    <option value="works_elsewhere">Works elsewhere</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-4 col-md-4">
                                                <label for="reminder" class="mt-1 mr-2">Reminder:</label>
                                            </div>
                                            <div class="col-lg-8 col-md-8 mb-4">
                                                <select class="form-control" id="reminder" name="reminder">
                                                    <option value="no">No</option>
                                                    <option value="0min">0 minutes</option>
                                                    <option value="5min">5 minutes</option>
                                                    <option value="10min">10 minutes</option>
                                                    <option value="15min">15 minutes</option>
                                                    <option value="30min">30 minutes</option>
                                                    <option value="1hour">1 hour</option>
                                                    <option value="2hours">2 hours</option>
                                                    <option value="3hours">3 hours</option>
                                                    <option value="4hours">4 hours</option>
                                                    <option value="5hours">5 hours</option>
                                                    <option value="6hours">6 hours</option>
                                                    <option value="7hours">7 hours</option>
                                                    <option value="8hours">8 hours</option>
                                                    <option value="9hours">9 hours</option>
                                                    <option value="10hours">10 hours</option>
                                                    <option value="11hours">11 hours</option>
                                                    <option value="12hours">12 hours</option>
                                                    <option value="18hours">18 hours</option>
                                                    <option value="1day">1 day</option>
                                                    <option value="2days">2 days</option>
                                                    <option value="3days">3 days</option>
                                                    <option value="4days">4 days</option>
                                                    <option value="1week">1 week</option>
                                                    <option value="2weeks">2 weeks</option>
                                                </select>
                                            </div>
                                        </div>

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
                                            <label class="form-check-label" for="repeatedcheck">Repeated: </label>
                                        </div>
                                        <div class="col-lg-8 col-md-8">
                                            <input class="form-check-input m-0" type="checkbox" id="repeatedcheck" name="repeatedcheck" checked>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-12 col-md-12 p-4 pt-0">
                                <div class="row">
                                    <div class="col-lg-6 col-md-12">
                                        <div class="row">
                                            <div class="col-lg-4 col-md-4">
                                                <label for="repeatedselect" class="mt-1 mr-2">Repeated:</label>
                                            </div>
                                            <div class="col-lg-8 col-md-8 mb-4">
                                                <select class="form-control" id="repeatedselect" name="repeatedselect">
                                                    <option value="daily">Daily</option>
                                                    <option value="weekly">Weekly</option>
                                                    <option value="monthly">Monthly</option>
                                                    <option value="annual">Annual</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-4 col-md-4">
                                                <div class="form-check">
                                                    <input class="form-check-input" type="radio" name="each" id="each" value="each" checked>
                                                    <label class="form-check-label" for="each">Each</label>
                                                </div>
                                            </div>
                                            <div class="col-lg-8 col-md-8 mb-4">
                                                <input type="number" class="form-control input-lg" placeholder="1 dag(er)" id="eachDay" name="eachDay">
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-12 col-md-12">
                                                <div class="form-check">
                                                    <input class="form-check-input" type="radio" name="each" id="everyDayWeek" value="everyDayWeek">
                                                    <label class="form-check-label" for="everyDayWeek">Everyday of the week</label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-lg-6 col-md-12">
                                        <div class="row">
                                            <div class="col-lg-12 col-md-12 mb-4">
                                                <div class="form-check">
                                                    <input class="form-check-input" type="radio" name="exitType" id="noEndDate" value="No End Date" checked>
                                                    <label class="form-check-label" for="noEndDate">No end date</label>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-lg-4 col-md-4">
                                                <div class="form-check">
                                                    <input class="form-check-input" type="radio" name="exitType" id="exitAfterCheck" value="Exit After">
                                                    <label class="form-check-label" for="exitAfterCheck">Exit After:</label>
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
                                                    <label class="form-check-label" for="exitWithinCheck">Exit Within:</label>
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
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary addSavebtn">Save changes</button>
                    {{--                    <button type="button" class="btn btn-success">OK</button>--}}
                    {{--                    <button type="button" class="btn btn-success">Cancel</button>--}}
                    {{--                    <button type="button" class="btn btn-secondary">Delete</button>--}}
                </div>
            </div>
        </div>
    </div>
    <!--end page wrapper -->
@endsection

@section("script")
    {{--    <script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.10.2/main.min.js'></script>--}}

    <script src='https://cdn.jsdelivr.net/npm/rrule@2.6.4/dist/es5/rrule.min.js'></script>

    <!-- fullcalendar bundle -->
    <script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.10.1/main.min.js'></script>

    <!-- the rrule-to-fullcalendar connector. must go AFTER the rrule lib -->
    <script src='https://cdn.jsdelivr.net/npm/@fullcalendar/rrule@5.5.0/main.global.min.js'></script>
    {{--<script src="{{asset('assets/fullcalender/fullcalendar.js')}}"></script>--}}
    <script>
        document.addEventListener('DOMContentLoaded', function () {
            var calendarEl = document.getElementById('calendar');

            var calendar = new FullCalendar.Calendar(calendarEl, {
                navLinks: true,
                // selectable: true,
                // dragabble: true,
                nowIndicator: true,

                initialView: 'timeGridWeek',

                headerToolbar: {
                    left: 'prev,next today,addEventButton',
                    center: 'title',
                    right: 'dayGridMonth,timeGridWeek,timeGridDay,timeGridThreeDay,listMonth'
                },
                views: {
                    timeGridThreeDay: {
                        type: 'timeGrid',
                        duration: { days: 3 },
                        buttonText: '3 days'
                    }
                },
                customButtons: {
                    addEventButton: {
                        text: 'Add new event...',
                        click: function() {

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

                // dateClick: function(info) {
                //     alert('clicked ' + info.dateStr);
                // },
                // select: function(info) {
                //     alert('selected ' + info.startStr + ' to ' + info.endStr);
                // },
                events: [
                    {
                        title: 'All Day Event',
                        description: 'description for All Day Event',
                        start: '2022-04-01'
                    },
                    {
                        title: 'Long Event',
                        description: 'description for Event',
                        start: '2022-04-01',
                        end: '2022-04-04'
                    },
                    {
                        groupId: '999',
                        title: 'Repeating Event',
                        description: 'description for Event',
                        start: '2022-04-09T16:00:00'
                    },
                    {
                        groupId: '999',
                        title: 'Repeating Event',
                        description: 'description for Event',
                        start: '2022-04-01T16:00:00'
                    },
                    {
                        title: 'Conference',
                        description: 'description for Event',
                        start: '2022-04-11',
                        end: '2022-04-13'
                    },
                    {
                        title: 'Meeting',
                        description: 'description for Event',
                        start: '2022-04-12T10:30:00',
                        end: '2022-04-12T12:30:00'
                    },
                    {
                        title: 'Lunch',
                        description: 'description for Event',
                        start: '2022-04-02T12:00:00'
                    },
                    {
                        title: 'Meeting',
                        description: 'description for Event',
                        start: '2022-04-02T14:30:00'
                    },
                    {
                        title: 'Birthday Party',
                        description: 'description for Event',
                        start: '2022-04-01T07:00:00'
                    },
                    {
                        title: 'Click for Google',
                        description: 'description for Event',
                        // url: 'http://google.com/',
                        start: '2022-04-01'
                    },
                    {
                        title: 'test rrule event',
                        rrule: {
                            freq:'yearly',
                            // dtstart: new Date(Date.UTC(2022, 3, 6, 11, 21, 1)),
                            // until: new Date(Date.UTC(2022, 5, 13, 11, 22, 0)),
                            dtstart: '2022-04-06T06:00:00',
                            until: '2022-04-07',
                            // count: 30,
                            // interval: 10,
                            // byweekday: 'mo'
                        },
                        // duration: '04:00',
                    }
                ],
                // editable: true
            });

            calendar.render();
        });
    </script>
    {{--    <script>--}}
    {{--        // Code goes here--}}
    {{--        $(document).ready(function () {--}}

    {{--            // page is now ready, initialize the calendar...--}}

    {{--            var calendar = $('#calendar').fullCalendar({--}}
    {{--                // put your options and callbacks here--}}
    {{--                header: {--}}
    {{--                    left: 'prev,next today',--}}
    {{--                    center: 'title',--}}
    {{--                    right: 'year,month,basicWeek,basicDay'--}}

    {{--                },--}}
    {{--                timezone: 'local',--}}
    {{--                height: "auto",--}}
    {{--                selectable: true,--}}
    {{--                dragabble: true,--}}
    {{--                defaultView: 'year',--}}
    {{--                yearColumns: 3,--}}

    {{--                durationEditable: true,--}}
    {{--                bootstrap: false,--}}

    {{--                events: [{--}}
    {{--                    title: "Some event",--}}
    {{--                    start: new Date('2017-1-10'),--}}
    {{--                    end: new Date('2017-1-20'),--}}
    {{--                    id: 1,--}}
    {{--                    allDay: true,--}}
    {{--                    editable: true,--}}
    {{--                    eventDurationEditable: true,--}}
    {{--                },],--}}
    {{--                select: function (start, end, allDay) {--}}
    {{--                    var title = prompt('Event Title:');--}}
    {{--                    if (title) {--}}
    {{--                        var event = {--}}
    {{--                            title: title,--}}
    {{--                            start: start.clone(),--}}
    {{--                            end: end.clone(),--}}
    {{--                            allDay: true,--}}
    {{--                            editable: true,--}}
    {{--                            eventDurationEditable: true,--}}
    {{--                            eventStartEditable: true,--}}
    {{--                            color: 'red',--}}
    {{--                        };--}}


    {{--                        calendar.fullCalendar('renderEvent', event, true);--}}
    {{--                    }--}}
    {{--                },--}}
    {{--            })--}}
    {{--        });--}}
    {{--    </script>--}}
@endsection
