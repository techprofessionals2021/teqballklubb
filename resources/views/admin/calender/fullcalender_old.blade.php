@extends("layouts.app")

@section("style")

{{--    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">--}}

    <link rel="stylesheet" href="//code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css">

    <link href="{{asset('css/fullcalendar.css')}}" rel="stylesheet">
    <style>
        .weeksAtDays label {
            margin: 0 18px;
        }
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
                    <h5 id="modalTitle" class="modal-title">Add Event</h5>
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
                                        <label for="title" class="mt-1">Subject: </label>
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
                                                    <label class="form-check-label" for="lastAllDay">Lasts all day: </label>
                                                </div>
                                                <div class="col-lg-8 col-md-8">
                                                    <input class="form-check-input m-0" type="checkbox" id="lastAllDay" name="lastAllDay">
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
                                            <div class="col-lg-12 col-md-12 repDailyMainDiv">
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

                                            <div class="col-lg-12 col-md-12 repWeeklyMainDiv" style="display: none">
                                                <div class="row">
                                                    <div class="col-lg-12 col-md-12">
                                                        <div class="row">
                                                            <div class="col-lg-4 col-md-4">
                                                                <label class="form-check-label" for="repeachweek">Each : </label>
                                                            </div>
                                                            <div class="col-lg-8 col-md-8 mb-4">
                                                                <div class="form-check p-0">
                                                                    <input type="number" class="form-control" min="1"
                                                                           max="99" placeholder="1" id="repeachweek"
                                                                           name="eachweek">
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="row weeksAtDays">
                                                            <div class="col-lg-4 col-md-4">
                                                                <label class="form-check-label">week (s) at : </label>
                                                            </div>
                                                            <div class="col-lg-8 col-md-8 mb-4">

                                                                    <input class="form-check-input" type="checkbox" name="weeksAt" id="mon" value="mon">
                                                                    <label class="form-check-label" for="mon">Mon</label>

                                                                    <input class="form-check-input" type="checkbox" name="weeksAt" id="tue" value="tue">
                                                                    <label class="form-check-label" for="tue">Tue</label>

                                                                    <input class="form-check-input" type="checkbox" name="weeksAt" id="wed" value="wed">
                                                                    <label class="form-check-label" for="wed">Wed</label>

                                                                    <input class="form-check-input" type="checkbox" name="weeksAt" id="thu" value="thu">
                                                                    <label class="form-check-label" for="thu">Thu</label>

                                                                    <input class="form-check-input" type="checkbox" name="weeksAt" id="fri" value="fri">
                                                                    <label class="form-check-label" for="fri">Fri</label>

                                                                    <input class="form-check-input" type="checkbox" name="weeksAt" id="sat" value="sat">
                                                                    <label class="form-check-label" for="sat">Sat</label>

                                                                    <input class="form-check-input" type="checkbox" name="weeksAt" id="sun" value="sun">
                                                                    <label class="form-check-label" for="sun">Sun</label>
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
                                                                <label class="form-check-label" for="monthlyEachDay">Day : </label>
                                                            </div>
                                                            <div class="col-lg-8 col-md-8 mb-4">
                                                                <div class="form-check p-0 mb-3">
                                                                    <input type="number" class="form-control" min="1"
                                                                           max="31" placeholder="1" id="repEachMonthDay"
                                                                           name="repEachMonth">
                                                                </div>

                                                                <label class="form-check-label" for="repEachMonth">For Each : </label>
                                                                <input type="number" class="form-control d-inline-block w-75" min="1"
                                                                       max="99" placeholder="1 måned(er)" id="repEachMonth"
                                                                       name="repEachMonth">
                                                            </div>
                                                        </div>

                                                        <div class="row">
                                                            <div class="col-lg-4 col-md-4">
                                                                <input class="form-check-input" type="radio" name="monthlyEachDayOrTo" id="monthlyDayTo" value="monthlyDayTo" >
                                                                <label class="form-check-label" for="monthlyDayTo">It : </label>
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


                                                                <label class="form-check-label" for="repEachMonth">For Each : </label>
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
                                                                <label class="form-check-label" for="yearlyEacOrTo">Each : </label>
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
                                                                <label class="form-check-label" for="yearlyDayTo">It : </label>
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


                                                                <label class="form-check-label" for="repEachMonth">of : </label>
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
                    <button onclick="deleteRecord()" id="deleteEvent" data-id="" class="btn btn-danger deleteEvent d-none">Delete Event</button>
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
    <script src="{{asset('assets/js/jquery.min.js')}}"></script>

    <script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>

    <script src="//cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.6/moment.js"></script>
    <!-- Bootstrap JS -->
    <script src="{{asset('assets/js/bootstrap.bundle.min.js')}}"></script>

    <!--plugins-->
    <script src="{{asset('js/fullcalendar.js')}}"></script>

    <script>
        function deleteRecord() {
            let confirmBox = confirm('Are You Really Want To Delete!');
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
           console.log(repMainVal);
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
                    left: 'prev,next,today,addEventButton',
                    center: 'title',
                    right: 'year,month,basicWeek,basicDay,listMonth',
                },
                customButtons: {
                    addEventButton: {
                        text: 'Add new event...',
                        click: function() {
                            $('.deleteEvent').removeClass('d-block');
                            $('.deleteEvent').addClass('d-none');
                            $('#addevent').modal('show');
                        }
                    }
                },
                eventClick: function(info) {
                    // $("#deleteEvent").data("id",info.id);
                    $("#deleteEvent").attr("data-id",info.id);
                    $('#modalTitle').text('Edit Event');
                    $('.addSavebtn').html('Edit Event');

                    $('.deleteEvent').removeClass('d-none');
                    $('.deleteEvent').addClass('d-block');



                    $('#eventId').val(info.id);
                    $('#title').val(info.title);

                    $('#startdate').val(convertDate(info.start));
                    $('#starttime').val(convertTime(info.start));

                    $('#enddate').val(convertDate(info.end));
                    $('#endtime').val(convertTime(info.end));



                    $('#addevent').modal('show');
                    // alert('Event: ' + info.event.title);
                    // alert('Coordinates: ' + info.jsEvent.pageX + ',' + info.jsEvent.pageY);
                    // alert('View: ' + info.view.type);
                    //
                    // // change the border color just for fun
                    // info.el.style.borderColor = 'red';
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

                    $('#modalTitle').text('Add Event');
                    $('.addSavebtn').html('Add Event');

                    $('#eventId').val('');
                    $('#title').val('');

                    $('.deleteEvent').removeClass('d-block');
                    $('.deleteEvent').addClass('d-none');


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
@endsection
