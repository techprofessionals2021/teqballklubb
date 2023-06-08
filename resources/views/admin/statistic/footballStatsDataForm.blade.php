@extends("layouts.app")
@section("style")
    <link href="{{asset('assets/plugins/select2/css/select2.min.css')}}" rel="stylesheet" />
    <link href="{{asset('assets/plugins/select2/css/select2-bootstrap4.css')}}" rel="stylesheet" />
@endsection
@section("wrapper")
    <div class="page-wrapper">
        <div class="page-content">
            <!--breadcrumb-->
            <div class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">
                <div class="breadcrumb-title pe-3">{{__('custom.footballData')}}</div>
                <div class="ps-3">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb mb-0 p-0">
                            <li class="breadcrumb-item"><a href="{{route('fullcalender.id','all')}}"><i class="bx bx-home-alt"></i></a>
                            </li>
                            <li class="breadcrumb-item active" aria-current="page">{{__('custom.footballData')}}
                                / {{!$edit ? __('custom.create') : __('custom.edit')}}</li>
                        </ol>
                    </nav>
                </div>
                <div class="ms-auto">
                </div>
            </div>
            <!--end breadcrumb-->
            <div class="row">
                <div class="col-xl-12 mx-auto">
                    <h6 class="mb-0 text-uppercase">{{$userInfo->name}}</h6>
                    <hr/>
                    <div class="card">
                        <div class="card-body">
                            <div class="p-4 border rounded">
                                <form class="row g-3" method="POST" action="{{ $route }}">
                                    @csrf
                                    @if($edit) @method('PUT')
                                    <input type="hidden" name="footballStatsDataId" value="{{$footballStatsData->id}}">
                                    @endif
                                    <input type="hidden" name="userId" value="{{$userInfo->id}}">
                                    <div class="col-md-4">
                                        <label for="status" class="form-label">{{__('custom.status')}}</label>
                                        <select class="single-select" name="status" id="status">
                                                <option {{$footballStatsData->status == 'pre' ? 'selected' : ''}} value="pre">PRE</option>
                                                <option {{$footballStatsData->status == 'mid' ? 'selected' : ''}} value="mid">MID</option>
                                                <option {{$footballStatsData->status == 'post' ? 'selected' : ''}} value="post">POST</option>
                                        </select>
                                        @error('status')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>
                                    <div class="col-md-4">
                                        <label for="date" class="form-label">{{__('custom.date')}}</label>
                                        <input type="date" name="date" class="form-control" id="date" value="{{ old('date',$footballStatsData->date) }}" placeholder="{{__('custom.date')}}">
                                        @error('date')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>
                                    <div class="col-md-4">
                                        <label for="yoyo_test" class="form-label">{{__('custom.yoyoTest')}} </label>
                                        <input type="number" name="yoyo_test" class="form-control" step=".01" id="yoyo_test" value="{{ old('yoyo_test',$footballStatsData->yoyo_test) }}" placeholder="{{__('custom.yoyoTest')}}">
                                        @error('yoyo_test')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>

{{--                                    <div class="col-md-4">--}}
{{--                                        <label for="dlbt" class="form-label">{{__('custom.dlbt')}}</label>--}}
{{--                                        <input type="number" name="dlbt" class="form-control" step=".01" id="dlbt" value="{{ old('dlbt',$footballStatsData->dlbt) }}" placeholder="{{__('custom.dlbt')}}">--}}
{{--                                        @error('dlbt')--}}
{{--                                        <strong>{{ $message }}</strong>--}}
{{--                                        @enderror--}}
{{--                                    </div>--}}

                                    <div class="col-md-4">
                                        <label for="dlbt_dom" class="form-label">{{__('custom.dlbt_dom')}}</label>
                                        <input type="number" name="dlbt_dom" class="form-control" step=".01" id="dlbt_dom" value="{{ old('dlbt_dom',$footballStatsData->dlbt_dom) }}" placeholder="{{__('custom.dlbt_dom')}}">
                                        @error('dlbt_dom')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>
                                    <div class="col-md-4">
                                        <label for="dlbt_non" class="form-label">{{__('custom.dlbt_non')}}</label>
                                        <input type="number" name="dlbt_non" class="form-control" step=".01" id="dlbt_non" value="{{ old('dlbt_non',$footballStatsData->dlbt_non) }}" placeholder="{{__('custom.dlbt_non')}}">
                                        @error('dlbt_non')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>



{{--                                    <div class="col-md-4">--}}
{{--                                        <label for="rm_squat" class="form-label">{{__('custom.rmSquat')}} </label>--}}
{{--                                        <input type="number" name="rm_squat" class="form-control" id="rm_squat" value="{{ old('rm_squat',$footballStatsData->rm_squat) }}" placeholder="Enter RM Squat">--}}
{{--                                        @error('rm_squat')--}}
{{--                                        <strong>{{ $message }}</strong>--}}
{{--                                        @enderror--}}
{{--                                    </div>--}}
                                    <div class="col-md-4">
                                        <label for="lb_pass" class="form-label">{{__('custom.lbPass')}} </label>
                                        <input type="number" name="lb_pass" class="form-control" step=".01" id="lb_pass" value="{{ old('lb_pass',$footballStatsData->lb_pass) }}" placeholder="{{__('custom.lbPass')}}">
                                        @error('lb_pass')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>
                                    <div class="col-md-4">
                                        <label for="lb_shoot" class="form-label">{{__('custom.lbShoot')}} </label>
                                        <input type="number" name="lb_shoot" class="form-control" step=".01" id="lb_shoot" value="{{ old('lb_shoot',$footballStatsData->lb_shoot) }}" placeholder="{{__('custom.lbShoot')}}">
                                        @error('lb_shoot')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>

                                    <div class="col-md-4">
                                        <label for="lbVelocity" class="form-label">{{__('custom.lbVelocity')}} </label>
                                        <input type="number" name="lbVelocity" class="form-control" step=".01" id="lbVelocity" value="{{ old('lbVelocity',$footballStatsData->lb_velocity) }}" placeholder="{{__('custom.lbVelocity')}}">
                                        @error('lbVelocity')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>

                                    <div class="col-md-4">
                                        <label for="lb_point" class="form-label">{{__('custom.lbPoint')}} </label>
                                        <input type="number" name="lb_point" class="form-control" step=".01" id="lb_point" value="{{ old('lb_point',$footballStatsData->lb_point) }}" placeholder="{{__('custom.lbPoint')}}">
                                        @error('lb_point')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>

                                    <div class="col-md-4">
                                        <label for="s180" class="form-label">{{__('custom.s180')}} </label>
                                        <input type="number" name="s180" class="form-control" step=".01" id="s180" value="{{ old('s180',$footballStatsData->s180) }}" placeholder="{{__('custom.s180')}}">
                                        @error('s180')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>
{{--                                    <div class="col-md-4">--}}
{{--                                        <label for="s_dribble" class="form-label">{{__('custom.sDribble')}} </label>--}}
{{--                                        <input type="number" name="s_dribble" class="form-control" id="s_dribble" value="{{ old('s_dribble',$footballStatsData->s_dribble) }}" placeholder="Enter S Dribble">--}}
{{--                                        @error('s_dribble')--}}
{{--                                        <strong>{{ $message }}</strong>--}}
{{--                                        @enderror--}}
{{--                                    </div>--}}
{{--                                    <div class="col-md-4">--}}
{{--                                        <label for="turn" class="form-label">{{__('custom.turn')}} </label>--}}
{{--                                        <input type="number" name="turn" class="form-control" id="turn" value="{{ old('turn',$footballStatsData->turn) }}" placeholder="Enter Turn">--}}
{{--                                        @error('turn')--}}
{{--                                        <strong>{{ $message }}</strong>--}}
{{--                                        @enderror--}}
{{--                                    </div>--}}

{{--                                    <div class="col-md-4">--}}
{{--                                        <label for="bench_press" class="form-label">{{__('custom.benchPress')}} </label>--}}
{{--                                        <input type="number" name="bench_press" class="form-control" id="bench_press" value="{{ old('bench_press',$footballStatsData->bench_press) }}" placeholder="Enter Bench Press">--}}
{{--                                        @error('bench_press')--}}
{{--                                        <strong>{{ $message }}</strong>--}}
{{--                                        @enderror--}}
{{--                                    </div>--}}
{{--                                    <div class="col-md-4">--}}
{{--                                        <label for="markl_1RM" class="form-label">{{__('custom.markl1RM')}} </label>--}}
{{--                                        <input type="number" name="markl_1RM" class="form-control" id="markl_1RM" value="{{ old('markl_1RM',$footballStatsData->markl_1RM) }}" placeholder="Enter Markl 1RM">--}}
{{--                                        @error('markl_1RM')--}}
{{--                                        <strong>{{ $message }}</strong>--}}
{{--                                        @enderror--}}
{{--                                    </div>--}}
                                    <div class="col-md-4">
                                        <label for="vertXXX" class="form-label">{{__('custom.vertXXX')}} </label>
                                        <input type="number" name="vertXXX" class="form-control" step=".01" id="vertXXX" value="{{ old('vertXXX',$footballStatsData->vertXXX) }}" placeholder="{{__('custom.vertXXX')}}">
                                        @error('vertXXX')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>

                                    <div class="col-md-4">
                                        <label for="vertRXX" class="form-label">{{__('custom.vertRXX')}} </label>
                                        <input type="number" name="vertRXX" class="form-control" step=".01" id="vertRXX" value="{{ old('vertRXX',$footballStatsData->vertRXX) }}" placeholder="{{__('custom.vertRXX')}}">
                                        @error('vertRXX')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>
                                    <div class="col-md-4">
                                        <label for="vertLLX" class="form-label">{{__('custom.vertLLX')}} </label>
                                        <input type="number" name="vertLLX" class="form-control" step=".01" id="vertLLX" value="{{ old('vertLLX',$footballStatsData->vertLLX) }}" placeholder="{{__('custom.vertLLX')}}">
                                        @error('vertLLX')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>
                                    <div class="col-md-4">
                                        <label for="hoXXX" class="form-label">{{__('custom.hoXXX')}} </label>
                                        <input type="number" name="hoXXX" class="form-control" step=".01" id="hoXXX" value="{{ old('hoXXX',$footballStatsData->hoXXX) }}" placeholder="{{__('custom.hoXXX')}}">
                                        @error('hoXXX')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>

                                    <div class="col-md-4">
                                        <label for="hrslj" class="form-label">{{__('custom.hrslj')}} </label>
                                        <input type="number" name="hrslj" class="form-control" step=".01" id="hrslj" value="{{ old('hrslj',$footballStatsData->hrslj) }}" placeholder="{{__('custom.hrslj')}}">
                                        @error('hrslj')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>
                                    <div class="col-md-4">
                                        <label for="hlslj" class="form-label">{{__('custom.hlslj')}} </label>
                                        <input type="number" name="hlslj" class="form-control" step=".01" id="hlslj" value="{{ old('hlslj',$footballStatsData->hlslj) }}" placeholder="{{__('custom.hlslj')}}">
                                        @error('hlslj')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>

                                    <div class="col-md-4">
                                        <label for="speed10" class="form-label">{{__('custom.speed10')}} </label>
                                        <input type="number" name="speed10" class="form-control" step=".01" id="speed10" value="{{ old('speed10',$footballStatsData->speed_10m) }}" placeholder="{{__('custom.speed10')}}">
                                        @error('speed10')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>
                                    <div class="col-md-4">
                                        <label for="speed20" class="form-label">{{__('custom.speed20')}} </label>
                                        <input type="number" name="speed20" class="form-control" step=".01" id="speed20" value="{{ old('speed20',$footballStatsData->speed_20m) }}" placeholder="{{__('custom.speed20')}}">
                                        @error('speed20')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>
                                    <div class="col-md-4">
                                        <label for="speed30" class="form-label">{{__('custom.speed30')}} </label>
                                        <input type="number" name="speed30" class="form-control" step=".01" id="speed30" value="{{ old('speed30',$footballStatsData->speed_30m) }}" placeholder="{{__('custom.speed30')}}">
                                        @error('speed30')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>
                                    <div class="col-md-4">
                                        <label for="speed40" class="form-label">{{__('custom.speed40')}} </label>
                                        <input type="number" name="speed40" class="form-control" step=".01" id="speed40" value="{{ old('speed40',$footballStatsData->speed_40m) }}" placeholder="{{__('custom.speed40')}}">
                                        @error('speed40')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>

                                    <div class="col-md-4">
                                        <label for="rmBenk1" class="form-label">{{__('custom.rmBenk1')}} </label>
                                        <input type="number" name="rmBenk1" class="form-control" step=".01" id="rmBenk1" value="{{ old('rmBenk1',$footballStatsData->RMBenk1) }}" placeholder="{{__('custom.rmBenk1')}}">
                                        @error('rmBenk1')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>
                                    <div class="col-md-4">
                                        <label for="rmSquat1" class="form-label">{{__('custom.rmSquat1')}} </label>
                                        <input type="number" name="rmSquat1" class="form-control" step=".01" id="rmSquat1" value="{{ old('rmSquat1',$footballStatsData->RMSquat1) }}" placeholder="{{__('custom.rmSquat1')}}">
                                        @error('rmSquat1')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>
                                    <div class="col-md-4">
                                        <label for="rmDead1" class="form-label">{{__('custom.rmDead1')}} </label>
                                        <input type="number" name="rmDead1" class="form-control" step=".01" id="rmDead1" value="{{ old('rmDead1',$footballStatsData->RMDead1) }}" placeholder="{{__('custom.rmDead1')}}">
                                        @error('rmDead1')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>

                                    <div class="col-md-4">
                                        <label for="s_dribble_right"
                                               class="form-label">{{__('custom.s_dribble_right')}}</label>
                                        <input type="number" name="s_dribble_right" class="form-control"
                                               id="s_dribble_right" step=".01"
                                               value="{{ old('s_dribble_right',$footballStatsData->s_dribble_right) }}"
                                               placeholder="{{__('custom.s_dribble_right')}}">
                                        @error('s_dribble_right')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>
                                    <div class="col-md-4">
                                        <label for="s_dribble_left"
                                               class="form-label">{{__('custom.s_dribble_left')}}</label>
                                        <input type="number" name="s_dribble_left" class="form-control"
                                               id="s_dribble_left" step=".01"
                                               value="{{ old('s_dribble_left',$footballStatsData->s_dribble_left) }}"
                                               placeholder="{{__('custom.s_dribble_left')}}">
                                        @error('s_dribble_left')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>

{{--                                    <div class="col-md-6">--}}
{{--                                        <label for="right" class="form-label">{{__('custom.right')}} </label>--}}
{{--                                        <input type="number" name="right" class="form-control" id="right" value="{{ old('right',$footballStatsData->right) }}" placeholder="Enter Right">--}}
{{--                                        @error('right')--}}
{{--                                        <strong>{{ $message }}</strong>--}}
{{--                                        @enderror--}}
{{--                                    </div>--}}
{{--                                    <div class="col-md-6">--}}
{{--                                        <label for="left" class="form-label">{{__('custom.left')}} </label>--}}
{{--                                        <input type="number" name="left" class="form-control" id="left" value="{{ old('left',$footballStatsData->left) }}" placeholder="Enter Left">--}}
{{--                                        @error('left')--}}
{{--                                        <strong>{{ $message }}</strong>--}}
{{--                                        @enderror--}}
{{--                                    </div>--}}

                                    <div class="col-md-12">
                                        <label for="comments" class="form-label">{{__('custom.comment')}}</label>
                                        <input type="text" name="comments" class="form-control" id="comments" value="{{ old('comments',$footballStatsData->comments) }}" placeholder="{{__('custom.enter')}} {{__('custom.comment')}}">
                                        @error('comments')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>


                                    <div class="col-12">
                                        <button class="btn btn-primary" type="submit">{{!$edit ? __('custom.submit') : __('Oppdater')}}</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--end row-->
        </div>
    </div>
@endsection

@section("script")
    <script src="{{asset('assets/plugins/select2/js/select2.min.js')}}"></script>
    <script>
        // Example starter JavaScript for disabling form submissions if there are invalid fields
        (function () {
            'use strict'
        })()
        $('.single-select').select2({
            theme: 'bootstrap4',
            width: $(this).data('width') ? $(this).data('width') : $(this).hasClass('w-100') ? '100%' : 'style',
            placeholder: $(this).data('placeholder'),
            allowClear: Boolean($(this).data('allow-clear')),
        });
    </script>
@endsection
