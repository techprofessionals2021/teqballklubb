@extends("layouts.app")

@section("style")
    <link href="{{asset('assets/plugins/datatable/css/dataTables.bootstrap5.min.css')}}" rel="stylesheet"/>
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
                                aria-current="page">{{__('custom.anthropometricList')}}</li>
                        </ol>
                    </nav>
                </div>
                <div class="ms-auto">
                </div>
            </div>
            <!--end breadcrumb-->
{{--            <h6 class="mb-0 text-uppercase">text</h6>--}}
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
                                <th>{{__('custom.height')}}</th>
                                <th>{{__('custom.weight')}}</th>
                                <th>{{__('custom.bmi')}}</th>
                                <th>{{__('custom.gender')}}</th>
                                <th>{{__('custom.profession')}}</th>
{{--                                <th>{{__('custom.type')}}</th>--}}
{{--                                <th>{{__('custom.aft')}}</th>--}}
                                <th>{{__('custom.group')}}</th>

{{--                                <th>{{__('custom.week_ant')}}</th>--}}
{{--                                <th>{{__('custom.ant_train')}}</th>--}}

                                <th>{{__('custom.damage_c')}}</th>
                                <th>{{__('custom.damage_nc')}}</th>
                                <th>%{{__('custom.oppm')}}</th>
{{--                                <th>% {{__('custom.vurdBorg')}}</th>--}}
{{--                                <th>% {{__('custom.vurdFys')}}</th>--}}
{{--                                <th>% {{__('custom.jobs')}}</th>--}}
{{--                                <th>% {{__('custom.r_reported')}}</th>--}}
{{--                                <th>% {{__('custom.internship')}}</th>--}}
                                <th>% {{__('custom.motivation')}}</th>
                                <th>% {{__('custom.akt_scale')}}</th>
                                <th>% {{__('custom.leg_length')}}</th>
                                <th>% {{__('custom.shoe_size')}}</th>
                                <th>% {{__('custom.foot_size')}}</th>
                                <th>% {{__('custom.position')}}</th>
                                <th>{{__('custom.fat')}} %</th>
                                {{--                                        <th>{{__('custom.created_at')}}</th>--}}
                            </tr>
                            <tr>
                                <th data-src="false">{{__('custom.status')}}</th>
                                <th data-src="false">{{__('custom.fpNr')}}</th>
                                <th>{{__('custom.date')}}</th>
                                <th>{{__('custom.age')}}</th>
                                <th>{{__('custom.height')}}</th>
                                <th>{{__('custom.weight')}}</th>
                                <th>{{__('custom.bmi')}}</th>
                                <th>{{__('custom.gender')}}</th>
                                <th>{{__('custom.profession')}}</th>
{{--                                <th>{{__('custom.type')}}</th>--}}
{{--                                <th data-src="yes">{{__('custom.aft')}}</th>--}}
                                <th>{{__('custom.group')}}</th>

{{--                                <th>{{__('custom.week_ant')}}</th>--}}
{{--                                <th>{{__('custom.ant_train')}}</th>--}}

                                <th>{{__('custom.damage_c')}}</th>
                                <th>{{__('custom.damage_nc')}}</th>
                                <th>%{{__('custom.oppm')}}</th>
{{--                                <th>% {{__('custom.vurdBorg')}}</th>--}}
{{--                                <th>% {{__('custom.vurdFys')}}</th>--}}
{{--                                <th>% {{__('custom.jobs')}}</th>--}}
{{--                                <th>% {{__('custom.r_reported')}}</th>--}}
{{--                                <th>% {{__('custom.internship')}}</th>--}}
                                <th>% {{__('custom.motivation')}}</th>
                                <th>% {{__('custom.akt_scale')}}</th>
                                <th>% {{__('custom.leg_length')}}</th>
                                <th>% {{__('custom.shoe_size')}}</th>
                                <th>% {{__('custom.foot_size')}}</th>
                                <th>% {{__('custom.position')}}</th>
                                <th>% {{__('custom.fat')}}</th>
                                {{--                                        <th>{{__('custom.created_at')}}</th>--}}
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($anthropometries as $item)
                                @if(!isset($item->practitioner))
                                    @continue
                                @endif
                                <tr>
                                    <td>{{strtoupper($item->status)}}</td>
                                    <td>{{$item->practitioner->id}}</td>
{{--                                    <td>{{date('d-M-Y' , strtotime($item->created_at))}}</td>--}}
                                    <td>{{ucwords(strftime("%A %e %B %Y",strtotime($item->created_at)))}}</td>
                                    <td>{{$item->age}}</td>
                                    <td>{{$item->height}}</td>
                                    <td>{{$item->weight}}</td>
                                    <td>{{$item->bmi}}</td>
                                    <td>{{$item->practitioner->gender == 'male' ? __('custom.male') : __('custom.female') }}</td>
                                    <td>{{$item->practitioner->profession->name ?? '---'}}</td>
{{--                                    <td>{{$item->practitioner->exType->name ?? ''}}</td>--}}
{{--                                    <td class="for-cust-check-main {{$item->practitioner->aft ? 'for-cust-check' : 'for-cust-uncheck'}}">--}}
{{--                                        @if($item->practitioner->aft)--}}
{{--                                            {{__("custom.yes")}}--}}
{{--                                        @else--}}
{{--                                            {{__("custom.no")}}--}}
{{--                                        @endif--}}
{{--                                    </td>--}}
                                    <td>{{$item->practitioner->group->name ?? '---'}}</td>

{{--                                    <td>{{$item->week_ant}}</td>--}}
{{--                                    <td>{{$item->ant_train}}</td>--}}
                                    <td>{{$item->damage_c}}</td>
                                    <td>{{$item->damage_nc}}</td>
                                    <td>{{$item->note}}</td>
{{--                                    <td>{{$item->vurdBorg}}</td>--}}
{{--                                    <td>{{$item->VurdFys}}</td>--}}
{{--                                    <td>{{$item->jobs}}</td>--}}
{{--                                    <td>{{$item->r_reported}}</td>--}}
{{--                                    <td>{{$item->internship}}</td>--}}
                                    <td>{{$item->motivation}}</td>
                                    <td>{{$item->akt_scale}}</td>
                                    <td>{{$item->leg_length}}</td>
                                    <td>{{$item->shoe_size}}</td>
                                    <td>{{$item->foot_size}}</td>
                                    <td>{{$item->position}}</td>
                                    <td>{{$item->fat}}</td>
                                    {{--                                        <td>{{date('d-M-Y' , strtotime($item->created_at))}}</td>--}}
                                </tr>
                            @endforeach
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
        $(document).ready(function () {
            $('#example').DataTable();
        });
    </script>
@endsection
