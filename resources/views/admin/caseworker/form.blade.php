	@extends("layouts.app")

		@section("wrapper")
            <div class="page-wrapper">
                <div class="page-content">
                    <!--breadcrumb-->
                    <div class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">
                        <div class="breadcrumb-title pe-3">{{__('custom.caseworker')}}</div>
                        <div class="ps-3">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb mb-0 p-0">
                                    <li class="breadcrumb-item"><a href="{{route('fullcalender.id','all')}}"><i class="bx bx-home-alt"></i></a>
                                    </li>
                                    <li class="breadcrumb-item active" aria-current="page">{{__('custom.caseworker')}} / {{!$edit ? __('custom.create') : __('custom.edit')}}</li>
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
                                                <label for="name" class="form-label">{{__('custom.caseworker')}} {{__('custom.name')}} *</label>
                                                <input type="text" name="name" class="form-control" id="name" value="{{ old('name',$caseworker->name) }}" minlength="3" placeholder="Enter Name" required>
                                                @error('name')
                                                <strong>{{ $message }}</strong>
                                                @enderror
                                            </div>
                                            <div class="col-md-6">
                                                <label for="name" class="form-label">{{__('custom.telephone')}} *</label>
                                                <input type="number" name="telephone" class="form-control" id="telephone" value="{{ old('telephone',$caseworker->telephone) }}" minlength="5" placeholder="Telephone" required>
                                                @error('telephone')
                                                <strong>{{ $message }}</strong>
                                                @enderror
                                            </div>

                                            <div class="col-md-6">
                                                <label for="email" class="form-label">{{__('custom.email')}} *</label>
                                                <input type="email" name="email" class="form-control" id="email" value="{{ old('email',$caseworker->email) }}" placeholder="user@example.com" required>
                                                @error('email')
                                                <strong>{{ $message }}</strong>
                                                @enderror
                                            </div>
                                            <div class="col-md-6">
                                                <label for="organization" class="form-label">{{__('custom.organization')}} *</label>
                                                <input type="text" name="organization" class="form-control" id="organization" value="{{ old('organization',$caseworker->organization) }}" placeholder="Enter Organization" required>
                                                @error('organization')
                                                <strong>{{ $message }}</strong>
                                                @enderror
                                            </div>

                                            <div class="col-md-6">
                                                <label for="sort" class="form-label">{{__('custom.sort')}} *</label>
                                                <input type="number" name="sort" class="form-control" id="sort" value="{{ old('sort',$caseworker->sort) }}" min="1" placeholder="Sort Number" required>
                                                @error('sort')
                                                <strong>{{ $message }}</strong>
                                                @enderror
                                            </div>
                                            <div class="col-md-6">
                                                <label for="is_active" class="form-label">{{__('custom.is_active')}}</label>
                                                <input class="form-check-input" name="is_active" type="checkbox" {{$caseworker->is_active ? 'checked' : ''}} value="active" id="is_active">
                                                @error('is_active')
                                                <strong>{{ $message }}</strong>
                                                @enderror
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
	@endsection
