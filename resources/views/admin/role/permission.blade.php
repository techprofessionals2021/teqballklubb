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
                            <li class="breadcrumb-item active" aria-current="page">{{__('custom.permission')}}</li>
                        </ol>
                    </nav>
                </div>
                <div class="ms-auto">
                    <div class="btn-group">
                        <a href="{{route('createPermissions')}}" class="btn btn-primary d-none"> {{__('custom.add')}} {{__('custom.permission')}}</a>
                    </div>
                </div>
            </div>
            <!--end breadcrumb-->
            <div class="row">
                <div class="col-xl-12 mx-auto">
                    <h6 class="mb-0 text-capitalize">Rolle : {{ ucwords($role->name) }}</h6>
                    <hr/>
                    <div class="card">
                        <div class="card-body">
                            <div class="p-4 border rounded">
                                <form class="row g-3" method="POST" action="{{ route('save.role.permission') }}">
                                    @csrf
                                    <div class="row">
                                        <div class="col-md-12">
                                            <input type="hidden" value="{{ $role->name }}" name="role">

                                            <ul class="permissions" style="list-style-type: none">
                                                <li d-block>
                                                    <label>
                                                        <input id="chk-ani" type="checkbox"
                                                               class="checkbox_animated form-check-input permissions-all"/>
                                                        <span class="h6">Alle</span>
                                                    </label>
                                                </li>
                                                @foreach($permissions as $permission)
                                                    <li class="{{ $permission->title }} d-block form-check">
                                                        <input
                                                            type="checkbox"
                                                            id="{{ $permission->name }}"
                                                            class="checkbox_animated form-check-input permission"
                                                            name="permission[]"
                                                            value="{{ $permission->name }}"
                                                            {{ in_array($permission->name,$assigned_permissions) ? 'checked' : '' }}
                                                        />
                                                        <span>&nbsp;</span>
                                                        <label for="{{ $permission->name }}"
                                                               class="h6">{{ $permission->title }}</label>
                                                    </li>
                                                @endforeach

                                            </ul>
                                        </div>
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
    <script type="text/javascript">
        $(document).ready(function() {
            $('.permissions-all').change(function(){
                if($(this).is(':checked')){
                    $('.permission').prop('checked',true).trigger('change');
                }else{
                    $('.permission').prop('checked',false).trigger('change');
                }
            })
        });
    </script>
    <script>
        // Example starter JavaScript for disabling form submissions if there are invalid fields
        (function () {
            'use strict'
        })()
    </script>
@endsection
