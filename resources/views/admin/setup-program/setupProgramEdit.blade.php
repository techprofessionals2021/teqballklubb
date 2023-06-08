@extends("layouts.app")
@section("wrapper")
    <div class="page-wrapper">
        <div class="page-content">
            <!--breadcrumb-->
            <div class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">
                <div class="breadcrumb-title pe-3">{{__('custom.userSetupProgram')}}</div>
                <div class="ps-3">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb mb-0 p-0">
                            <li class="breadcrumb-item"><a href="{{route('fullcalender.id','all')}}"><i class="bx bx-home-alt"></i></a>
                            </li>
                            <li class="breadcrumb-item active" aria-current="page">{{__('custom.userSetupProgram')}}
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
                    {{--                            <h6 class="mb-0 text-uppercase">Profession Section</h6>--}}
                    <hr/>
                    <div class="card">
                        <div class="card-body">
                            <div class="p-4 border rounded">
                                <form class="row g-3" method="POST" action="{{ $route }}">
                                    @csrf
{{--                                    @if($edit) @method('PUT') @endif--}}
                                    <input type="hidden" name="setupProgramId" value="{{$setupProgramId}}">
                                    <input type="hidden" name="userId" value="{{$userId}}">

                                    <div class="col-md-4">
                                        <label for="set" class="form-label">{{__('custom.set')}}</label>
                                        <input type="number" name="set" class="form-control" id="set"
                                               value="{{ old('set',$userProgram->set) }}" min="0"
                                               placeholder="Skriv inn antall sett">
                                        @error('set')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>
                                    <div class="col-md-4">
                                        <label for="rep" class="form-label">{{__('custom.rep')}}</label>
                                        <input type="number" name="rep" class="form-control" id="rep"
                                               value="{{ old('rep',$userProgram->rep) }}" min="0"
                                               placeholder="Skriv inn antall rep">
                                        @error('rep')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>
                                    <div class="col-md-4">
                                        <label for="sort" class="form-label">{{__('Øvelsesnummer')}}</label>
                                        <input type="number" name="sort" class="form-control" id="sort"
                                               value="{{ old('sort',$userProgram->sort) }}" min="1"
                                               placeholder="Skriv inn øvelsesnummer">
                                        @error('sort')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>

                                    <div class="col-md-4">
                                        <label for="distance" class="form-label">{{__('custom.distance')}}</label>
                                        <input type="number" name="distance" class="form-control" id="distance"
                                               value="{{ old('distance',$userProgram->distance) }}" min="0"
                                               placeholder="Skriv inn distanse (m)">
                                        @error('distance')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>
{{--                                    <div class="col-md-6">--}}
{{--                                        <label for="exerciseNo" class="form-label">{{__('custom.exercise_no')}}</label>--}}
{{--                                        <input type="number" name="exerciseNo" class="form-control" id="exerciseNo"--}}
{{--                                               value="{{ old('exerciseNo',$userProgram->exercise_no) }}" min="1"--}}
{{--                                               placeholder="Enter Exercise No">--}}
{{--                                        @error('exerciseNo')--}}
{{--                                        <strong>{{ $message }}</strong>--}}
{{--                                        @enderror--}}
{{--                                    </div>--}}

                                    <div class="col-md-4">
                                        <label for="duration" class="form-label">{{__('custom.duration')}}</label>
                                        <input type="text" name="duration" class="form-control" id="duration"
                                               data-inputmask="'mask': '99:99'"
                                               value="{{ old('duration',$userProgram->duration) }}"
                                               placeholder="Skriv inn variget (min:sek)">
                                        @error('duration')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>
                                    <div class="col-md-4">
                                        <label for="break" class="form-label">{{__('custom.break')}}</label>
                                        <input type="text" name="break" class="form-control" id="break"
                                               data-inputmask="'mask': '99:99'"
                                               value="{{ old('break',$userProgram->break) }}"
                                               placeholder="Skriv inn pause (min:sek)">
                                        @error('break')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>



                                    <div class="col-md-12">
                                        <label for="description" class="form-label">{{__('custom.description')}}</label>
                                        <input type="text" name="description" class="form-control" id="description"
                                               value="{{ old('description',$userProgram->description) }}"
                                               placeholder="Enter Description">
                                        @error('description')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>

                                    <div class="col-12">
                                        <button class="btn btn-primary" type="submit">Oppdater</button>
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
    <script src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/3/jquery.inputmask.bundle.js"></script>
    <script>
        // Example starter JavaScript for disabling form submissions if there are invalid fields
        (function () {
            'use strict'
        })()
        $(":input").inputmask();
    </script>
@endsection
