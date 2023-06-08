@extends("layouts.app")

@section("style")
    <link href="{{asset('assets/plugins/datatable/css/dataTables.bootstrap5.min.css')}}" rel="stylesheet"/>
    <style>
        .dt-buttons.btn-group {
            display: none;
        }
    </style>
@endsection

@section("wrapper")
    <!--start page wrapper -->
    <div class="page-wrapper">
        @include("layouts.alert_message")
        <div class="page-content">
            <!--breadcrumb-->
            <div class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">
                <div class="breadcrumb-title pe-3">{{__('custom.anthropometric')}}</div>
                <div class="ps-3">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb mb-0 p-0">
                            <li class="breadcrumb-item"><a href="{{route('fullcalender.id','all')}}"><i class="bx bx-home-alt"></i></a>
                            </li>
                            <li class="breadcrumb-item active"
                                aria-current="page">Liste over antropometrisk data</li>
                        </ol>
                    </nav>
                </div>
                <div class="ms-auto">
                    <div class="btn-group">
                        <a href="{{route('anthropometric.create',['user_id'=>$userInfo->id ])}}" class="btn btn-primary">{{__('custom.add')}}</a>
                    </div>
                </div>
            </div>
            <!--end breadcrumb-->
            <h6 class="mb-0 text-uppercase">{{$userInfo->name}}</h6>
            <hr/>
            <div class="card">
                <div class="card-body">
                    <div class="table-responsive">
                        <table id="example2" class="table table-striped table-bordered">
                            <thead>
                            <tr>
                                <th>{{__('custom.status')}}</th>
                                <th>{{__('custom.fpNr')}}</th>
                                <th>{{__('custom.date')}}</th>
                                <th>{{__('custom.age')}}</th>
                                <th>{{__('custom.height')}} (cm)</th>
                                <th>{{__('custom.weight')}} (kg)</th>
                                <th>{{__('custom.bmi')}}</th>
                                <th>{{__('custom.profession')}}</th>
                                <th>{{__('custom.motivation')}}</th>
                                <th>% {{__('custom.akt_scale')}}</th>
                                <th>{{__('custom.damage_c')}}</th>
                                <th>{{__('custom.damage_nc')}}</th>
                                <th>{{__('custom.leg_length')}} (Cm)</th>
                                <th>{{__('custom.shoe_size')}} (Cm)</th>
                                <th>{{__('custom.foot_size')}}</th>
                                <th>% {{__('custom.oppm')}}</th>
                                {{--                                <th>{{__('custom.group')}}</th>--}}
{{--                                <th>{{__('custom.week_ant')}}</th>--}}
{{--                                <th>{{__('custom.ant_train')}}</th>--}}
{{--                                <th>% {{__('custom.vurdBorg')}}</th>
                                <th>% {{__('custom.vurdFys')}}</th>
                                <th>% {{__('custom.jobs')}}</th>
                                <th>% {{__('custom.r_reported')}}</th>
                                <th>% {{__('custom.internship')}}</th>--}}
                                <th>{{__('custom.position')}}</th>
                                <th>{{__('custom.fat')}} %</th>
{{--                                <th>{{__('custom.s_dribble_right')}}</th>--}}
{{--                                <th>{{__('custom.s_dribble_left')}}</th>--}}
                                <th>{{__('custom.action')}}</th>

                            </tr>
                            <tr>

                                <th>{{__('custom.status')}}</th>
                                <th>{{__('custom.fpNr')}}</th>
                                <th>{{__('custom.date')}}</th>
                                <th>{{__('custom.age')}}</th>
                                <th>{{__('custom.height')}} (cm)</th>
                                <th>{{__('custom.weight')}} (kg)</th>
                                <th>{{__('custom.bmi')}}</th>
                                <th>{{__('custom.profession')}}</th>
                                <th>{{__('custom.motivation')}}</th>
                                <th>% {{__('custom.akt_scale')}}</th>
                                <th>{{__('custom.damage_c')}}</th>
                                <th>{{__('custom.damage_nc')}}</th>
                                <th>% {{__('custom.leg_length')}}</th>
                                <th>% {{__('custom.shoe_size')}}</th>
                                <th>% {{__('custom.foot_size')}}</th>
                                <th>% {{__('custom.oppm')}}</th>
                                {{--                                <th>{{__('custom.group')}}</th>--}}
{{--                                <th>{{__('custom.week_ant')}}</th>--}}
{{--                                <th>{{__('custom.ant_train')}}</th>--}}
{{--                                <th>% {{__('custom.vurdBorg')}}</th>
                                <th>% {{__('custom.vurdFys')}}</th>
                                <th>% {{__('custom.jobs')}}</th>
                                <th>% {{__('custom.r_reported')}}</th>
                                <th>% {{__('custom.internship')}}</th>--}}
                                <th>% {{__('custom.position')}}</th>
                                <th>{{__('custom.fat')}} %</th>
{{--                                <th>{{__('custom.s_dribble_right')}}</th>--}}
{{--                                <th>{{__('custom.s_dribble_left')}}</th>--}}
                                <th class="for-dnone">{{__('custom.action')}}</th>


                            </tr>
                            </thead>
                            <tbody>
                            @foreach($anthropometrics as $item)
                                <tr>

                                    <td>{{strtoupper($item->status)}}</td>
                                    <td>{{$item->practitioner->id}}</td>
                                    <td>{{$item->date}}</td>
                                    <td>{{$item->age}}</td>
                                    <td>{{$item->height}}</td>
                                    <td>{{$item->weight}}</td>
                                    <td>{{$item->bmi}}</td>
                                    <td>{{$item->practitioner->profession->name ?? '---'}}</td>
                                    <td>{{$item->motivation}}</td>
                                    <td>{{$item->akt_scale}}</td>
                                    <td>{{$item->damage_c}}</td>
                                    <td>{{$item->damage_nc}}</td>
                                    <td>{{$item->leg_length}}</td>
                                    <td>{{$item->shoe_size}}</td>
                                    <td>{{$item->foot_size}}</td>
                                    <td>{{$item->note}}</td>
                                    {{--                                    <td>{{$item->practitioner->group->name}}</td>--}}
{{--                                    <td>{{$item->week_ant}}</td>
                                    <td>{{$item->ant_train}}</td>
                                    <td>{{$item->vurdBorg}}</td>
                                    <td>{{$item->VurdFys}}</td>
                                    <td>{{$item->jobs}}</td>
                                    <td>{{$item->r_reported}}</td>
                                    <td>{{$item->internship}}</td>--}}
                                    <td>{{$item->position}}</td>
                                    <td>{{$item->fat}}</td>
{{--                                    <td>{{$item->s_dribble_right}}</td>--}}
{{--                                    <td>{{$item->s_dribble_left}}</td>--}}
                                    {{-- <td>{{$item->vurdBorg}}</td>
                                    <td>{{$item->VurdFys}}</td>
                                    <td>{{$item->jobs}}</td>
                                    <td>{{$item->r_reported}}</td>
                                    <td>{{$item->internship}}</td> --}}
                                    {{--                                        <td>{{date('d-M-Y' , strtotime($item->created_at))}}</td>--}}
                                    <td>
                                        <a href="{{route('anthropometric.edit',['user_id'=>$userInfo->id,'anthropometric' => $item->id ])}}" class="btn btn-info text-white">{{__('custom.edit')}}</a>
                                        <a href="#delete" onclick="deleteRecord({{ $item->id }})" class="btn btn-danger">{{__('custom.delete')}}</a>
                                    </td>

                                </tr>
                            @endforeach
                            </tbody>
                        </table>
                        <form id="delete-form" method="POST" style="display:none">
                            @method('DELETE')
                            @csrf
                            <button type="submit">Delete</button>
                        </form>
                    </div>
                </div>
            </div>
            <hr/>
            <h6 class="mb-3">AVG = Average, STDEV = Standard Deviation</h6>
            <div class="card">
                <div class="card-body">
                    <div class="table-responsive">
                        <table id="example3" class="table table-striped table-bordered">
                            <thead>
                            <tr>
                                <th>{{__('custom.status')}}</th>
                                <th>{{__('custom.height')}} (cm)</th>
                                <th>{{__('custom.weight')}} (kg)</th>
                                <th>{{__('custom.age')}}</th>
                                <th>{{__('custom.bmi')}}</th>
                                <th>{{__('custom.motivation')}}</th>
                                <th>% {{__('custom.akt_scale')}}</th>
                                <th>{{__('custom.damage_c')}}</th>
                                <th>{{__('custom.damage_nc')}}</th>
                                <th>{{__('custom.leg_length')}} (Cm)</th>
                                <th>{{__('custom.shoe_size')}} (Cm)</th>
                                <th>{{__('custom.foot_size')}}</th>
                                <th>% {{__('custom.oppm')}}</th>
                                <th>{{__('custom.fat')}} %</th>
                            </tr>
                            <tr>
                                <th>{{__('custom.status')}}</th>
                                <th>{{__('custom.height')}} (cm)</th>
                                <th>{{__('custom.weight')}} (kg)</th>
                                <th>{{__('custom.age')}}</th>
                                <th>{{__('custom.bmi')}}</th>
                                <th>{{__('custom.motivation')}}</th>
                                <th>% {{__('custom.akt_scale')}}</th>
                                <th>{{__('custom.damage_c')}}</th>
                                <th>{{__('custom.damage_nc')}}</th>
                                <th>% {{__('custom.leg_length')}}</th>
                                <th>% {{__('custom.shoe_size')}}</th>
                                <th>% {{__('custom.foot_size')}}</th>
                                <th>% {{__('custom.oppm')}}</th>
                                <th>{{__('custom.fat')}} %</th>
                            </tr>
                            </thead>
                            <tbody>
{{--                            For Avg-Pre--}}
                                <tr>
                                    <td class="text-center">AVG-PRE</td>
                                    @foreach($anthroCols as $tdValue)
                                        <td>{{number_format($avgAnthroPre->avg([$tdValue]), 2, '.', '') ?? ''}}</td>
                                    @endforeach
                                </tr>
{{--                            For Avg-Pre--}}

{{--                            For Avg-Post--}}
                                <tr>
                                    <td class="text-center">AVG-POST</td>
                                    @foreach($anthroCols as $tdValue)
                                        <td>{{number_format($avgAnthroPost->avg([$tdValue]), 2, '.', '') ?? ''}}</td>
                                    @endforeach
                                </tr>
{{--                            For Avg---}}

{{--                            For Stdev-Pre--}}
                                <tr>
                                    <td class="text-center">STDEV-PRE ±</td>
                                    @foreach($stdevAnthroPre as $item)
                                        <td>{{$item ?? '---'}}</td>
                                    @endforeach
                                </tr>
{{--                            For Stdev-Pre---}}

{{--                            For Stdev-Pre--}}
                                <tr>
                                    <td class="text-center">STDEV-POST ±</td>
                                    @foreach($stdevAnthroPost as $item)
                                        <td>{{$item ?? '---'}}</td>
                                    @endforeach
                                </tr>
{{--                            For Stdev-Pre---}}
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--end page wrapper -->
@endsection

@section("script")
    <script src="{{asset('assets/plugins/datatable/js/jquery.dataTables.min.js')}}"></script>
    <script src="{{asset('assets/plugins/datatable/js/dataTables.bootstrap5.min.js')}}"></script>
    <script>
        function deleteRecord(id) {
            let confirmBox = confirm('Vil du virkelig slette?');
            if (confirmBox) {
                let path = `{{ url('anthropometric/${id}') }}`;
                $('#delete-form').attr('action', path);
                $('#delete-form').submit();
            }
        }
        $(document).ready(function () {
            $('#example').DataTable();
        });
    </script>
@endsection
