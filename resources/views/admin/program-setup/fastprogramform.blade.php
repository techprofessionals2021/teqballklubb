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
                <div class="breadcrumb-title pe-3">{{__('custom.program')}}</div>
                <div class="ps-3">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb mb-0 p-0">
                            <li class="breadcrumb-item"><a href="javascript:;"><i class="bx bx-home-alt"></i></a>
                            </li>
                            <li class="breadcrumb-item active" aria-current="page">{{__('custom.program')}}
                                / Legg til program med faste programmer</li>
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
                                               class="form-label">Programnavn *</label>
                                        <input type="text" name="name" class="form-control" id="name"
                                               value="{{ old('name',$programSetup->name) }}" minlength="3"
                                               placeholder="{{__('custom.enterProgramName')}}" required>
                                        @error('name')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>

                                    <div class="col-md-6">
                                        <label for="group" class="form-label">{{__('custom.group')}} *</label>
                                        <select class="single-select" name="group" id="group" required>
                                            @forelse ($groups as $item)
                                                <option
                                                    {{$programSetup->group_id == $item->id ? 'selected' : ''}} value="{{$item->id}}">{{ ucfirst($item->name)}}</option>
                                            @empty
                                                <option disabled value="">Not Found!</option>
                                            @endforelse
                                        </select>
                                        @error('group')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>

{{--                                    <div class="col-md-6">--}}
{{--                                        <label for="category" class="form-label">{{__('custom.type')}} *</label>--}}
{{--                                        <select class="single-select" name="category" id="category" required>--}}
{{--                                            @forelse ($exerciseCategories as $item)--}}
{{--                                                <option--}}
{{--                                                    {{$programSetup->exercise_category_id == $item->id ? 'selected' : ''}} value="{{$item->id}}">{{ ucfirst($item->name)}}</option>--}}
{{--                                            @empty--}}
{{--                                                <option disabled value="">Not Found!</option>--}}
{{--                                            @endforelse--}}
{{--                                        </select>--}}
{{--                                        @error('category')--}}
{{--                                        <strong>{{ $message }}</strong>--}}
{{--                                        @enderror--}}
{{--                                    </div>--}}

                                    <div class="col-md-6">
                                        <label for="practitioner" class="form-label">{{__('custom.practitioner')}} *</label>
                                        <select class="single-select" name="practitioner" id="practitioner" required>
                                        </select>
                                        @error('practitioner')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>

                                    <div class="col-md-6">
                                        <label for="program" class="form-label">{{__('Faste programmer')}} *</label>
                                        <select class="single-select" name="program" id="program" required>
                                            @forelse ($fastPrograms as $item)
                                                {{--                                                <option {{$programSetup->group_id == $item->id ? 'selected' : ''}} value="{{$item->id}}">{{ ucfirst($item->name)}}</option>--}}
                                                <option value="{{$item->id}}">{{ ucfirst($item->name)}}</option>
                                            @empty
                                                <option disabled value="">Not Found!</option>
                                            @endforelse
                                        </select>
                                        @error('program')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>

{{--                                    <div class="col-md-4">--}}
{{--                                        <label for="sort" class="form-label">{{__('custom.sort')}} *</label>--}}
{{--                                        <input type="number" name="sort" class="form-control" id="sort"--}}
{{--                                               value="{{ old('sort',$programSetup->sort) }}" min="1"--}}
{{--                                               placeholder="{{__('custom.enterSort')}}" required>--}}
{{--                                        @error('sort')--}}
{{--                                        <strong>{{ $message }}</strong>--}}
{{--                                        @enderror--}}
{{--                                    </div>--}}

{{--                                    <div class="col-md-12">--}}
{{--                                        <label for="comment" class="form-label">{{__('custom.comment')}} *</label>--}}
{{--                                        <input type="text" name="comment" class="form-control" id="comment"--}}
{{--                                               value="{{ old('comment',$programSetup->comment) }}"--}}
{{--                                               placeholder="{{__('custom.enter')}} {{__('custom.comment')}}">--}}
{{--                                        @error('comment')--}}
{{--                                        <strong>{{ $message }}</strong>--}}
{{--                                        @enderror--}}
{{--                                    </div>--}}

                                    <div class="col-12">
                                        <button class="btn btn-primary" type="submit"> @if($edit) Oppdater program @else {{__('custom.submitProgram')}} @endif</button>
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
        function makeAjaxCall() {
            var id =  $("#group").find(":selected").val();
            $.ajax({
                type: "post",
                dataType: "json",
                url: "{{route('getUsersByGroupId')}}",
                data: {group_id: id, _token: "{{csrf_token()}}"},
                success: function (response) {
                    // console.log(response);
                    if (response.status == 0) {
                        toastr.error("No data found");
                        $("#practitioner").html("");
                    } else {
                        $("#practitioner").html(response.body);
                    }
                },
            });
        }

        $("#group").change(function (e) {
            e.preventDefault();
            makeAjaxCall();
        });
        makeAjaxCall();
    </script>
@endsection
