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
                <div class="breadcrumb-title pe-3">{{__('custom.statsTester')}}</div>
                <div class="ps-3">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb mb-0 p-0">
                            <li class="breadcrumb-item"><a href="javascript:;"><i class="bx bx-home-alt"></i></a>
                            </li>
                            <li class="breadcrumb-item active" aria-current="page">{{__('custom.statsTester')}}
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
                                    <input type="hidden" name="statusTesterId" value="{{$statsTesterData->id}}">
                                    @endif
                                    <input type="hidden" name="userId" value="{{$userInfo->id}}">
                                    <div class="col-md-4">
                                        <label for="status" class="form-label">{{__('custom.status')}}</label>
                                        <select class="single-select" name="status" id="status">
                                                <option {{$statsTesterData->status == 'pre' ? 'selected' : ''}} value="pre">PRE</option>
                                                <option {{$statsTesterData->status == 'mid' ? 'selected' : ''}} value="mid">MID</option>
                                                <option {{$statsTesterData->status == 'post' ? 'selected' : ''}} value="post">POST</option>
                                        </select>
                                        @error('status')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>
                                    <div class="col-md-4">
                                        <label for="step_test_time" class="form-label">{{__('custom.stepTestTime')}} (mins)</label>
                                        <input type="number" step=".01" name="step_test_time" class="form-control" id="step_test_time" value="{{ old('step_test_time',$statsTesterData->step_test_time) }}" placeholder="{{__('custom.stepTestTime')}} (mins)">
                                        @error('step_test_time')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>
                                    <div class="col-md-4">
                                        <label for="step_test_count" class="form-label">{{__('custom.stepTestCount')}} </label>
                                        <input type="number" step=".01" name="step_test_count" class="form-control" id="step_test_count" value="{{ old('step_test_count',$statsTesterData->step_test_count) }}" placeholder="{{__('custom.enter')}} {{__('custom.stepTestCount')}}">
                                        @error('step_test_count')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>

                                    <div class="col-md-4">
                                        <label for="bicycle_time" class="form-label">{{__('custom.bicycleTime')}} (min)</label>
                                        <input type="number" step=".01" name="bicycle_time" class="form-control" id="bicycle_time" value="{{ old('bicycle_time',$statsTesterData->bicycle_time) }}" placeholder="{{__('custom.enter')}} {{__('custom.bicycleTime')}} (min)">
                                        @error('bicycle_time')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>
                                    <div class="col-md-4">
                                        <label for="bicycle_dist" class="form-label">{{__('custom.bicycleDist')}} (m)</label>
                                        <input type="number" step=".01" name="bicycle_dist" class="form-control" id="bicycle_dist" value="{{ old('bicycle_dist',$statsTesterData->bicycle_dist) }}" placeholder="{{__('custom.enter')}} {{__('custom.bicycleDist')}} (m)">
                                        @error('bicycle_dist')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>
                                    <div class="col-md-4">
                                        <label for="funk_strength" class="form-label">{{__('custom.funkStrength')}}</label>
                                        <input type="number" step=".01" name="funk_strength" class="form-control" id="funk_strength" value="{{ old('funk_strength',$statsTesterData->funk_strength) }}" placeholder="{{__('custom.enter')}} {{__('custom.funkStrength')}}">
                                        @error('funk_strength')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>

                                    <div class="col-md-4">
                                        <label for="cooperes_dist" class="form-label">{{__('custom.cooperesDist')}} (m)</label>
                                        <input type="number" step=".01" name="cooperes_dist" class="form-control" id="cooperes_dist" value="{{ old('cooperes_dist',$statsTesterData->cooperes_dist) }}" placeholder="{{__('custom.enter')}} {{__('custom.cooperesDist')}} (m)">
                                        @error('cooperes_dist')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>
                                    <div class="col-md-4">
                                        <label for="cooperes_count" class="form-label">{{__('custom.cooperesCount')}}</label>
                                        <input type="number" step=".01" name="cooperes_count" class="form-control" id="cooperes_count" value="{{ old('cooperes_count',$statsTesterData->cooperes_count) }}" placeholder="{{__('custom.enter')}} {{__('custom.cooperesCount')}}">
                                        @error('cooperes_count')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>
                                    <div class="col-md-4">
                                        <label for="cooperes_time" class="form-label">{{__('custom.cooperesTime')}} (min)</label>
                                        <input type="number" step=".01" name="cooperes_time" class="form-control" id="cooperes_time" value="{{ old('cooperes_time',$statsTesterData->cooperes_time) }}" placeholder="{{__('custom.enter')}} {{__('custom.cooperesTime')}} (min)">
                                        @error('cooperes_time')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>


                                    <div class="col-md-12">
                                        <label for="comments" class="form-label">Kommentar</label>
                                        <input type="text" name="comments" class="form-control" id="comments" value="{{ old('comments',$statsTesterData->comments) }}" placeholder="Skriv inn kommentar">
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
