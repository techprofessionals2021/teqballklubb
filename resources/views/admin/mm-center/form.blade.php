@extends("layouts.app")

@section("wrapper")
    <div class="page-wrapper">
        <div class="page-content">
            <!--breadcrumb-->
            <div class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">
                <div class="breadcrumb-title pe-3">{{__('custom.mmCenter')}}</div>
                <div class="ps-3">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb mb-0 p-0">
                            <li class="breadcrumb-item"><a href="{{route('fullcalender.id','all')}}"><i class="bx bx-home-alt"></i></a>
                            </li>
                            <li class="breadcrumb-item active" aria-current="page">{{__('custom.mmCenter')}}
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
                                    @csrf @if($edit) @method('PUT') @endif
                                    <div class="col-md-6">
                                        <label for="name"
                                               class="form-label">{{__('custom.mmCenter')}} {{__('custom.name')}}
                                            *</label>
                                        <input type="text" name="name" class="form-control" id="name"
                                               value="{{ old('name',$mmCenter->name) }}" minlength="3"
                                               placeholder="{{__('custom.enter')}} {{__('custom.name')}}" required>
                                        @error('name')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>
                                    <div class="col-md-6">
                                        <label for="address" class="form-label">{{__('custom.address')}}</label>
                                        <input type="text" name="address" class="form-control" id="address"
                                               value="{{ old('address',$mmCenter->address) }}"
                                               placeholder="{{__('custom.enter')}} {{__('custom.address')}}" required>
                                        @error('address')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>

                                    <div class="col-md-6">
                                        <label for="postalCode" class="form-label">{{__('custom.postalCode')}}</label>
                                        <input type="text" name="postalCode" class="form-control" id="postalCode"
                                               value="{{ old('postalCode',$mmCenter->postal_code) }}"
                                               placeholder="{{__('custom.enter')}} {{__('custom.postalCode')}}" required>
                                        @error('postalCode')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>
                                    <div class="col-md-6">
                                        <label for="city" class="form-label">{{__('custom.city')}}</label>
                                        <input type="text" name="city" class="form-control" id="city"
                                               value="{{ old('city',$mmCenter->city) }}" placeholder="{{__('custom.enter')}} {{__('custom.city')}}"
                                               required>
                                        @error('city')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>


                                    <div class="col-md-6">
                                        <label for="telephone" class="form-label">{{__('custom.telephone')}}</label>
                                        <input type="tel" name="telephone" class="form-control" id="telephone"
                                               value="{{ old('telephone',$mmCenter->telephone) }}"
                                               placeholder="{{__('custom.enter')}} {{__('custom.telephone')}}" required>
                                        @error('telephone')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>
{{--                                    <div class="col-md-6">--}}
{{--                                        <label for="is_active" class="form-label">{{__('custom.is_active')}}</label>--}}
{{--                                        <input class="form-check-input" name="is_active" type="checkbox"--}}
{{--                                               {{$mmCenter->is_active ? 'checked' : ''}} value="active" id="is_active">--}}
{{--                                        @error('is_active')--}}
{{--                                        <strong>{{ $message }}</strong>--}}
{{--                                        @enderror--}}
{{--                                    </div>--}}

                                    <div class="col-md-12">
                                        <label for="description" class="form-label">{{__('custom.description')}}</label>
                                        <textarea name="description" class="form-control" id="description" placeholder="{{__('custom.enter')}} {{__('custom.description')}}">{{old('description',$mmCenter->description)}}</textarea>
                                        @error('description')
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
    <script>
        // Example starter JavaScript for disabling form submissions if there are invalid fields
        (function () {
            'use strict'
        })()
    </script>
@endsection
