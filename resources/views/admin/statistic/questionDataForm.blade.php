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
                <div class="breadcrumb-title pe-3">{{__('custom.questionData')}}</div>
                <div class="ps-3">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb mb-0 p-0">
                            <li class="breadcrumb-item"><a href="javascript:;"><i class="bx bx-home-alt"></i></a>
                            </li>
                            <li class="breadcrumb-item active" aria-current="page">{{__('custom.questionData')}}
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
                                    <input type="hidden" name="quesDataId" value="{{$questionsData->id}}">
                                    @endif
                                    <input type="hidden" name="userId" value="{{$userInfo->id}}">
                                    <div class="col-md-4">
                                        <label for="status" class="form-label">{{__('custom.status')}}</label>
                                        <select class="single-select" name="status" id="status">
                                                <option {{$questionsData->status == 'pre' ? 'selected' : ''}} value="pre">PRE</option>
                                                <option {{$questionsData->status == 'mid' ? 'selected' : ''}} value="mid">MID</option>
                                                <option {{$questionsData->status == 'post' ? 'selected' : ''}} value="post">POST</option>
                                        </select>
                                        @error('status')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>
                                    @for ($i = 0; $i <= 31; $i++)
                                        <div class="col-md-4">
                                            <label for="q{{$i+1}}" class="form-label">Q{{$i+1}}:</label>
                                            <input type="number" step=".01" name="q{{$i+1}}" class="form-control" id="q{{$i+1}}"
                                                   value="{{ old('q'.$i,$questionsData->allStatsQuestionAndValues[$i]['question_value'] ?? '') }}"
                                                   placeholder="{{__('custom.enter2')}} Q{{$i+1}}">
                                        </div>
                                    @endfor

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
