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
                <div class="breadcrumb-title pe-3">{{__('custom.3dScreening')}}</div>
                <div class="ps-3">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb mb-0 p-0">
                            <li class="breadcrumb-item"><a href="javascript:;"><i class="bx bx-home-alt"></i></a>
                            </li>
                            <li class="breadcrumb-item active"
                                aria-current="page">{{__('custom.3dScreeningList2')}}</li>
                        </ol>
                    </nav>
                </div>
                <div class="ms-auto">
                    <div class="btn-group">
                        <a href="{{route('stats-3dscreening.create',['user_id'=>$userInfo->id ])}}"
                           class="btn btn-primary">{{__('custom.add')}}</a>
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
                                @foreach($stats3dValues as $item)
                                    <th>{{strtoupper($item)}}</th>
                                @endforeach
{{--                                        <th>{{__('custom.created_at')}}</th>--}}
                                <th>{{__('custom.action')}}</th>
                            </tr>
                            <tr>
                                <th>{{__('custom.status')}}</th>
                                <th>{{__('custom.id')}}</th>
                                @foreach($stats3dValues as $item)
                                    <th>{{strtoupper($item)}}</th>
                                @endforeach
{{--                                        <th>{{__('custom.created_at')}}</th>--}}
                                <th class="for-dnone">{{__('custom.action')}}</th>
                            </tr>

                            </thead>
                            <tbody>
                            @foreach($stats3dScreenings as $item)
                                <tr>
                                    <td>{{strtoupper($item->status)}}</td>
                                    <td>{{$item->practitioner->id}}</td>
                                    @foreach($stats3dValues as $tdValue)
                                        <td>{{$item[$tdValue]}}</td>
                                    @endforeach
{{--                                        <td>{{date('d-M-Y' , strtotime($item->created_at))}}</td>--}}
                                    <td>
                                        <a href="{{route('stats-3dscreening.edit',['user_id'=>$userInfo->id,'stats_3dscreening' => $item->id ])}}"
                                           class="btn btn-info text-white">{{__('custom.edit')}}</a>
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
                                @foreach($stats3dValues as $item)
                                    <th>{{strtoupper($item)}}</th>
                                @endforeach
                            </tr>
                            <tr>
                                <th>{{__('custom.status')}}</th>
                                @foreach($stats3dValues as $item)
                                    <th>{{strtoupper($item)}}</th>
                                @endforeach
                            </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="text-center">AVG-PRE</td>
                                    @foreach($stats3dValues as $tdValue)
                                        <td>{{number_format($avgStats3dPre->avg([$tdValue]), 2, '.', '') ?? ''}}</td>
                                    @endforeach
                                </tr>
                                <tr>
                                    <td class="text-center">AVG-POST</td>
                                    @foreach($stats3dValues as $tdValue)
                                        <td>{{number_format($avgStats3dPost->avg([$tdValue]), 2, '.', '') ?? ''}}</td>
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
                                        <td>{{$item}}</td>
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
                let path = `{{ url('stats-3dscreening/${id}') }}`;
                $('#delete-form').attr('action', path);
                $('#delete-form').submit();
            }
        }
        $(document).ready(function () {
            $('#example').DataTable();
        });
    </script>
@endsection
