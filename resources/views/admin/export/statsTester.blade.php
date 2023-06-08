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
                <div class="breadcrumb-title pe-3">{{__('custom.statsTester')}}</div>
                <div class="ps-3">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb mb-0 p-0">
                            <li class="breadcrumb-item"><a href="javascript:;"><i class="bx bx-home-alt"></i></a>
                            </li>
                            <li class="breadcrumb-item active"
                                aria-current="page">{{__('custom.statsTesterList')}}</li>
                        </ol>
                    </nav>
                </div>
                <div class="ms-auto">
                    <div class="btn-group">
                    </div>
                </div>
            </div>
            <!--end breadcrumb-->
{{--            <h6 class="mb-0 text-uppercase">Text</h6>--}}
            <hr/>
            <div class="card">
                <div class="card-body">
                    <div class="table-responsive">
                        <table id="example2" class="table table-striped table-bordered">
                            <thead>
                            <tr>
                                <th>{{__('custom.id')}}</th>
                                <th>{{__('custom.status')}}</th>
                                <th>{{__('custom.gender')}}</th>
                                <th>{{__('custom.profession')}}</th>
{{--                                <th>{{__('custom.type')}}</th>--}}
{{--                                <th>{{__('custom.aft')}}</th>--}}
                                <th>{{__('custom.group')}}</th>

                                <th>{{__('custom.stepTestTime')}}</th>
                                <th>{{__('custom.stepTestCount')}}</th>
                                <th>{{__('custom.bicycleTime')}}</th>
                                <th>{{__('custom.bicycleDist')}}</th>
                                <th>{{__('custom.cooperesDist')}}</th>
                                <th>{{__('custom.cooperesCount')}}</th>
                                <th>{{__('custom.cooperesTime')}}</th>
                                <th>{{__('custom.funkStrength')}}</th>
                                {{--                                        <th>{{__('custom.created_at')}}</th>--}}
                            </tr>
                            <tr>
                                <th>{{__('custom.id')}}</th>
                                <th>{{__('custom.status')}}</th>
                                <th>{{__('custom.gender')}}</th>
                                <th>{{__('custom.profession')}}</th>
{{--                                <th>{{__('custom.type')}}</th>--}}
{{--                                <th data-src="yes">{{__('custom.aft')}}</th>--}}
                                <th>{{__('custom.group')}}</th>

                                <th>{{__('custom.stepTestTime')}}</th>
                                <th>{{__('custom.stepTestCount')}}</th>
                                <th>{{__('custom.bicycleTime')}}</th>
                                <th>{{__('custom.bicycleDist')}}</th>
                                <th>{{__('custom.cooperesDist')}}</th>
                                <th>{{__('custom.cooperesCount')}}</th>
                                <th>{{__('custom.cooperesTime')}}</th>
                                <th>{{__('custom.funkStrength')}}</th>
                                {{--                                        <th>{{__('custom.created_at')}}</th>--}}
                            </tr>

                            </thead>
                            <tbody>
                            @foreach($statsTesters as $item)
                                @if(!isset($item->practitioner))
                                    @continue
                                @endif
                                <tr>
                                    <td>{{$item->practitioner->id}}</td>
                                    <td>{{strtoupper($item->status)}}</td>
                                    <td>{{$item->practitioner->gender == 'male' ? __('custom.male') : __('custom.female') }}</td>
                                    <td>{{$item->practitioner->profession->name ?? '---'}}</td>
{{--                                    <td>{{$item->practitioner->exType->name}}</td>--}}
{{--                                    <td class="for-cust-check-main {{$item->practitioner->aft ? 'for-cust-check' : 'for-cust-uncheck'}}">--}}
{{--                                        @if($item->practitioner->aft)--}}
{{--                                            {{__("custom.yes")}}--}}
{{--                                        @else--}}
{{--                                            {{__("custom.no")}}--}}
{{--                                        @endif--}}
{{--                                    </td>--}}
                                    <td>{{$item->practitioner->group->name ?? '---'}}</td>

                                    <td>{{$item->step_test_time}}</td>
                                    <td>{{$item->step_test_count}}</td>
                                    <td>{{$item->bicycle_time}}</td>
                                    <td>{{$item->bicycle_dist}}</td>
                                    <td>{{$item->cooperes_dist}}</td>
                                    <td>{{$item->cooperes_count}}</td>
                                    <td>{{$item->cooperes_time}}</td>
                                    <td>{{$item->funk_strength}}</td>
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
