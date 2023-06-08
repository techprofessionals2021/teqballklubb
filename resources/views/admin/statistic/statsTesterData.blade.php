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
                <div class="breadcrumb-title pe-3">{{__('custom.statsTester')}}</div>
                <div class="ps-3">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb mb-0 p-0">
                            <li class="breadcrumb-item"><a href="{{route('fullcalender.id','all')}}"><i class="bx bx-home-alt"></i></a>
                            </li>
                            <li class="breadcrumb-item active"
                                aria-current="page">{{__('custom.statsTesterList2')}}</li>
                        </ol>
                    </nav>
                </div>
                <div class="ms-auto">
                    <div class="btn-group">
                        <a href="{{route('stats-tester.create',['user_id'=>$userInfo->id ])}}" class="btn btn-primary">{{__('custom.add')}}</a>
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
                                <th>{{__('custom.id')}}</th>
                                <th>{{__('custom.stepTestTime')}}</th>
                                <th>{{__('custom.stepTestCount')}}</th>
                                <th>{{__('custom.bicycleTime')}}</th>
{{--                                <th>{{__('custom.group')}}</th>--}}
                                <th>{{__('custom.bicycleDist')}}</th>
                                <th>{{__('custom.cooperesDist')}}</th>
                                <th>{{__('custom.cooperesCount')}}</th>
                                <th>{{__('custom.cooperesTime')}}</th>
                                <th>{{__('custom.funkStrength')}}</th>
                                {{--                                        <th>{{__('custom.created_at')}}</th>--}}
                                <th>{{__('custom.action')}}</th>
                            </tr>
                            <tr>
                                <th>{{__('custom.status')}}</th>
                                <th>{{__('custom.id')}}</th>
                                <th>{{__('custom.stepTestTime')}}</th>
                                <th>{{__('custom.stepTestCount')}}</th>
                                <th>{{__('custom.bicycleTime')}}</th>
{{--                                <th>{{__('custom.group')}}</th>--}}
                                <th>{{__('custom.bicycleDist')}}</th>
                                <th>{{__('custom.cooperesDist')}}</th>
                                <th>{{__('custom.cooperesCount')}}</th>
                                <th>{{__('custom.cooperesTime')}}</th>
                                <th>{{__('custom.funkStrength')}}</th>
                                {{--                                        <th>{{__('custom.created_at')}}</th>--}}
                                <th class="for-dnone">{{__('custom.action')}}</th>
                            </tr>

                            </thead>
                            <tbody>
                            @foreach($statsTesters as $item)
                                <tr>
                                    <td>{{strtoupper($item->status)}}</td>
                                    <td>{{$item->practitioner->id}}</td>
                                    <td>{{$item->step_test_time}}</td>
                                    <td>{{$item->step_test_count}}</td>
                                    <td>{{$item->bicycle_time}}</td>
{{--                                    <td>{{$item->practitioner->group->name}}</td>--}}
                                    <td>{{$item->bicycle_dist}}</td>
                                    <td>{{$item->cooperes_dist}}</td>
                                    <td>{{$item->cooperes_count}}</td>
                                    <td>{{$item->cooperes_time}}</td>
                                    <td>{{$item->funk_strength}}</td>
                                    {{--                                        <td>{{date('d-M-Y' , strtotime($item->created_at))}}</td>--}}
                                    <td>
                                        <a href="{{route('stats-tester.edit',['user_id'=>$userInfo->id,'stats_tester' => $item->id ])}}" class="btn btn-info text-white">{{__('custom.edit')}}</a>
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
                                <th>{{__('custom.stepTestTime')}}</th>
                                <th>{{__('custom.stepTestCount')}}</th>
                                <th>{{__('custom.bicycleTime')}}</th>
                                <th>{{__('custom.bicycleDist')}}</th>
                                <th>{{__('custom.cooperesDist')}}</th>
                                <th>{{__('custom.cooperesCount')}}</th>
                                <th>{{__('custom.cooperesTime')}}</th>
                                <th>{{__('custom.funkStrength')}}</th>
                            </tr>
                            <tr>
                                <th>{{__('custom.status')}}</th>
                                <th>{{__('custom.stepTestTime')}}</th>
                                <th>{{__('custom.stepTestCount')}}</th>
                                <th>{{__('custom.bicycleTime')}}</th>
                                <th>{{__('custom.bicycleDist')}}</th>
                                <th>{{__('custom.cooperesDist')}}</th>
                                <th>{{__('custom.cooperesCount')}}</th>
                                <th>{{__('custom.cooperesTime')}}</th>
                                <th>{{__('custom.funkStrength')}}</th>
                            </tr>

                            </thead>
                            <tbody>
                                <tr>
                                    <td class="text-center">AVG-PRE</td>
                                    @foreach($statsTesterValue as $tdValue)
                                        <td>{{number_format($avgTesterPre->avg([$tdValue]), 2, '.', '') ?? ''}}</td>
                                    @endforeach
                                </tr>
                                <tr>
                                    <td class="text-center">AVG-POST</td>
                                    @foreach($statsTesterValue as $tdValue)
                                        <td>{{number_format($avgTesterPost->avg([$tdValue]), 2, '.', '') ?? ''}}</td>
                                    @endforeach
                                </tr>


{{--                            For Stdev-Pre--}}
                                <tr>
                                    <td class="text-center">STDEV-PRE ±</td>
                                    @foreach($stdevPre as $item)
                                        <td>{{$item}}</td>
                                    @endforeach
                                </tr>
{{--                            For Stdev-Pre---}}

{{--                            For Stdev-Post--}}
                                <tr>
                                    <td class="text-center">STDEV-POST ±</td>
                                    @foreach($stdevPost as $item)
                                        <td>{{$item ?? '---'}}</td>
                                    @endforeach
                                </tr>
{{--                            For Stdev-Post---}}

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
                let path = `{{ url('stats-tester/${id}') }}`;
                $('#delete-form').attr('action', path);
                $('#delete-form').submit();
            }
        }
        $(document).ready(function () {
            $('#example').DataTable();
        });
    </script>
@endsection
