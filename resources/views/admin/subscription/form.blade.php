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
                <div class="breadcrumb-title pe-3">{{__('custom.subscription')}}</div>
                <div class="ps-3">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb mb-0 p-0">
                            <li class="breadcrumb-item"><a href="javascript:;"><i class="bx bx-home-alt"></i></a>
                            </li>
                            <li class="breadcrumb-item active" aria-current="page">{{__('custom.subscription')}}
                                / {{!$edit ? __('custom.addSubscription') : __('custom.edit')}}</li>
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

{{--                                    <div class="col-md-4">--}}
{{--                                        <label for="group" class="form-label">{{__('custom.group')}} *</label>--}}
{{--                                        <select class="single-select" name="group" id="group" required>--}}
{{--                                            @forelse ($groups as $item)--}}
{{--                                                <option--}}
{{--                                                    {{$subscription->group_id == $item->id ? 'selected' : ''}} value="{{$item->id}}">{{ ucfirst($item->name)}}</option>--}}
{{--                                            @empty--}}
{{--                                                <option disabled value="">Not Found!</option>--}}
{{--                                            @endforelse--}}
{{--                                        </select>--}}
{{--                                        @error('group')--}}
{{--                                        <strong>{{ $message }}</strong>--}}
{{--                                        @enderror--}}
{{--                                    </div>--}}

                                    <div class="col-md-6">
                                        <label for="subscription_name" class="form-label">Abonnement Navn *</label>
                                        <input type="text" name="subscription_name" class="form-control" id="subscription_name"
                                               value="{{ old('subscription_name',$subscription->subscription_name) }}"
                                               placeholder="{{__('custom.enter')}} Abonnement navn" required>
                                        @error('subscription_name')
{{--                                        <strong>{{ $message }}</strong>--}}
                                        @enderror
                                    </div>

                                    <div class="col-md-6">
                                        <label for="programId" class="form-label">{{__('Program')}} *</label>
                                        <select class="multiple-select" data-placeholder="Program" multiple="multiple" name="programId[]" id="programId" required>
                                            @forelse ($allSetupFixedPrograms as $item)
                                                <option
{{--                                                    {{$subscription->group_id == $item->id ? 'selected' : ''}} value="{{$item->id}}">{{ ucfirst($item->name)}}--}}
                                                    {{in_array($item->id,$selectedProgramItems) ? 'selected' : ''}} value="{{$item->id}}">{{ ucfirst($item->name)}}
                                                </option>
                                            @empty
                                                <option disabled value="">Not Found!</option>
                                            @endforelse
                                        </select>
{{--                                        <select class="single-select" name="programId" id="programId" required>--}}
{{--                                        </select>--}}
                                        @error('programId')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>

                                    <div class="col-md-3">
                                        <label for="priceForAMonth" class="form-label">{{__('custom.price-for-a-month')}} *</label>
                                        <input type="number" name="priceForAMonth" class="form-control" id="priceForAMonth"
                                               value="{{ old('priceForAMonth',$subscription->price_a_month) }}"
                                               placeholder="{{__('custom.enter')}} {{__('custom.price-for-a-month')}}" step=".01" required>
                                        @error('priceForAMonth')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>

                                    <div class="col-md-3">
                                        <label for="priceFor6Month" class="form-label">{{__('custom.price-for-6-month')}} *</label>
                                        <input type="number" name="priceFor6Month" class="form-control" id="priceFor6Month"
                                               value="{{ old('priceFor6Month',$subscription->price_6_month) }}"
                                               placeholder="{{__('custom.enter')}} {{__('custom.price-for-6-month')}}" step=".01" required>
                                        @error('priceFor6Month')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>

                                    <div class="col-md-6">
                                        <label for="description" class="form-label">{{__('custom.description')}} *</label>
                                        <input type="text" name="description" class="form-control" id="description"
                                               value="{{ old('description',$subscription->description) }}"
                                               placeholder="{{__('custom.enter')}} {{__('custom.description')}}">
                                        @error('description')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>

                                    <div class="col-12">
                                        <button class="btn btn-primary" type="submit">{{__('custom.submitProgram')}}</button>
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
        $('.multiple-select').select2({
            theme: 'bootstrap4',
            width: $(this).data('width') ? $(this).data('width') : $(this).hasClass('w-100') ? '100%' : 'style',
            placeholder: $(this).data('placeholder'),
            allowClear: Boolean($(this).data('allow-clear')),
        });
        // Example starter JavaScript for disabling form submissions if there are invalid fields
        (function () {
            'use strict'
        })()
        {{--function makeAjaxCall() {--}}
        {{--    var id =  $("#group").find(":selected").val();--}}
        {{--    $.ajax({--}}
        {{--        type: "post",--}}
        {{--        dataType: "json",--}}
        {{--        url: "{{route('getProgramsByGroupId')}}",--}}
        {{--        data: {group_id: id, subsId: "{{$subscription->id}}",_token: "{{csrf_token()}}"},--}}
        {{--        success: function (response) {--}}
        {{--            // console.log(response);--}}
        {{--            if (response.status == 0) {--}}
        {{--                toastr.error("No data found");--}}
        {{--                $("#programId").html("");--}}
        {{--            } else {--}}
        {{--                $("#programId").html(response.body);--}}
        {{--            }--}}
        {{--        },--}}
        {{--    });--}}
        {{--}--}}

        {{--$("#group").change(function (e) {--}}
        {{--    e.preventDefault();--}}
        {{--    makeAjaxCall();--}}
        {{--});--}}
        {{--makeAjaxCall();--}}
    </script>
@endsection
