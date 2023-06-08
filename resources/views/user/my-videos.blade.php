@extends('user.app')
@section('content')
    <div class="row m-0" style="padding: 5px">
        <div class="col-lg-2"></div>
        <div class="col-lg-8">
            <div class="row">
                <div class="col-lg-12 text-center pb-2">
                    <div class="page-title">
                        @if(isset($programInfo))
                            <h3>Mine øvelser for {{ucwords($programInfo->name)}}</h3>
                        @else
                            <h3>Ingen øvelse funnet!</h3>
                        @endif
                    </div>

                        <div class="dropdown">
                            <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                {{ucwords($programInfo->name)}}
                            </button>
                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                    @if(count($userPrograms) != 0)
                                        @foreach($userPrograms as $item)
                                            <a class="dropdown-item" href="{{route('myVideos.id.type',['id' => $item->id ,'type' => 'setup' ])}}">{{$item->name}}</a>
                                        @endforeach
                                    @endif
                                    @if(count($userSetupFixedPrograms) != 0)
                                        @foreach($userSetupFixedPrograms as $item)
                                            <a class="dropdown-item" href="{{route('myVideos.id.type',['id' => $item->id ,'type' => 'subs' ])}}">{{$item->name}}</a>
                                        @endforeach
                                    @endif
                            </div>
                        </div>
                </div>
            </div>
        </div>
        <div class="col-lg-2"></div>

        <div class="col-lg-12">
            <div class="row">
{{--                <div class="col-lg-1"></div>--}}
                @if(isset($programInfo))
                    @foreach($programInfo->setupProgramsByRegProgram->sortBy('sort') as $item)
                        <div class="col-lg-6 m-auto main-video-section">
                            <div class="embed-responsive embed-responsive-16by9">
                                <video class="" poster="{{asset('assets/images/video-thumbnail.jpg')}}"
                                       src="@if(isset($item->programWithVideo)) {{$item->programWithVideo->exVideo->video_hd}} @endif"
                                       id="" width="350" controls="" type="video/mp4">
                                </video>
                            </div>
                            <div class="row details pt-3 pb-3">
                                <div class="col">
{{--                                    <span><strong>Øvelsesnummer: </strong></span> <span>{{$item->sort ?? 0}}</span>--}}
                                    <span><strong>Øvelsesnummer: </strong></span> <span>{{$loop->iteration}}</span>
                                </div>
                                <div class="col">
                                    <span><strong>Sett: </strong></span> <span>{{$item->set ?? 0}}</span>
                                </div>
                                <div class="col">
                                    <span><strong>Rep: </strong></span> <span>{{$item->rep ?? 0}}</span>
                                </div>
                                <div class="col">
                                    <span><strong>Varighet/Tid (min:sek): </strong></span> <span>{{$item->duration ?? 0}}</span>
                                </div>
                                <div class="col">
                                    <span><strong>Pause (min:sek): </strong></span> <span>{{$item->break ?? 0}}</span>
                                </div>
                                <div class="col">
                                    <span><strong>Distanse opp/frem (m): </strong></span> <span>{{$item->distance ?? 0}}</span>
                                </div>
                                <div class="col">
                                    <span><strong>Puls (Slag pr. min.): </strong></span> <span>{{$item->puls ?? 0}}</span>
                                </div>
                            </div>
                            <div class="button">
                                <button type="button" class="btn btn-primary exerciseProgressRecord" onclick="fetchExerciseProgressRecord({{ $item->id }})" data-id="{{$item->id}}" data-bs-toggle="modal" data-bs-target="#progesjonModal">Progresjon</button>
                                <button type="button" class="btn btn-primary registerExerciseProgressRecord" onclick="registerExerciseProgressRecord({{ $item->id }})" data-id="{{$item->id}}" data-bs-toggle="modal" data-bs-target="#registrereProgesjonModal">Registrer progresjon</button>
                                <p class="text" style="font-size: 14px;"> {{$item->description ?? ''}}</p>
                            </div>
                        </div>
                    @endforeach
                @else
                    <div class="col-lg-12">
                        <h3 class="text-center">Ingen treningsvideo funnet!</h3>
                    </div>
                @endif
{{--                <div class="col-lg-1"></div>--}}
                <div class="modal fade" id="progesjonModal" tabindex="-1" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title">Progresjon denne øvelsen</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <table class="table table-bordered mb-0">
                                    <thead>
                                    <tr>
                                        <th scope="col">Sett</th>
                                        <th scope="col">Rep</th>
                                        <th scope="col">Kg</th>
                                        <th scope="col">Varighet/Tid (min:sek)</th>
                                        <th scope="col">Pause</th>
                                        <th scope="col">Distanse opp/frem (m)</th>
                                        <th scope="col">Puls</th>
                                        <th scope="col">Bevegelighet (Grader)</th>
                                        <th scope="col">Dato</th>
                                    </tr>
                                    </thead>
                                    <tbody class="fetchExerciseData">
                                    <tr>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Lukk</button>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="modal fade" id="registrereProgesjonModal" tabindex="-1" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title">Registrer progresjon for trening</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
{{--                                <form class="row g-3" id="registerProgform" method="POST" action="{{route('submitExerciseProgressRecord')}}">--}}
                                <form class="row g-3" id="registerProgform">
                                    @csrf
                                    <input type="hidden" name="setupprogid" class="form-control" id="setupprogid"
                                           value="">
                                    <div class="col-md-4">
                                        <input type="number" name="sett" class="form-control" id="set"
                                               value="" min="0" placeholder="Sett">
                                    </div>
                                    <div class="col-md-4">
                                        <input type="number" name="rep" class="form-control" id="rep"
                                               value="" min="0" placeholder="Rep">
                                    </div>
                                    <div class="col-md-4">
                                        <input type="number" name="weight" class="form-control" id="weight"
                                               value="" min="0" placeholder="Kg">
                                    </div>

                                    <div class="col-md-4">
                                        <input type="text" name="duration" class="form-control" id="duration"
                                               data-inputmask="'mask': '99:99'"
                                               value="" placeholder="Varighet/Tid (min:sek)">
                                    </div>
                                    <div class="col-md-4">
                                        <input type="text" name="break" class="form-control" id="break"
                                               data-inputmask="'mask': '99:99'"
                                               value="" placeholder="Pause (min:sek)">
                                    </div>
                                    <div class="col-md-4">
                                        <input type="number" name="distance" class="form-control" id="distance"
                                               value="" min="0" placeholder="Distanse opp/frem (m)">
                                    </div>
                                    <div class="col-md-4">
                                        <input type="number" name="puls" class="form-control" id="puls"
                                               value="" min="0" placeholder="Puls (slag pr.min)">
                                    </div>
                                    <div class="col-md-4">
                                        <input type="number" name="bevegelighet" class="form-control" id="bevegelighet"
                                               value="" min="0" placeholder="Bevegelighet (Grader)">
                                    </div>
                                </form>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Lukk</button>
                                <button type="submit" class="btn btn-primary registerProgformbtn" onclick="submitRegisterExerciseProgressRecord()" data-dismiss="modal" >Registrer progresjon</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
@section("script")
    <script src="{{asset('assets/js/jquery.min.js')}}"></script>
    <script src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/3/jquery.inputmask.bundle.js"></script>
    <script type="text/javascript">
        $(":input").inputmask();
        function fetchExerciseProgressRecord(id) {
            // var id =  $("#exerciseProgressRecord").data("id");
            // console.log(id);
            $.ajax({
                type: "post",
                dataType: "json",
                url: "{{route('fetchExerciseProgressRecordById')}}",
                data: {setup_program_id: id, _token: "{{csrf_token()}}"},
                success: function (response) {
                    console.log(response);
                    if (response.status == 0) {
                        // toastr.error("No data found");
                        // $(".fetchExerciseData").html("");
                        $(".fetchExerciseData").html(response.body);
                    } else {
                        $(".fetchExerciseData").html(response.body);
                    }
                },
            });
        }
        function registerExerciseProgressRecord(id) {
            $("#setupprogid").val(id);
        }
        // $(".registerProgformbtn").click(function (e) {
        //     e.preventDefault();
        //     $('#registerProgform').submit();
        // });
        function submitRegisterExerciseProgressRecord() {
            var setupprogid = $("#setupprogid").val();
            var sett = $("#set").val();
            var rep = $("#rep").val();
            var weight = $("#weight").val();
            var duration = $("#duration").val();
            var dbreak = $("#break").val();
            var distance = $("#distance").val();
            var puls = $("#puls").val();
            var bevegelighet = $("#bevegelighet").val();
            $.ajax({
                type: "post",
                dataType: "json",
                url: "{{route('submitExerciseProgressRecord')}}",
                data: {
                    setupprogid: setupprogid,
                    sett: sett,rep: rep,weight: weight, duration: duration,
                    break: dbreak, distance: distance, puls: puls, bevegelighet: bevegelighet, _token: "{{csrf_token()}}"},
                success: function (response) {
                    if (response.status) {
                        $("#set").val('')
                        $("#rep").val('')
                        $("#weight").val('')
                        $("#duration").val('')
                        $("#break").val('')
                        $("#distance").val('')
                        $("#puls").val('')
                        $("#bevegelighet").val('')
                        $("#registrereProgesjonModal").modal('hide');
                    } else {
                        console.log('no')
                    }
                },
            });
            // $('#registerProgform').submit();
        }
    </script>
@endsection

