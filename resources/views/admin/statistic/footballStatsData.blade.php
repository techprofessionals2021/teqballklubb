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
                <div class="breadcrumb-title pe-3">{{__('custom.footballData')}}</div>
                <div class="ps-3">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb mb-0 p-0">
                            <li class="breadcrumb-item"><a href="{{route('fullcalender.id','all')}}"><i class="bx bx-home-alt"></i></a>
                            </li>
                            <li class="breadcrumb-item active"
                                aria-current="page">{{__('custom.footballDataList')}}</li>
                        </ol>
                    </nav>
                </div>
                <div class="ms-auto">
                    <div class="btn-group">
                        <a href="{{route('football.create',['user_id'=>$userInfo->id ])}}" class="btn btn-primary">{{__('custom.add')}}</a>
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
                                <th>{{__('custom.yoyoTest')}}</th>
{{--                                <th>{{__('custom.dlbt')}}</th>--}}
                                <th>{{__('custom.dlbt_dom')}}</th>
                                <th>{{__('custom.dlbt_non')}}</th>
                                <th>{{__('custom.lbPass')}}</th>
                                <th>{{__('custom.lbShoot')}}</th>
                                <th>{{__('custom.lbVelocity')}}</th>
                                <th>{{__('custom.lbPoint')}}</th>
                                <th>{{__('custom.s180')}}</th>
{{--                                <th>{{__('custom.sDribble')}}</th>--}}
                                <th>{{__('custom.s_dribble_right')}}</th>
                                <th>{{__('custom.s_dribble_left')}}</th>
                                <th>{{__('custom.vertXXX')}}</th>
                                <th>{{__('custom.vertRXX')}}</th>
                                <th>{{__('custom.vertLLX')}}</th>
                                <th>{{__('custom.hoXXX')}}</th>
                                <th>{{__('custom.hrslj')}}</th>
                                <th>{{__('custom.hlslj')}}</th>
                                <th>{{__('custom.speed10')}}</th>
                                <th>{{__('custom.speed20')}}</th>
                                <th>{{__('custom.speed30')}}</th>
                                <th>{{__('custom.speed40')}}</th>
                                <th>{{__('custom.rmBenk1')}}</th>
                                <th>{{__('custom.rmSquat1')}}</th>
                                <th>{{__('custom.rmDead1')}}</th>



{{--                                <th>{{__('custom.rmSquat')}}</th>--}}
                                {{--                                <th>{{__('custom.group')}}</th>--}}
{{--                                <th>{{__('custom.turn')}}</th>--}}
{{--                                <th>{{__('custom.benchPress')}}</th>--}}
{{--                                <th>{{__('custom.markl1RM')}}</th>--}}
{{--                                <th>{{__('custom.right')}}</th>--}}
{{--                                <th>{{__('custom.left')}}</th>--}}
                                {{--                                        <th>{{__('custom.created_at')}}</th>--}}
                                <th>{{__('custom.action')}}</th>
                            </tr>
                            <tr>

                                <th>{{__('custom.status')}}</th>
                                <th>{{__('custom.fpNr')}}</th>
                                <th>{{__('custom.date')}}</th>
                                <th>{{__('custom.yoyoTest')}}</th>
{{--                                <th>{{__('custom.dlbt')}}</th>--}}
                                <th>{{__('custom.dlbt_dom')}}</th>
                                <th>{{__('custom.dlbt_non')}}</th>
                                <th>{{__('custom.lbPass')}}</th>
                                <th>{{__('custom.lbShoot')}}</th>
                                <th>{{__('custom.lbVelocity')}}</th>
                                <th>{{__('custom.lbPoint')}}</th>
                                <th>{{__('custom.s180')}}</th>
{{--                                <th>{{__('custom.sDribble')}}</th>--}}
                                <th>{{__('custom.s_dribble_right')}}</th>
                                <th>{{__('custom.s_dribble_left')}}</th>
                                <th>{{__('custom.vertXXX')}}</th>
                                <th>{{__('custom.vertRXX')}}</th>
                                <th>{{__('custom.vertLLX')}}</th>
                                <th>{{__('custom.hoXXX')}}</th>
                                <th>{{__('custom.hrslj')}}</th>
                                <th>{{__('custom.hlslj')}}</th>
                                <th>{{__('custom.speed10')}}</th>
                                <th>{{__('custom.speed20')}}</th>
                                <th>{{__('custom.speed30')}}</th>
                                <th>{{__('custom.speed40')}}</th>
                                <th>{{__('custom.rmBenk1')}}</th>
                                <th>{{__('custom.rmSquat1')}}</th>
                                <th>{{__('custom.rmDead1')}}</th>



{{--                                <th>{{__('custom.rmSquat')}}</th>--}}
                                {{--                                <th>{{__('custom.group')}}</th>--}}
{{--                                <th>{{__('custom.turn')}}</th>--}}
{{--                                <th>{{__('custom.benchPress')}}</th>--}}
{{--                                <th>{{__('custom.markl1RM')}}</th>--}}
{{--                                <th>{{__('custom.right')}}</th>--}}
{{--                                <th>{{__('custom.left')}}</th>--}}
                                {{--                                        <th>{{__('custom.created_at')}}</th>--}}
                                <th class="for-dnone">{{__('custom.action')}}</th>
                            </tr>

                            </thead>
                            <tbody>
                            @foreach($footballStats as $item)
                                <tr>

                                    <td>{{strtoupper($item->status)}}</td>
                                    <td>{{$item->practitioner->id}}</td>
                                    <td>{{$item->date}}</td>
                                    <td>{{$item->yoyo_test}}</td>
{{--                                    <td>{{$item->dlbt}}</td>--}}
                                    <td>{{$item->dlbt_dom}}</td>
                                    <td>{{$item->dlbt_non}}</td>
                                    <td>{{$item->lb_pass}}</td>
                                    <td>{{$item->lb_shoot}}</td>
                                    <td>{{$item->lb_velocity}}</td>
                                    <td>{{$item->lb_point}}</td>

                                    <td>{{$item->s180}}</td>
{{--                                    <td>{{$item->s_dribble}}</td>--}}
                                    <td>{{$item->s_dribble_right}}</td>
                                    <td>{{$item->s_dribble_left}}</td>
                                    <td>{{$item->vertXXX}}</td>
                                    <td>{{$item->vertRXX}}</td>
                                    <td>{{$item->vertLLX}}</td>
                                    <td>{{$item->hoXXX}}</td>
                                    <td>{{$item->hrslj}}</td>
                                    <td>{{$item->hlslj}}</td>
                                    <td>{{$item->speed_10m}}</td>
                                    <td>{{$item->speed_20m}}</td>
                                    <td>{{$item->speed_30m}}</td>
                                    <td>{{$item->speed_40m}}</td>
                                    <td>{{$item->RMBenk1}}</td>
                                    <td>{{$item->RMSquat1}}</td>
                                    <td>{{$item->RMDead1}}</td>


{{--                                    <td>{{$item->rm_squat}}</td>--}}
                                    {{--                                    <td>{{$item->practitioner->group->name}}</td>--}}
{{--                                    <td>{{$item->turn}}</td>--}}
{{--                                    <td>{{$item->bench_press}}</td>--}}
{{--                                    <td>{{$item->markl_1RM}}</td>--}}
{{--                                    <td>{{$item->right}}</td>--}}
{{--                                    <td>{{$item->left}}</td>--}}
                                    {{--                                        <td>{{date('d-M-Y' , strtotime($item->created_at))}}</td>--}}
                                    <td>
                                        <a href="{{route('football.edit',['user_id'=>$userInfo->id,'football' => $item->id ])}}" class="btn btn-info text-white">{{__('custom.edit')}}</a>
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
                                <th>{{__('custom.yoyoTest')}}</th>
{{--                                <th>{{__('custom.dlbt')}}</th>--}}
                                <th>{{__('custom.dlbt_dom')}}</th>
                                <th>{{__('custom.dlbt_non')}}</th>
                                <th>{{__('custom.lbPass')}}</th>
                                <th>{{__('custom.lbShoot')}}</th>
                                <th>{{__('custom.lbVelocity')}}</th>
                                <th>{{__('custom.lbPoint')}}</th>
                                <th>{{__('custom.s180')}}</th>
                                <th>{{__('custom.s_dribble_right')}}</th>
                                <th>{{__('custom.s_dribble_left')}}</th>
                                <th>{{__('custom.vertXXX')}}</th>
                                <th>{{__('custom.vertRXX')}}</th>
                                <th>{{__('custom.vertLLX')}}</th>
                                <th>{{__('custom.hoXXX')}}</th>
                                <th>{{__('custom.hrslj')}}</th>
                                <th>{{__('custom.hlslj')}}</th>
                                <th>{{__('custom.speed10')}}</th>
                                <th>{{__('custom.speed20')}}</th>
                                <th>{{__('custom.speed30')}}</th>
                                <th>{{__('custom.speed40')}}</th>
                                <th>{{__('custom.rmBenk1')}}</th>
                                <th>{{__('custom.rmSquat1')}}</th>
                                <th>{{__('custom.rmDead1')}}</th>
                            </tr>
                            <tr>
                                <th>{{__('custom.status')}}</th>
                                <th>{{__('custom.yoyoTest')}}</th>
{{--                                <th>{{__('custom.dlbt')}}</th>--}}
                                <th>{{__('custom.dlbt_dom')}}</th>
                                <th>{{__('custom.dlbt_non')}}</th>
                                <th>{{__('custom.lbPass')}}</th>
                                <th>{{__('custom.lbShoot')}}</th>
                                <th>{{__('custom.lbVelocity')}}</th>
                                <th>{{__('custom.lbPoint')}}</th>
                                <th>{{__('custom.s180')}}</th>
                                <th>{{__('custom.s_dribble_right')}}</th>
                                <th>{{__('custom.s_dribble_left')}}</th>
                                <th>{{__('custom.vertXXX')}}</th>
                                <th>{{__('custom.vertRXX')}}</th>
                                <th>{{__('custom.vertLLX')}}</th>
                                <th>{{__('custom.hoXXX')}}</th>
                                <th>{{__('custom.hrslj')}}</th>
                                <th>{{__('custom.hlslj')}}</th>
                                <th>{{__('custom.speed10')}}</th>
                                <th>{{__('custom.speed20')}}</th>
                                <th>{{__('custom.speed30')}}</th>
                                <th>{{__('custom.speed40')}}</th>
                                <th>{{__('custom.rmBenk1')}}</th>
                                <th>{{__('custom.rmSquat1')}}</th>
                                <th>{{__('custom.rmDead1')}}</th>
                            </tr>

                            </thead>
                            <tbody>
                                <tr>
                                    <td class="text-center">AVG-PRE</td>
                                    @foreach($statsFootballValue as $tdValue)
                                        <td>{{number_format($avgFootballPre->avg([$tdValue]), 2, '.', '') ?? ''}}</td>
                                    @endforeach
                                </tr>
                                <tr>
                                    <td class="text-center">AVG-POST</td>
                                    @foreach($statsFootballValue as $tdValue)
                                        <td>{{number_format($avgFootballPost->avg([$tdValue]), 2, '.', '') ?? ''}}</td>
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
                let path = `{{ url('football/${id}') }}`;
                $('#delete-form').attr('action', path);
                $('#delete-form').submit();
            }
        }
        $(document).ready(function () {
            $('#example').DataTable();
        });
    </script>
@endsection
