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
                <div class="breadcrumb-title pe-3">{{__('custom.video')}}</div>
                <div class="ps-3">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb mb-0 p-0">
                            <li class="breadcrumb-item"><a href="javascript:;"><i class="bx bx-home-alt"></i></a>
                            </li>
                            <li class="breadcrumb-item active" aria-current="page">{{__('custom.video')}}
                                / {{!$edit ? __('custom.submitVideo') : __('custom.edit')}}</li>
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
                                    <div class="col-md-4">
                                        <label for="name"
                                               class="form-label">{{__('custom.video')}} {{__('custom.name')}} *</label>
                                        <input type="text" name="name" class="form-control" id="name"
                                               value="{{ old('name',$video->name) }}" minlength="3"
                                               placeholder="{{__('custom.enterName')}}" required>
                                        @error('name')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>
                                    <div class="col-md-4">
                                        <label for="type" class="form-label">{{__('Type')}} *</label>
                                        <select class="single-select" name="type" id="type" required>
                                            <option value="video">{{__('custom.video')}}</option>
                                            <option value="document">{{__('custom.document')}}</option>
                                        </select>
                                        @error('type')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>
                                    <div class="col-md-4">
                                        <label for="category" class="form-label">{{__('custom.type')}} *</label>
{{--                                        <select class="single-select" name="category" id="category" required>
                                            @forelse ($categories as $item)
                                                <option
                                                    {{$video->exercise_category_id == $item->id ? 'selected' : ''}} value="{{$item->id}}">{{ ucfirst($item->name)}}</option>
                                            @empty
                                                <option disabled value="">Not Found!</option>
                                            @endforelse
                                        </select>--}}
                                        <input class="form-control"
                                               value="{{ old('category' ,$selectedCategory->name ?? '') }}" list="category_list"
                                               id="category" name="category"
                                               type="text" placeholder="{{__('custom.type')}}" required/>
                                        <datalist id="category_list">
{{--                                            @if($categories)--}}
{{--                                                @foreach($clients as $client)--}}
{{--                                                    <option value="{{$client->email}}">--}}
{{--                                                @endforeach--}}
{{--                                            @endif--}}
                                            @forelse ($categories as $item)
                                                <option value="{{$item->name}}">
                                            @empty
                                                <option disabled value="Not Found!">
                                            @endforelse
                                        </datalist>
                                        @error('category')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>

                                    <div class="col-md-6">
                                        <label for="video_sd"
                                               class="form-label">{{__('custom.video')}} {{__('custom.sd')}} *</label>
                                        <input type="text" name="video_sd" class="form-control" id="video_sd"
                                               value="{{ old('video_sd',$video->video_sd) }}" minlength="3"
                                               placeholder="Video Link (SD)." required>
                                        @error('video_sd')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>
                                    <div class="col-md-6">
                                        <label for="video_hd"
                                               class="form-label">{{__('custom.video')}} {{__('custom.hd')}} *</label>
                                        <input type="text" name="video_hd" class="form-control" id="video_hd"
                                               value="{{ old('video_hd',$video->video_hd) }}" minlength="3"
                                               placeholder="Video Link (HD)." required>
                                        @error('video_hd')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>

{{--                                    <div class="col-md-12">--}}
{{--                                        <label for="description" class="form-label">{{__('custom.description')}} </label>--}}
{{--                                        <input type="text" name="description" class="form-control" id="description"--}}
{{--                                               value="{{ old('description',$video->description) }}"--}}
{{--                                               placeholder="{{__('custom.description')}}...">--}}
{{--                                        @error('description')--}}
{{--                                        <strong>{{ $message }}</strong>--}}
{{--                                        @enderror--}}
{{--                                    </div>--}}


                                    <div class="col-12">
                                        <button class="btn btn-primary" type="submit"> @if($edit) {{__('custom.update')}} @else {{__('custom.submit')}} {{__('custom.video')}} @endif </button>
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
