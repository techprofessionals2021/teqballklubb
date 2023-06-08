@extends("layouts.app")
@section("style")
    <link href="{{asset('assets/plugins/select2/css/select2.min.css')}}" rel="stylesheet"/>
    <link href="{{asset('assets/plugins/select2/css/select2-bootstrap4.css')}}" rel="stylesheet"/>
@endsection
@section("wrapper")
    <div class="page-wrapper">
        <div class="page-content">
            <!--breadcrumb-->
            <div class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">
                <div class="breadcrumb-title pe-3">{{__('custom.programWithVideo')}}</div>
                <div class="ps-3">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb mb-0 p-0">
                            <li class="breadcrumb-item"><a href="{{route('fullcalender.id','all')}}"><i class="bx bx-home-alt"></i></a>
                            </li>
                            <li class="breadcrumb-item active" aria-current="page">{{__('custom.programWithVideo')}}
                                / {{!$edit ? __('Legg til') : __('custom.edit')}}</li>
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
                                        <label for="name" class="form-label">{{__('custom.exerciseName2')}} *</label>
                                        <input type="text" name="name" class="form-control" id="name"
                                               value="{{ old('name',$programWithVideo->name) }}" minlength="3"
                                               placeholder="{{__('custom.enter')}} {{__('custom.exerciseName2')}}" required>
                                        @error('name')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>
                                    <div class="col-md-6">
                                        <label for="video" class="form-label">{{__('custom.video')}} *</label>
                                        <select class="single-select" name="video" id="video" required>
                                            @forelse ($videos as $item)
                                                <option
                                                    {{$programWithVideo->video_id == $item->id ? 'selected' : ''}} value="{{$item->id}}">{{ ucfirst($item->name)}}</option>
                                            @empty
                                                <option disabled value="">Not Found!</option>
                                            @endforelse
                                        </select>
                                        @error('video')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>

                                    <div class="col-md-6">
                                        <label for="category" class="form-label">{{__('custom.type')}} *</label>
                                        <select class="single-select" name="category" id="category" required>
                                            @forelse ($categories as $item)
                                                <option
                                                    {{$programWithVideo->exercise_category_id == $item->id ? 'selected' : ''}} value="{{$item->id}}">{{ ucfirst($item->name)}}</option>
                                            @empty
                                                <option disabled value="">Not Found!</option>
                                            @endforelse
                                        </select>
                                        @error('category')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>
                                    <div class="col-md-6">
                                        <label for="load" class="form-label">{{__('custom.load')}} *</label>
                                        <select class="single-select" name="load" id="load" required>
                                            @forelse ($load as $item)
                                                <option
                                                    {{$programWithVideo->load == $item ? 'selected' : ''}} value="{{$item}}">{{ ucfirst($item)}}</option>
                                            @empty
                                                <option disabled value="">Not Found!</option>
                                            @endforelse
                                        </select>
                                        @error('load')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>

                                    <div class="col-md-6">
                                        <label for="sort" class="form-label">{{__('Øvelsesnummer')}} *</label>
                                        <input type="number" name="sort" class="form-control" id="sort"
                                               value="{{ old('sort',$programWithVideo->sort) }}" min="1"
                                               placeholder="{{__('custom.enter')}} Øvelsesnummer" required>
                                        @error('sort')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>
                                    <div class="col-md-6">
                                        <label for="description" class="form-label">{{__('custom.description')}}</label>
{{--                                        <div class="form-group">--}}
                                            <textarea placeholder="{{__('custom.description')}}..." name="description" class="form-control" id="description" rows="5">{{old('description',$programWithVideo->description ?? '')}}</textarea>
{{--                                        </div>--}}
{{--                                        <input type="text" name="description" class="form-control" id="description"--}}
{{--                                               value="{{ old('description',$programWithVideo->description) }}"--}}
{{--                                               placeholder="{{__('custom.description')}}...">--}}
                                        @error('description')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>

                                    <div class="col-md-6">
                                        <label for="is_active" class="form-label">{{__('custom.is_active')}}</label>
                                        <input class="form-check-input" name="is_active" type="checkbox" checked {{$programWithVideo->is_active ? 'checked' : ''}} value="active" id="is_active">
                                        @error('is_active')
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
        $('.single-select').select2({
            theme: 'bootstrap4',
            width: $(this).data('width') ? $(this).data('width') : $(this).hasClass('w-100') ? '100%' : 'style',
            placeholder: $(this).data('placeholder'),
            allowClear: Boolean($(this).data('allow-clear')),
        });
        // Example starter JavaScript for disabling form submissions if there are invalid fields
        (function () {
            'use strict'
        })()
    </script>
@endsection
