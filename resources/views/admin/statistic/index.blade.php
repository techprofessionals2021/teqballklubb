@extends("layouts.app")

@section("style")
    <link href="{{asset('assets/plugins/datatable/css/dataTables.bootstrap5.min.css')}}" rel="stylesheet"/>
    <link href="{{asset('assets/plugins/select2/css/select2.min.css')}}" rel="stylesheet"/>
    <link href="{{asset('assets/plugins/select2/css/select2-bootstrap4.css')}}" rel="stylesheet"/>
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
                <div class="breadcrumb-title pe-3">{{__('custom.statistics')}}</div>
                <div class="ps-3">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb mb-0 p-0">
                            <li class="breadcrumb-item"><a href="{{route('fullcalender.id','all')}}"><i class="bx bx-home-alt"></i></a>
                            </li>
                            <li class="breadcrumb-item active"
                                aria-current="page">{{__('custom.statisticsList')}}</li>
                        </ol>
                    </nav>
                </div>
                <div class="ms-auto">
                    <div class="btn-group">
                        <a href="{{route('statistic.create')}}" class="btn btn-primary">{{__('custom.refresh')}}</a>
                    </div>
                </div>
            </div>
            <!--end breadcrumb-->
            {{--				<h6 class="mb-0 text-uppercase">Profession Section</h6>--}}
            <hr/>
            <div class="card">
                <div class="card-body">
                    <div class="table-responsive">
                        <div class="row">
                            <div class="col-md-3 pb-3" style="position: absolute;left: 270px;">
                                <select class="single-select" name="group" id="selectGroupId">
                                    <option disabled selected>-- {{__('custom.select')}} --</option>
                                    @forelse ($allGroups as $item)
                                        <option {{$group_id == $item->id ? 'selected' : ''}} value="{{$item->id}}">{{ ucfirst($item->name)}}</option>
                                    @empty
                                        <option disabled value="">Not Found!</option>
                                    @endforelse
                                </select>
                            </div>
                        </div>

                        <table id="example2" class="table table-striped table-bordered">
                            <thead>
                            <tr>
                                <th>{{__('custom.userId')}}</th>
                                <th>{{__('custom.name')}}</th>
                                <th>{{__('custom.gender')}}</th>
                                <th>{{__('custom.age')}}</th>
                                <th>{{__('custom.height')}} (m)</th>
                                <th>{{__('custom.weight')}} (kg)</th>
                                <th>{{__('custom.bmi')}}</th>
{{--                                <th>{{__('custom.group')}}</th>--}}
                                {{--                                        <th>{{__('custom.created_at')}}</th>--}}
                                <th>{{__('custom.action2')}}</th>
                            </tr>
                            <tr>
                                <th>{{__('custom.userId')}}</th>
                                <th data-src="yes">{{__('custom.name')}}</th>
                                <th data-src="yes">{{__('custom.gender')}}</th>
                                <th>{{__('custom.age')}}</th>
                                <th>{{__('custom.height')}} (m)</th>
                                <th>{{__('custom.weight')}} (kg)</th>
                                <th>{{__('custom.bmi')}}</th>
{{--                                <th>{{__('custom.group')}}</th>--}}
                                {{--                                        <th>{{__('custom.created_at')}}</th>--}}
                                <th class="for-dnone" style="visibility: hidden !important;">{{__('custom.action2')}}</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($statistics as $item)
                                @if($item->practitioner->deleted_at != null)
                                    @continue
                                @endif
                                <tr>
                                    <td>{{$item->practitioner->id}}</td>
                                    <td>{{$item->practitioner->name}}</td>
                                    <td>{{$item->practitioner->gender == 'male' ? __('custom.male') : __('custom.female')}}</td>
                                    <td>{{$item->practitioner->age}}</td>
                                    <td>{{$item->height}}</td>
                                    <td>{{$item->weight}}</td>
                                    <td>{{$item->bmi}}</td>
{{--                                    <td>{{$item->practitioner->group->name}}</td>--}}
                                    {{--                                        <td>{{date('d-M-Y' , strtotime($item->created_at))}}</td>--}}
                                    <td>
                                        <a href="{{route('getQuesBy.UserId',$item->practitioner->id)}}" class="btn btn-info text-white">{{__('custom.question')}}</a>
                                        <a href="{{route('stats-3dscreening.index',['user_id'=>$item->practitioner->id])}}" class="btn btn-info text-white">{{__('custom.3dScreening')}}</a>
                                        <a href="{{route('stats-tester.index',['user_id'=>$item->practitioner->id])}}" class="btn btn-info text-white">{{__('custom.tester')}}</a>
                                        <a href="{{route('football.index',['user_id'=>$item->practitioner->id])}}" class="btn btn-info text-white">{{__('custom.football')}}</a>
                                        <a href="{{route('anthropometric.index',['user_id'=>$item->practitioner->id])}}" class="btn btn-info text-white">{{__('custom.anthropometric')}}</a>
                                    </td>
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

        // for Group vise Stats show
        $('#selectGroupId').on('change', function (e) {
            var optionSelected = $("option:selected", this);
            var valueSelected = this.value;
            // console.log(valueSelected);
            location = '{{url('getStatsByGroupId')}}'+'/'+valueSelected;
            {{--location = '{{route('eventsByCondition')}}?'+valueSelected;--}}
        });
        // for Group vise Stats show
    </script>
    <script src="{{asset('assets/plugins/select2/js/select2.min.js')}}"></script>
    <script>
        $('.single-select').select2({
            theme: 'bootstrap4',
            width: $(this).data('width') ? $(this).data('width') : $(this).hasClass('w-100') ? '100%' : 'style',
            placeholder: $(this).data('placeholder'),
            allowClear: Boolean($(this).data('allow-clear')),
        });
        // Example starter JavaScript for disabling form submissions if there are invalid fields
        (function () {
            'use strict'
        })()
    </script>
@endsection
