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
                <div class="breadcrumb-title pe-3">{{__('custom.footballData')}}</div>
                <div class="ps-3">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb mb-0 p-0">
                            <li class="breadcrumb-item"><a href="javascript:;"><i class="bx bx-home-alt"></i></a>
                            </li>
                            <li class="breadcrumb-item active"
                                aria-current="page">{{__('custom.footballDataList')}}</li>
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
                                <th>{{__('custom.status')}}</th>
                                <th>{{__('custom.fpNr')}}</th>
                                <th>{{__('custom.gender')}}</th>
{{--                                <th>{{__('custom.profession')}}</th>--}}
                                <th>{{__('Posisjon fotball')}}</th>
{{--                                <th>{{__('custom.type')}}</th>--}}
{{--                                <th>{{__('custom.aft')}}</th>--}}
                                <th>{{__('custom.group')}}</th>

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
                                <th>{{__('custom.sDribble')}}</th>
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
                                <th>{{__('custom.fpNr')}}</th>
                                <th>{{__('custom.gender')}}</th>
{{--                                <th>{{__('custom.profession')}}</th>--}}
                                <th data-src="yes">{{__('Posisjon fotball')}}</th>
{{--                                <th>{{__('custom.type')}}</th>--}}
{{--                                <th data-src="yes">{{__('custom.aft')}}</th>--}}
                                <th>{{__('custom.group')}}</th>

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
                                <th>{{__('custom.sDribble')}}</th>
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
                            @foreach($footballStats as $item)
                                @if(!isset($item->practitioner))
                                    @continue
                                @endif
                                <tr>
                                    <td>{{strtoupper($item->status)}}</td>
                                    <td>{{$item->practitioner->id}}</td>
                                    <td>{{$item->practitioner->gender == 'male' ? __('custom.male') : __('custom.female') }}</td>
{{--                                    <td>{{$item->practitioner->profession->name}}</td>--}}
                                    <td>{{$item->practitioner->position ?? '---'}}</td>
{{--                                    <td>{{$item->practitioner->exType->name}}</td>--}}
{{--                                    <td class="for-cust-check-main {{$item->practitioner->aft ? 'for-cust-check' : 'for-cust-uncheck'}}">--}}
{{--                                        @if($item->practitioner->aft)--}}
{{--                                            {{__("custom.yes")}}--}}
{{--                                        @else--}}
{{--                                            {{__("custom.no")}}--}}
{{--                                        @endif--}}
{{--                                    </td>--}}
                                    <td>{{$item->practitioner->group->name ?? '---'}}</td>
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
                                    <td>{{$item->s_dribble}}</td>
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
