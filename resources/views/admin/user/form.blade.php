@extends("layouts.app")

@section("style")
    <link href="{{asset('assets/plugins/datetimepicker/css/classic.css')}}" rel="stylesheet" />
    <link href="{{asset('assets/plugins/datetimepicker/css/classic.time.css')}}" rel="stylesheet" />
    <link href="{{asset('assets/plugins/datetimepicker/css/classic.date.css')}}" rel="stylesheet" />
    <link rel="stylesheet" href="{{asset('assets/plugins/bootstrap-material-datetimepicker/css/bootstrap-material-datetimepicker.min.css')}}">
    <link href="{{asset('assets/plugins/select2/css/select2.min.css')}}" rel="stylesheet" />
    <link href="{{asset('assets/plugins/select2/css/select2-bootstrap4.css')}}" rel="stylesheet" />
@endsection
@section("wrapper")
    <div class="page-wrapper">
        <div class="page-content">
            <!--breadcrumb-->
            <div class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">
                <div class="breadcrumb-title pe-3">{{__('custom.user')}}</div>
                <div class="ps-3">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb mb-0 p-0">
                            <li class="breadcrumb-item"><a href="{{route('fullcalender.id','all')}}"><i class="bx bx-home-alt"></i></a>
                            </li>
                            <li class="breadcrumb-item active" aria-current="page">{{__('custom.user')}}
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
                    {{--                            <h6 class="mb-0 text-uppercase">Exercise Type Section</h6>--}}
                    <hr/>
                    <div class="card">
                        <div class="card-body">
                            <div class="p-4 border rounded">
                                <form class="row g-3" method="POST" action="{{ $route }}">
                                    @csrf @if($edit) @method('PUT') @endif
                                    <div class="col-md-6">
                                        <label for="name" class="form-label">{{__('custom.name')}} *</label>
                                        <input type="text" name="name" class="form-control" id="name"
                                               value="{{ old('name',$user->name) }}" minlength="3"
                                               placeholder="{{__('custom.enter')}} {{__('custom.name')}}" required>
                                        @error('name')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>
                                    <div class="col-md-6">
                                        <label for="username" class="form-label">{{__('custom.username')}} *</label>
                                        <input type="text" name="username" class="form-control" id="username"
                                               value="{{ old('username',$user->username) }}" minlength="3"
                                               placeholder="{{__('custom.enter')}} {{__('custom.username')}}" required>
                                        @error('username')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>

                                    <div class="col-md-6">
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

                                    <div class="col-md-12">
                                        <label for="address" class="form-label">{{__('custom.address')}} *</label>
                                        <input type="text" name="address" class="form-control" id="address"
                                               value="{{ old('address',$user->address) }}"
                                               placeholder="{{__('custom.enter')}} {{__('custom.address')}}">
                                        @error('address')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>

                                    <div class="col-md-4">
                                        <label for="postnr" class="form-label">{{__('custom.postnr')}} *</label>
                                        <input type="text" name="postnr" class="form-control" id="postnr"
                                               value="{{ old('postnr',$user->postnr) }}" minlength="3"
                                               placeholder="{{__('custom.enter')}} {{__('custom.postnr')}}">
                                        @error('postnr')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>
                                    <div class="col-md-4">
                                        <label for="city" class="form-label">{{__('custom.city')}} *</label>
                                        <input type="text" name="city" class="form-control" id="city"
                                               value="{{ old('city',$user->city) }}" minlength="3"
                                               placeholder="{{__('custom.enter')}} {{__('custom.city')}}" required>
                                        @error('city')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>
                                    <div class="col-md-4">
                                        <label for="date" class="form-label">{{__('custom.born')}} *</label>
{{--                                        <input type="text" name="born" class="form-control" id="born" value="{{ old('city',$user->city) }}" minlength="3" placeholder="Enter City" required>--}}
{{--                                        <input class="result form-control" name="born" type="text" id="date" placeholder="{{date('Y-m-d',strtotime($user->dob))}}" {{!$edit ? 'required' : ''}}>--}}
                                        <input class="result form-control" name="born" lang="fr-CA" type="date" id="date" value="{{date('Y-m-d',strtotime($user->dob))}}" {{!$edit ? 'required' : ''}}>
                                        @error('born')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>

                                    <div class="col-md-4">
                                        <label for="telephone" class="form-label">{{__('custom.telephone')}} *</label>
                                        <input type="number" name="telephone" class="form-control" id="telephone"
                                               value="{{ old('telephone',$user->telephone) }}" minlength="8"
                                               placeholder="{{__('custom.enter')}} {{__('custom.telephone')}}" required>
                                        @error('telephone')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>
{{--                                    <div class="col-md-4">--}}
{{--                                        <label for="profession" class="form-label">{{__('custom.profession')}} *</label>--}}
{{--                                        <select class="single-select" name="profession" id="profession" required>--}}
{{--                                            @forelse ($professions as $item)--}}
{{--                                                <option {{$user->department_id == $item->id ? 'selected' : ''}} value="{{$item->id}}">{{$item->name}}</option>--}}
{{--                                            @empty--}}
{{--                                                <option disabled value="">No Profession Found</option>--}}
{{--                                            @endforelse--}}
{{--                                        </select>--}}
{{--                                        @error('profession')--}}
{{--                                        <strong>{{ $message }}</strong>--}}
{{--                                        @enderror--}}
{{--                                    </div>--}}
                                    <div class="col-md-4">
                                        <label for="group" class="form-label">{{__('custom.group')}} *</label>
                                        <select class="single-select" name="group" id="group" required>
                                            @forelse ($groups as $item)
                                                <option {{$user->group_id == $item->id ? 'selected' : ''}} value="{{$item->id}}">{{$item->name}}</option>
                                            @empty
                                                <option disabled value="">No Group Found</option>
                                            @endforelse
                                        </select>
                                        @error('group')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>

{{--                                    <div class="col-md-4">--}}
{{--                                        <label for="caseworker" class="form-label">{{__('custom.caseworker')}}    </label>--}}
{{--                                        <select class="single-select" name="caseworker" id="caseworker">--}}
{{--                                          @forelse ($caseworkers as $item)--}}
{{--                                                <option {{$user->case_manager_id == $item->id ? 'selected' : ''}} value="{{$item->id}}">{{$item->name}}</option>--}}
{{--                                            @empty--}}
{{--                                                <option disabled value="">No Case Manager Found</option>--}}
{{--                                            @endforelse--}}

{{--                                        </select>--}}
{{--                                        @error('caseworker')--}}
{{--                                        <strong>{{ $message }}</strong>--}}
{{--                                        @enderror--}}
{{--                                    </div>--}}

{{--                                    <div class="col-md-4">--}}
{{--                                        <label for="exerciseTypes" class="form-label">{{__('custom.exerciseTypes2')}} *</label>--}}
{{--                                        <select class="single-select" name="exerciseType" id="exerciseTypes" required>--}}
{{--                                            @forelse ($exerciseTypes as $item)--}}
{{--                                                <option {{$user->type_id == $item->id ? 'selected' : ''}} value="{{$item->id}}">{{$item->name}}</option>--}}
{{--                                            @empty--}}
{{--                                                <option disabled value="">No Group Found</option>--}}
{{--                                            @endforelse--}}
{{--                                        </select>--}}
{{--                                        @error('exerciseType')--}}
{{--                                        <strong>{{ $message }}</strong>--}}
{{--                                        @enderror--}}
{{--                                    </div>--}}
                                    <div class="col-md-4">
                                        <label for="gender" class="form-label">{{__('custom.gender')}} *</label>
                                        <select class="single-select" name="gender" id="gender" required>
                                            <option value="male">{{__('custom.male')}}</option>
                                            <option value="female">{{__('custom.female')}}</option>
                                        </select>
                                        @error('gender')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>


{{--                                    <div class="col-md-4">--}}
{{--                                        <label for="rightOrLeft" class="form-label">{{__('custom.rightOrLeft')}} *</label>--}}
{{--                                        <select class="single-select" name="rightOrLeft" id="rightOrLeft" required>--}}
{{--                                            @forelse ($rightOrLefts as $item => $value)--}}

{{--                                                <option {{$user->right_left == $item ? 'selected' : ''}} value="{{$item}}">{{ ucfirst($value)}}</option>--}}
{{--                                            @empty--}}
{{--                                                <option disabled value="">Not Found!</option>--}}
{{--                                            @endforelse--}}
{{--                                        </select>--}}
{{--                                        @error('rightOrLeft')--}}
{{--                                        <strong>{{ $message }}</strong>--}}
{{--                                        @enderror--}}
{{--                                    </div>--}}
{{--                                    <div class="col-md-4">--}}
{{--                                        <label for="level" class="form-label">{{__('custom.level')}} *</label>--}}
{{--                                        <select class="single-select" name="level" id="level" required>--}}
{{--                                            @forelse ($levels as $key => $item)--}}
{{--                                                <option {{$user->level == $key ? 'selected' : ''}} value="{{$key}}">{{ ucfirst($item)}}</option>--}}
{{--                                            @empty--}}
{{--                                                <option disabled value="">Not Found!</option>--}}
{{--                                            @endforelse--}}
{{--                                        </select>--}}
{{--                                        @error('level')--}}
{{--                                        <strong>{{ $message }}</strong>--}}
{{--                                        @enderror--}}
{{--                                    </div>--}}
                                    <div class="col-md-6">
                                        <label for="age" class="form-label">{{__('custom.age')}} *</label>
                                        <input type="number" name="age" class="form-control" id="age"
                                               value="{{ old('age',$user->age) }}" min="5" max="100"
                                               placeholder="{{__('custom.enter')}} {{__('custom.age')}}" required>
                                        @error('age')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>

{{--                                    <div class="col-md-4">--}}
{{--                                        <label for="cut" class="form-label">{{__('custom.cut')}}</label>--}}
{{--                                        <input type="number" name="cut" class="form-control" id="cut"--}}
{{--                                               value="{{ old('cut',$user->cut) }}" min="0" max="100"--}}
{{--                                               placeholder="Enter Cut">--}}
{{--                                        @error('cut')--}}
{{--                                        <strong>{{ $message }}</strong>--}}
{{--                                        @enderror--}}
{{--                                    </div>--}}
{{--                                    <div class="col-md-4">--}}
{{--                                        <label for="ab_rest_dager" class="form-label">{{__('custom.abRestDager')}}</label>--}}
{{--                                        <input type="number" name="ab_rest_dager" class="form-control" id="ab_rest_dager"--}}
{{--                                               value="{{ old('ab_rest_dager',$user->ab_rest_dager) }}" min="0" max="100"--}}
{{--                                               placeholder="Enter AbRestDager">--}}
{{--                                        @error('ab_rest_dager')--}}
{{--                                        <strong>{{ $message }}</strong>--}}
{{--                                        @enderror--}}
{{--                                    </div>--}}
                                    <div class="col-md-6">
                                        <label for="center" class="form-label">{{__('custom.mmCenter')}}    </label>
                                        <select class="single-select" name="center" id="center">
                                                @forelse ($centers as $item)
                                                    <option {{$user->center_id == $item->id ? 'selected' : ''}} value="{{$item->id}}">{{$item->name}}</option>
                                                @empty
                                                    <option disabled value="">No center Found</option>
                                                @endforelse
                                        </select>
                                        @error('center')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>

{{--                                    <div class="col-md-6">--}}
{{--                                        <label for="ptClips" class="form-label">{{__('custom.ptClips')}}</label>--}}
{{--                                        <input type="number" name="ptClips" class="form-control" id="ptClips"--}}
{{--                                               value="{{ old('ptClips',$user->ptClips->remain_clip ?? '') }}"--}}
{{--                                               placeholder="{{__('custom.enter')}} {{__('custom.ptClips')}}">--}}
{{--                                        @error('ptClips')--}}
{{--                                        <strong>{{ $message }}</strong>--}}
{{--                                        @enderror--}}
{{--                                    </div>--}}
{{--                                    <div class="col-md-6">--}}
{{--                                        <label for="position" class="form-label">{{__('Posisjon fotball')}} *</label>--}}
{{--                                        <select class="single-select" name="position" id="position" required>--}}
{{--                                            @forelse ($posisjon_fotball as $item)--}}
{{--                                                <option {{$user->position == $item ? 'selected' : ''}} value="{{$item}}">{{$item}}</option>--}}
{{--                                            @empty--}}
{{--                                                <option disabled value="">posisjon fotball</option>--}}
{{--                                            @endforelse--}}
{{--                                        </select>--}}
{{--                                        @error('position')--}}
{{--                                        <strong>{{ $message }}</strong>--}}
{{--                                        @enderror--}}
{{--                                    </div>--}}

{{--                                    <div class="col-md-6">--}}
{{--                                        <label for="note" class="form-label">{{__('custom.note')}}</label>--}}
{{--                                        <textarea class="form-control" id="note" name="note" maxlength="250" placeholder="{{__('custom.enterNote')}}" rows="4">{{$user->note}}</textarea>--}}
{{--                                        @error('note')--}}
{{--                                        <strong>{{ $message }}</strong>--}}
{{--                                        @enderror--}}
{{--                                    </div>--}}
{{--                                    <div class="col-md-6">--}}
{{--                                        <label for="journal" class="form-label">{{__('custom.journal')}}</label>--}}
{{--                                        <textarea class="form-control" id="journal" name="journal" placeholder="{{__('custom.enterJournal')}}" rows="4">{{$user->Journal}}</textarea>--}}
{{--                                        @error('journal')--}}
{{--                                        <strong>{{ $message }}</strong>--}}
{{--                                        @enderror--}}
{{--                                    </div>--}}

                                    <div class="col-md-2">
                                        <label for="is_active" class="form-label">{{__('custom.is_active')}}</label>
                                        <input class="form-check-input" name="is_active" type="checkbox" {{!$edit ? 'checked' : '' }} {{$user->is_active ? 'checked' : ''}} value="active" id="is_active">
                                        @error('is_active')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>
{{--                                    <div class="col-md-2">--}}
{{--                                        <label for="statistics" class="form-label">{{__('custom.statistics')}}</label>--}}
{{--                                        <input class="form-check-input" name="statistics" type="checkbox" {{!$edit ? 'checked' : '' }} {{$user->statistics ? 'checked' : ''}} value="active" id="statistics">--}}
{{--                                        @error('statistics')--}}
{{--                                        <strong>{{ $message }}</strong>--}}
{{--                                        @enderror--}}
{{--                                    </div>--}}
{{--                                    <div class="col-md-2">--}}
{{--                                        <label for="pt_customer" class="form-label">{{__('custom.pt_customer')}}</label>--}}
{{--                                        <input class="form-check-input" name="pt_customer" type="checkbox" {{$user->pt_customer ? 'checked' : ''}} value="active" id="pt_customer">--}}
{{--                                        @error('pt_customer')--}}
{{--                                        <strong>{{ $message }}</strong>--}}
{{--                                        @enderror--}}
{{--                                    </div>--}}
                                    <div class="col-md-2">
                                        <label for="consent" class="form-label">{{__('custom.consent')}}</label>
                                        <input class="form-check-input" name="consent" type="checkbox" {{$user->consent ? 'checked' : ''}} value="active" id="consent">
                                        @error('consent')
                                        <strong>{{ $message }}</strong>
                                        @enderror
                                    </div>
{{--                                    <div class="col-md-2">--}}
{{--                                        <label for="utv_adr_info" class="form-label">{{__('custom.utv_adr_info')}}</label>--}}
{{--                                        <input class="form-check-input" name="utv_adr_info" type="checkbox" {{$user->utv_adr_info ? 'checked' : ''}} value="active" id="utv_adr_info">--}}
{{--                                        @error('utv_adr_info')--}}
{{--                                        <strong>{{ $message }}</strong>--}}
{{--                                        @enderror--}}
{{--                                    </div>--}}
{{--                                    <div class="col-md-2">--}}
{{--                                       <label for="aft" class="form-label">{{__('custom.aft')}}</label>--}}
{{--                                       <input class="form-check-input" name="aft" type="checkbox" {{$user->aft ? 'checked' : ''}} value="active" id="aft">--}}
{{--                                       @error('aft')--}}
{{--                                       <strong>{{ $message }}</strong>--}}
{{--                                       @enderror--}}
{{--                                   </div>--}}

                                    <div class="col-12">
                                        <button class="btn btn-primary" type="submit"> @if($edit) {{__('custom.update')}} {{__('custom.user')}} @else {{__('custom.submit')}} @endif </button>
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
    <script src="{{asset('assets/plugins/datetimepicker/js/legacy.js')}}"></script>
    <script src="{{asset('assets/plugins/datetimepicker/js/picker.js')}}"></script>
    <script src="{{asset('assets/plugins/datetimepicker/js/picker.time.js')}}"></script>
    <script src="{{asset('assets/plugins/datetimepicker/js/picker.date.js')}}"></script>
    <script src="{{asset('assets/plugins/bootstrap-material-datetimepicker/js/moment.min.js')}}"></script>
    <script src="{{asset('assets/plugins/bootstrap-material-datetimepicker/js/bootstrap-material-datetimepicker.min.js')}}"></script>
    <script src="{{asset('assets/plugins/select2/js/select2.min.js')}}"></script>
    <script>
        // $(function () {
        //     $('#date').bootstrapMaterialDatePicker({
        //         time: false
        //     });
        // });
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
    </script>
@endsection
