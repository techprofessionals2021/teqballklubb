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
                <div class="breadcrumb-title pe-3">{{__('custom.coach')}}</div>
                <div class="ps-3">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb mb-0 p-0">
                            <li class="breadcrumb-item"><a href="{{route('fullcalender.id','all')}}"><i class="bx bx-home-alt"></i></a>
                            </li>
                            <li class="breadcrumb-item active" aria-current="page">{{__('custom.coach')}}
                                / {{!$edit ? __('custom.createCoach') : __('custom.edit')}}</li>
                        </ol>
                    </nav>
                </div>
                <div class="ms-auto">
                </div>
            </div>
            <!--end breadcrumb-->
            <div class="row">
                <div class="col-xl-12 mx-auto">
                    {{--                            <h6 class="mb-0 text-uppercase">Exercise Type Section</h6>--}}
                    <hr/>
                    <div class="card">
                        <div class="card-body">
                            <div class="p-4 border rounded">
                                <form class="row g-3" method="POST" action="{{ $route }}">
                                    @csrf @if($edit) @method('PUT') @endif
                                    <div class="col-md-4">
                                        <label for="name" class="form-label">{{__('custom.name')}} *</label>
                                        <input type="text" name="name" class="form-control" id="name"
                                               value="{{ old('name',$user->name) }}" minlength="3"
                                               placeholder="{{__('custom.enter')}} {{__('custom.name')}}" required>
                                        @error('name')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>
                                    <div class="col-md-4">
                                        <label for="username" class="form-label">{{__('custom.username')}} *</label>
                                        <input type="text" name="username" class="form-control" id="username"
                                               value="{{ old('username',$user->username) }}" minlength="3"
                                               placeholder="{{__('custom.enter')}} {{__('custom.username')}}" required>
                                        @error('username')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>
                                    <div class="col-md-4">
                                        <label for="email" class="form-label">{{__('custom.email')}} *</label>
                                        <input type="email" name="email" class="form-control" id="email"
                                               value="{{ old('email',$user->email) }}" minlength="3"
                                               placeholder="user@example.com" required>
                                        @error('email')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>

                                    <div class="col-md-6">
                                        <label for="password" class="form-label">{{__('custom.password')}} *</label>
                                        <div class="input-group" id="show_hide_password">
                                            <input type="password" name="password" class="form-control border-end-0" {{!$edit ? 'required' : ''}} id="password" value="" minlength="8" maxlength="32" placeholder="{{__('custom.enterPassword')}}"> <a href="javascript:;" class="input-group-text bg-transparent"><i class='bx bx-hide'></i></a>
                                        </div>
                                        @error('password')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>
                                    <div class="col-md-6">
                                        <label for="workplace" class="form-label">{{__('custom.workplace')}}</label>
                                        <input type="text" name="workplace" class="form-control" id="workplace"
                                               value="{{ old('workplace',$coachUser->workplace) }}"
                                               placeholder="{{__('custom.enter')}} {{__('custom.workplace')}}">
                                        @error('workplace')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>
{{--                                    @if(!$edit)--}}
{{--                                    <div class="col-md-4">--}}
{{--                                        <label for="level" class="form-label">{{__('custom.level')}}</label>--}}
{{--                                        <input type="number" name="level" class="form-control" id="level"--}}
{{--                                               value="{{ old('level',$coachUser->level) }}" min="0" max="20"--}}
{{--                                               placeholder="{{__('custom.enter')}} {{__('custom.level')}}">--}}
{{--                                        @error('level')--}}
{{--                                        <strong>{{ $message }}</strong>--}}
{{--                                        @enderror--}}
{{--                                    </div>--}}
{{--                                    @endif--}}

{{--                                    <div class="col-md-4">--}}
{{--                                        <label for="personalIdNumber" class="form-label">{{__('custom.personalIdNumber')}} *</label>--}}
{{--                                        <input type="text" name="personalIdNumber" class="form-control" id="personalIdNumber" onkeypress="validate(event)"--}}
{{--                                               value="{{ old('personalIdNumber',$user->coachInfo->personalIdNumber ?? '') }}" minlength="11" maxlength="11"--}}
{{--                                               placeholder="{{__('custom.enter')}} {{__('custom.personalIdNumber')}}" required>--}}
{{--                                        @error('personalIdNumber')--}}
{{--                                        <strong>{{ $message }}</strong>--}}
{{--                                        @enderror--}}
{{--                                    </div>--}}
                                    <div class="col-md-6">
                                        <label for="telephone" class="form-label">{{__('custom.telephone')}} *</label>
                                        <input type="text" name="telephone" class="form-control" id="telephone" onkeypress="validate(event)"
                                               value="{{ old('telephone',$user->telephone) }}" minlength="8"
                                               placeholder="{{__('custom.enter')}} {{__('custom.telephone')}}" required>
                                        @error('telephone')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>
                                    <div class="col-md-6">
                                        <label for="function" class="form-label">{{__('custom.coachFunction')}} *</label>
                                        <select class="single-select" name="function" id="function" required>
                                            @forelse ($coachFunctions as $item)
                                                @continue($item->name == 'practitioner' || $item->name == 'admin')
                                                <option {{$coachUser->coach_function_id == $item->id ? 'selected' : ''}} value="{{$item->id}}">{{$item->title}}</option>
                                            @empty
                                                <option disabled value="">No Function Found</option>
                                            @endforelse
                                        </select>
                                        @error('function')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>

                                    <div class="col-md-6">
                                        <label for="note" class="form-label">{{__('custom.noteMax250')}}</label>
                                        <textarea class="form-control" id="note" name="note" maxlength="250" placeholder="{{__('custom.enterNote')}}..." rows="4">{{ old('note',$coachUser->note) }}</textarea>
                                        @error('note')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>
                                    <div class="col-md-6">
                                        <label for="address" class="form-label">{{__('custom.address')}}</label>
                                        <textarea class="form-control" id="address" name="address" placeholder="{{__('custom.addressdetail')}}..." rows="4">{{ old('note',$coachUser->address) }}</textarea>
                                        @error('address')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>

                                    @if(auth()->user()->getRoles()->first() == 'admin')
                                    <div class="col-md-2">
                                        <label for="is_active" class="form-label">{{__('custom.is_active')}}</label>
                                        <input class="form-check-input" name="is_active" type="checkbox" {{$user->is_active ? 'checked' : ''}} value="active" id="is_active">
                                        @error('is_active')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>
                                    <div class="col-md-2">
                                        <label for="calendar" class="form-label">{{__('custom.calendar')}}</label>
                                        <input class="form-check-input" name="calendar" type="checkbox" {{$coachUser->calendar ? 'checked' : ''}} value="active" id="calendar">
                                        @error('calendar')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>
{{--                                    <div class="col-md-2">--}}
{{--                                        <label for="blog" class="form-label">{{__('custom.blog')}}</label>--}}
{{--                                        <input class="form-check-input" name="blog" type="checkbox" {{$coachUser->blog ? 'checked' : ''}} value="active" id="blog">--}}
{{--                                        @error('blog')--}}
{{--                                        <strong>{{ $message }}</strong>--}}
{{--                                        @enderror--}}
{{--                                    </div>--}}
                                    @endif


                                    <div class="col-12">
                                        <button class="btn btn-primary" type="submit"> @if($edit) {{__('custom.update')}} @else {{__('custom.submit')}} @endif</button>
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
    <script src="{{asset('assets/plugins/select2/js/select2.min.js')}}"></script>
    <script>
        $(function () {
            $('#date').bootstrapMaterialDatePicker({
                time: false
            });
        });
        $('.single-select').select2({
            theme: 'bootstrap4',
            width: $(this).data('width') ? $(this).data('width') : $(this).hasClass('w-100') ? '100%' : 'style',
            placeholder: $(this).data('placeholder'),
            allowClear: Boolean($(this).data('allow-clear')),
        });
        $(document).ready(function () {
            $("#show_hide_password a").on('click', function (event) {
                event.preventDefault();
                if ($('#show_hide_password input').attr("type") == "text") {
                    $('#show_hide_password input').attr('type', 'password');
                    $('#show_hide_password i').addClass("bx-hide");
                    $('#show_hide_password i').removeClass("bx-show");
                } else if ($('#show_hide_password input').attr("type") == "password") {
                    $('#show_hide_password input').attr('type', 'text');
                    $('#show_hide_password i').removeClass("bx-hide");
                    $('#show_hide_password i').addClass("bx-show");
                }
            });
        });
        function validate(evt) {
            var theEvent = evt || window.event;

            // Handle paste
            if (theEvent.type === 'paste') {
                key = event.clipboardData.getData('text/plain');
            } else {
                // Handle key press
                var key = theEvent.keyCode || theEvent.which;
                key = String.fromCharCode(key);
            }
            var regex = /[0-9]|\./;
            if( !regex.test(key) ) {
                theEvent.returnValue = false;
                if(theEvent.preventDefault) theEvent.preventDefault();
            }
        }
    </script>
@endsection
