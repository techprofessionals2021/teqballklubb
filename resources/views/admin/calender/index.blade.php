<!DOCTYPE html>
<html lang='en'>
<head>
    <meta charset='utf-8' />

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <link rel="stylesheet" href="//code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css">

    <link href="{{asset('css/fullcalendar.css')}}" rel="stylesheet">

    <style>
        html, body {
            margin: 0;
            padding: 0;
            font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
            font-size: 14px;
        }

        #calendar {
            max-width: 1100px;
            margin: 40px auto;
        }
    </style>
</head>
<body>
<div id='calendar'></div>

<div class="modal fade" id="addevent" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog modal-xl modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Add Event</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal"
                        aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form class="g-3" id="addEventForm" method="POST" action="{{route('calender-event.store')}}">
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
                                                <input type="date" class="form-control input-lg" id="startdate" value="" name="startdate">
                                                <input type="time" class="form-control input-lg" id="starttime" value="" name="starttime">
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
                <button type="submit" class="btn btn-primary addSavebtn">Add Event</button>
                {{--                    <button type="button" class="btn btn-success">OK</button>--}}
                {{--                    <button type="button" class="btn btn-success">Cancel</button>--}}
                {{--                    <button type="button" class="btn btn-secondary">Delete</button>--}}
            </div>
        </div>
    </div>
</div>

<script src="{{asset('assets/js/jquery.min.js')}}"></script>

<script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>

<script src="//cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.6/moment.js"></script>
<!-- Bootstrap JS -->
<script src="{{asset('assets/js/bootstrap.bundle.min.js')}}"></script>

<!--plugins-->
<script src="{{asset('js/fullcalendar.js')}}"></script>

<script>
    // Code goes here
    $(".addSavebtn").click(function (e) {
        e.preventDefault();
        $('#addEventForm').submit();
    });
    $(document).ready(function() {

        // page is now ready, initialize the calendar...

        function convertDateTime(str){
            const d = new Date(str);
            let month =  ''  + (d.getMonth() + 1);
            let day =  ''  + d.getDate();
            let year=  ''  + d.getFullYear();
            if (month.length < 2 ) month = '0' + month;
            if (day .length < 2 ) day = '0' + day ;
            let hour=  ''  + d.getUTCHours();
            let minutes=  ''  + d.getUTCMinutes();
            let seconds=  ''  + d.getUTCSeconds();
            if (hour.length < 2 ) hour= '0' + hour;
            if (minutes.length < 2 ) minutes= '0' + minutes;
            if (seconds.length < 2 ) seconds= '0' + seconds;
            return [year,month,day].join('-')+' '+[hour,minutes,seconds].join(':');
        }
        function convertDate(str){
            const d = new Date(str);
            let month =  ''  + (d.getMonth() + 1);
            let day =  ''  + d.getDate();
            let year=  ''  + d.getFullYear();
            if (month.length < 2 ) month = '0' + month;
            if (day .length < 2 ) day = '0' + day ;
            return [year,month,day].join('-');
        }
        function convertTime(str){
            const d = new Date(str);
            let hour=  ''  + d.getUTCHours();
            let minutes=  ''  + d.getUTCMinutes();
            let seconds=  ''  + d.getUTCSeconds();
            if (hour.length < 2 ) hour= '0' + hour;
            if (minutes.length < 2 ) minutes= '0' + minutes;
            if (seconds.length < 2 ) seconds= '0' + seconds;
            return [hour,minutes,seconds].join(':');
        }

        var calendar = $('#calendar').fullCalendar({
            // put your options and callbacks here
            header: {
                left: 'prev,next today',
                center: 'title',
                right: 'year,month,basicWeek,basicDay,listMonth',
            },
            initialView: 'timeGridWeek',
            navLinks: true,
            // dragabble: true,
            nowIndicator: true,
            timezone: 'local',
            height: 'auto',
            selectable: true,
            yearColumns: 3,

            durationEditable: true,
            bootstrap: true,

            events: '{{route('calender-event.index')}}',
            select: function(start,end,view) {

                $('#startdate').val(convertDate(start));
                $('#starttime').val(convertTime(start));

                $('#enddate').val(convertDate(end));
                $('#endtime').val(convertTime(end));

                $('#addevent').modal('show');
            //     var title = prompt('Event Title:');
            //     if (title) {
            //         var event = {
            //             title: title,
            //             start: start.clone(),
            //             end: end.clone(),
            //             allDay: true,
            //             editable: true,
            //             eventDurationEditable: true,
            //             eventStartEditable: true,
            //             color: 'red',
            //         };
            //
            //
            //         calendar.fullCalendar('renderEvent', event, true);
            //     }
            },
        })
    });
</script>

</body>
</html>
