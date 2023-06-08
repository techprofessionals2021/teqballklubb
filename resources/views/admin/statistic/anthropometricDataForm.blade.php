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
                <div class="breadcrumb-title pe-3">{{__('custom.anthropometric')}}</div>
                <div class="ps-3">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb mb-0 p-0">
                            <li class="breadcrumb-item"><a href="javascript:;"><i class="bx bx-home-alt"></i></a>
                            </li>
                            <li class="breadcrumb-item active" aria-current="page">{{__('custom.anthropometric')}}
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
                                    <input type="hidden" name="anthroDataId" value="{{$anthropometricData->id}}">
                                    @endif
                                    <input type="hidden" name="userId" value="{{$userInfo->id}}">
                                    <div class="col-md-4">
                                        <label for="status" class="form-label">{{__('custom.status')}}</label>
                                        <select class="single-select" name="status" id="status">
                                                <option {{$anthropometricData->status == 'pre' ? 'selected' : ''}} value="pre">PRE</option>
                                                <option {{$anthropometricData->status == 'mid' ? 'selected' : ''}} value="mid">MID</option>
                                                <option {{$anthropometricData->status == 'post' ? 'selected' : ''}} value="post">POST</option>
                                        </select>
                                        @error('status')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>

{{--                                    <div class="col-md-4">--}}
{{--                                        <label for="height" class="form-label">{{__('custom.fpNr')}} *</label>--}}
{{--                                        <input type="number" name="fpr_nr" class="form-control" id="height" value="{{ old('fpr_nr',$anthropometricData->fpr_nr) }}" placeholder="Enter FP_Nr" required>--}}
{{--                                        @error('fp_nr')--}}
{{--                                        <strong>{{ $message }}</strong>--}}
{{--                                        @enderror--}}
{{--                                    </div>--}}
                                    <div class="col-md-4">
                                        <label for="date" class="form-label">{{__('custom.date')}}</label>
                                        <input type="date" name="date" class="form-control" id="date" value="{{ old('date',$anthropometricData->date) }}" placeholder="{{__('custom.enter')}} {{__('custom.date')}}">
                                        @error('date')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>
                                    <div class="col-md-4">
                                        <label for="height" class="form-label">{{__('custom.height')}} (cm) *</label>
                                        <input type="number" name="height" class="form-control" id="height" step=".01" value="{{ old('height',$anthropometricData->height) }}" placeholder="{{__('custom.enter')}} {{__('custom.height')}} (cm)" required>
                                        @error('height')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>

                                    <div class="col-md-4">
                                        <label for="weight" class="form-label">{{__('custom.weight')}} (Kg) *</label>
                                        <input type="number" name="weight" class="form-control" id="weight" step=".01" value="{{ old('weight',$anthropometricData->weight) }}" placeholder="{{__('custom.enter')}} {{__('custom.weight')}} (kg)" required>
                                        @error('weight')
                                        <strong>{{ $message }}</strong>
                                        @enderror

                                    </div>

                                    <div class="col-md-4">
                                        <label for="weight" class="form-label">{{__('custom.motivation')}}</label>
                                        <input type="number" name="motivation" class="form-control" id="motivation" step=".01" value="{{ old('motivation',$anthropometricData->motivation) }}" placeholder="{{__('custom.enter')}} {{__('custom.motivation')}}">
                                        @error('motivation')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>

                                    <div class="col-md-4">
                                        <label for="weight" class="form-label">{{__('custom.akt_scale')}}</label>
                                        <input type="number" name="akt_scale" class="form-control" id="akt_scale" step=".01" value="{{ old('akt_scale',$anthropometricData->akt_scale) }}" placeholder="{{__('custom.enter')}} {{__('custom.akt_scale')}}">
                                        @error('akt_scale')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>

                                    <div class="col-md-4">
                                        <label for="age" class="form-label">{{__('custom.age')}}</label>
                                        <input type="number" name="age" class="form-control" id="age" step=".01" value="{{ old('age',$anthropometricData->age) }}" placeholder="{{__('custom.enter')}} {{__('custom.age')}}">
                                        @error('age')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>


                                    {{-- <div class="col-md-4">
                                        <label for="ant_train" class="form-label">{{__('custom.ant_train')}}</label>
                                        <input type="text" name="ant_train" class="form-control" id="ant_train" step=".01" value="{{ old('ant_train',$anthropometricData->ant_train) }}" placeholder="Enter Ant Train">
                                        @error('ant_train')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div> --}}
                                    <div class="col-md-4">
                                        <label for="damage_c" class="form-label">{{__('custom.damage_c')}}</label>
                                        <input type="number" name="damage_c" class="form-control" id="damage_c" step=".01" value="{{ old('damage_c',$anthropometricData->damage_c) }}" placeholder="{{__('custom.enter')}} {{__('custom.damage_c')}}">
                                        @error('damage_c')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>
                                    <div class="col-md-4">
                                        <label for="damage_nc" class="form-label">{{__('custom.damage_nc')}}</label>
                                        <input type="number" name="damage_nc" class="form-control" id="damage_nc" step=".01" value="{{ old('damage_nc',$anthropometricData->damage_nc) }}" placeholder="{{__('custom.enter')}} {{__('custom.damage_nc')}}">
                                        @error('damage_nc')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>

                                    <div class="col-md-4">
                                        <label for="damage_nc" class="form-label">{{__('custom.leg_length')}}</label>
                                        <input type="number" name="leg_length" class="form-control" id="leg_length" step=".01" value="{{ old('leg_length',$anthropometricData->leg_length) }}" placeholder="{{__('custom.enter')}} {{__('custom.leg_length')}}">
                                        @error('leg_length')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>

                                    <div class="col-md-4">
                                        <label for="damage_nc" class="form-label">{{__('custom.shoe_size')}}</label>
                                        <input type="number" name="shoe_size" class="form-control" id="shoe_size" step=".01" value="{{ old('shoe_size',$anthropometricData->shoe_size) }}" placeholder="{{__('custom.enter')}} {{__('custom.shoe_size')}}">
                                        @error('shoe_size')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>


                                    <div class="col-md-4">
                                        <label for="damage_nc" class="form-label">{{__('custom.foot_size')}}</label>
                                        <input type="number" name="foot_size" class="form-control" id="foot_size" step=".01" value="{{ old('foot_size',$anthropometricData->foot_size) }}" placeholder="{{__('custom.enter')}} {{__('custom.foot_size')}}">
                                        @error('foot_size')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>


{{--                                    <div class="col-md-4">--}}
{{--                                        <label for="damage_nc" class="form-label">{{__('custom.position')}}</label>--}}
{{--                                        <input type="number" name="position" class="form-control" id="position" step=".01" value="{{ old('position',$anthropometricData->position) }}" placeholder="{{__('custom.enter')}} {{__('custom.position')}}">--}}
{{--                                        @error('position')--}}
{{--                                        <strong>{{ $message }}</strong>--}}
{{--                                        @enderror--}}
{{--                                    </div>--}}
                                    <div class="col-md-4">
                                        <label for="position" class="form-label">{{__('custom.position')}} </label>
                                        <select class="single-select" name="position" id="position" required>
                                            @forelse ($posisjon_fotball as $item)
                                                <option {{$anthropometricData->position == $item ? 'selected' : ''}} value="{{$item}}">{{$item}}</option>
                                            @empty
                                                <option disabled value="">posisjon fotball</option>
                                            @endforelse
                                        </select>
                                        @error('position')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>



                                    <div class="col-md-4">
                                        <label for="note" class="form-label">% {{__('custom.oppm')}}</label>
                                        <input type="number" name="note" class="form-control" id="note" step=".01" value="{{ old('note',$anthropometricData->note) }}" placeholder="{{__('custom.enter')}} Oppm">
                                        @error('note')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>


                                    <div class="col-md-4">
                                        <label for="damage_nc" class="form-label">{{__('custom.fat')}} %</label>
                                        <input type="number" name="fat" class="form-control" id="fat" step=".01" value="{{ old('fat',$anthropometricData->fat) }}" placeholder="{{__('custom.enter')}} {{__('custom.fat')}} %">
                                        @error('fat')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>
                                    {{-- <div class="col-md-4">
                                        <label for="vurd_borg" class="form-label">% {{__('custom.vurdBorg')}}</label>
                                        <input type="text" name="vurd_borg" class="form-control" id="vurd_borg" step=".01" value="{{ old('vurd_borg',$anthropometricData->vurdBorg) }}" placeholder="Enter VurdBorg">
                                        @error('vurd_borg')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>
                                    <div class="col-md-4">
                                        <label for="vurdFys" class="form-label">% {{__('custom.vurdFys')}}</label>
                                        <input type="text" name="vurdFys" class="form-control" id="vurdFys" step=".01" value="{{ old('vurdFys',$anthropometricData->VurdFys) }}" placeholder="Enter VurdFys">
                                        @error('vurdFys')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div> --}}

                                    {{-- <div class="col-md-4">
                                        <label for="jobs" class="form-label">% {{__('custom.jobs')}}</label>
                                        <input type="text" name="jobs" class="form-control" id="jobs" step=".01" value="{{ old('jobs',$anthropometricData->jobs) }}" placeholder="Enter Jobs">
                                        @error('jobs')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div> --}}
                                    {{-- <div class="col-md-4">
                                        <label for="r_reported" class="form-label">% {{__('custom.r_reported')}}</label>
                                        <input type="text" name="r_reported" class="form-control" id="r_reported" step=".01" value="{{ old('r_reported',$anthropometricData->r_reported) }}" placeholder="Enter R reported">
                                        @error('r_reported')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>
                                    <div class="col-md-4">
                                        <label for="internship" class="form-label">% {{__('custom.internship')}}</label>
                                        <input type="text" name="internship" class="form-control" id="internship" step=".01" value="{{ old('internship',$anthropometricData->internship) }}" placeholder="Enter Internship">
                                        @error('internship')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div> --}}

                                    {{-- <div class="col-md-12">
                                        <label for="comments" class="form-label">{{__('custom.comments')}}</label>
                                        <input type="text" name="comments" class="form-control" id="comments" value="{{ old('comments',$anthropometricData->comments) }}" placeholder="Enter Comments">
                                        @error('comments')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div> --}}

{{--                                    <div class="col-md-6">
                                        <label for="s_dribble_right" class="form-label">{{__('custom.s_dribble_right')}}</label>
                                        <input type="number" name="s_dribble_right" class="form-control" id="s_dribble_right" step=".01" value="{{ old('s_dribble_right',$anthropometricData->s_dribble_right) }}" placeholder="{{__('custom.enter')}} {{__('custom.s_dribble_right')}}">
                                        @error('s_dribble_right')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                        </div>--}}
{{--                                    <div class="col-md-6">
                                        <label for="s_dribble_left" class="form-label">{{__('custom.s_dribble_left')}}</label>
                                        <input type="number" name="s_dribble_left" class="form-control" id="s_dribble_left" step=".01" value="{{ old('s_dribble_left',$anthropometricData->s_dribble_left) }}" placeholder="{{__('custom.enter')}} {{__('custom.s_dribble_left')}}">
                                        @error('s_dribble_left')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                        </div>--}}



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
