@extends("layouts.app")

@section("wrapper")
    <div class="page-wrapper">
        <div class="page-content">
            <!--breadcrumb-->
            <div class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">
                <div class="breadcrumb-title pe-3">{{__('custom.permission')}}</div>
                <div class="ps-3">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb mb-0 p-0">
                            <li class="breadcrumb-item"><a href="{{route('fullcalender.id','all')}}"><i class="bx bx-home-alt"></i></a>
                            </li>
                            <li class="breadcrumb-item active" aria-current="page">{{__('custom.permission')}}
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
                                        <label for="title"
                                               class="form-label">{{__('custom.permission')}} {{__('custom.title')}} *</label>
                                        <input class="form-control" id="title" name="title"
                                               value="{{ old('name',$permission->title) }}" type="text"
                                               placeholder="Enter title" required>
                                        @error('title')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>
                                    <div class="col-md-6">
                                        <label for="name" class="form-label">{{__('custom.permission')}} {{__('custom.name')}}
                                            *</label>
                                        <input class="form-control" id="name" name="name"
                                               value="{{ old('name',$permission->name) }}" type="text"
                                               placeholder="Enter Name" required readonly>
                                        @error('name')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>
                                    <div class="col-md-6">
                                        <label for="is_single" class="form-label">{{__('custom.multiPermission')}}</label>
                                        <input class="form-check-input" id="is_single" name="is_single" value="active" type="checkbox">
                                    </div>

                                    <div class="col-12">
                                        <button class="btn btn-primary" type="submit">{{__('custom.submit')}}</button>
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
    <script>
        $("#title").keyup(function(){
            var name = $("#name").val(this.value)

            var mytext= $(name).val().toLowerCase();
            var remove =mytext.replace(/-/g, "-").replace(/_/g, "-").replace(/ /g, "-");

            $(name).val(remove);
        });
    </script>
@endsection
