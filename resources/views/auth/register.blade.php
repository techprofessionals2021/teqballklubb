@extends('layouts.app_def')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">
                @php
                    $rightOrLefts = ['right' => __('custom.right'), 'left' => __('custom.left'), 'both' => __('custom.both'), 'ikke_fotballspiller' => __('Ikke fotballspiller')];
                    $posisjon_fotball = [1 => 'Målvakt', 2 => 'Forsvarspiller', 3 => 'Midtbanespiller', 4 => 'Angrepsspiller/Spiss', 5 => 'Ikke fotballspiller'];
                @endphp
                <div class="card">
                    <div class="card-header">{{ __('Ny bruker') }}</div>

                    <div class="card-body">
                        <form method="POST" action="{{ route('register') }}">
                            @csrf

                            <div class="row mb-3">
                                <div class="col-md-4">
                                    <label for="name" class="col-form-label text-md-end">{{ __('Navn') }} *</label>
                                    <input id="name" type="text"
                                        class="form-control @error('name') is-invalid @enderror"
                                        placeholder="{{ __('custom.enter') }} {{ __('custom.name') }}" name="name"
                                        value="{{ old('name') }}" required autocomplete="name" autofocus>

                                    {{--                                @error('name') --}}
                                    {{--                                    <span class="invalid-feedback" role="alert"> --}}
                                    {{--                                        <strong>{{ $message }}</strong> --}}
                                    {{--                                    </span> --}}
                                    {{--                                @enderror --}}
                                </div>
                                <div class="col-md-4">
                                    <label for="username" class="col-form-label text-md-end">{{ __('Brukernavn') }}
                                        *</label>
                                    <input id="username" type="text"
                                        class="form-control @error('username') is-invalid @enderror"
                                        placeholder="{{ __('custom.enter') }} {{ __('custom.username') }}" name="username"
                                        value="{{ old('username') }}" required autocomplete="username" autofocus>

                                    {{--                                @error('username') --}}
                                    {{--                                    <span class="invalid-feedback" role="alert"> --}}
                                    {{--                                        <strong>{{ $message }}</strong> --}}
                                    {{--                                    </span> --}}
                                    {{--                                @enderror --}}
                                </div>
                                <div class="col-md-4">
                                    <label for="email" class="col-form-label text-md-end">{{ __('E-post') }} *</label>
                                    <input id="email" type="email"
                                        class="form-control @error('email') is-invalid @enderror"
                                        placeholder="user@example.com" name="email" value="{{ old('email') }}" required
                                        autocomplete="email">

                                    {{--                                @error('email') --}}
                                    {{--                                <span class="invalid-feedback" role="alert"> --}}
                                    {{--                                        <strong>{{ $message }}</strong> --}}
                                    {{--                                    </span> --}}
                                    {{--                                @enderror --}}
                                </div>
                                <div class="col-md-4">
                                    <label for="password" class="col-form-label text-md-end">{{ __('Passord') }} *</label>
                                    <div class="input-group" id="show_hide_password">
                                        <input id="password" type="password"
                                            class="form-control @error('password') is-invalid @enderror"
                                            placeholder="{{ __('custom.enterPassword') }}" name="password" required
                                            autocomplete="new-password"><a href="javascript:;"
                                            class="input-group-text bg-transparent"><i class='bx bx-hide'></i></a>
                                    </div>
                                    {{--                                @error('password') --}}
                                    {{--                                <span class="invalid-feedback" role="alert"> --}}
                                    {{--                                        <strong>{{ $message }}</strong> --}}
                                    {{--                                    </span> --}}
                                    {{--                                @enderror --}}
                                </div>
                                <div class="col-md-4">
                                    <label for="password-confirm"
                                        class="col-form-label text-md-end">{{ __('Confirm Passord') }} *</label>
                                    <div class="input-group" id="show_hide_password">
                                        <input id="password-confirm" type="password" class="form-control"
                                            name="password_confirmation"
                                            placeholder="{{ __('custom.enter') }} {{ __('Confirm Passord') }}" required
                                            autocomplete="new-password"><a href="javascript:;"
                                            class="input-group-text bg-transparent"><i class='bx bx-hide'></i></a>
                                    </div>
                                </div>

                                <div class="col-md-4">
                                    <label for="address" class="col-form-label text-md-end">{{ __('Adresse') }} *</label>
                                    <input id="address" type="text"
                                        class="form-control @error('address') is-invalid @enderror"
                                        placeholder="{{ __('custom.enter') }} {{ __('custom.address') }}" name="address"
                                        value="{{ old('address') }}" required autofocus>

                                    {{--                                @error('address') --}}
                                    {{--                                <span class="invalid-feedback" role="alert"> --}}
                                    {{--                                        <strong>{{ $message }}</strong> --}}
                                    {{--                                    </span> --}}
                                    {{--                                @enderror --}}
                                </div>
                                <div class="col-md-4">
                                    <label for="postnr" class="col-form-label text-md-end">{{ __('Postnr') }} *</label>
                                    <input id="postnr" type="text"
                                        class="form-control @error('postnr') is-invalid @enderror"
                                        placeholder="{{ __('custom.enter') }} {{ __('custom.postnr') }}" name="postnr"
                                        value="{{ old('postnr') }}" required autofocus>

                                    {{--                                @error('postnr') --}}
                                    {{--                                <span class="invalid-feedback" role="alert"> --}}
                                    {{--                                        <strong>{{ $message }}</strong> --}}
                                    {{--                                    </span> --}}
                                    {{--                                @enderror --}}
                                </div>
                                <div class="col-md-4">
                                    <label for="city" class="col-form-label text-md-end">{{ __('By') }} *</label>
                                    <input id="city" type="text"
                                        class="form-control @error('city') is-invalid @enderror"
                                        placeholder="{{ __('custom.enter') }} {{ __('custom.city') }}" name="city"
                                        value="{{ old('city') }}" required autofocus>

                                    {{--                                @error('city') --}}
                                    {{--                                <span class="invalid-feedback" role="alert"> --}}
                                    {{--                                        <strong>{{ $message }}</strong> --}}
                                    {{--                                    </span> --}}
                                    {{--                                @enderror --}}
                                </div>
                                <div class="col-md-4">
                                    <label for="date" class="col-form-label text-md-end">{{ __('Født') }} *</label>
                                    <input id="date" type="date"
                                        class="form-control @error('date') is-invalid @enderror"
                                        placeholder="{{ __('custom.enter') }} {{ __('date') }}" name="born"
                                        value="{{ old('date') }}" required autofocus>

                                    {{--                                @error('born') --}}
                                    {{--                                <span class="invalid-feedback" role="alert"> --}}
                                    {{--                                        <strong>{{ $message }}</strong> --}}
                                    {{--                                    </span> --}}
                                    {{--                                @enderror --}}
                                </div>
                                <div class="col-md-4">
                                    <label for="telephone" class="col-form-label text-md-end">{{ __('Telefonnummer') }}
                                        *</label>
                                    <input id="telephone" type="number"
                                        class="form-control @error('telephone') is-invalid @enderror"
                                        placeholder="{{ __('custom.enter') }} {{ __('custom.telephone') }}"
                                        name="telephone" value="{{ old('telephone') }}" required autofocus>

                                    {{--                                @error('telephone') --}}
                                    {{--                                <span class="invalid-feedback" role="alert"> --}}
                                    {{--                                        <strong>{{ $message }}</strong> --}}
                                    {{--                                    </span> --}}
                                    {{--                                @enderror --}}
                                </div>
                                <div class="col-md-4">
                                    <label for="gender"
                                        class="form-label col-form-label text-md-end">{{ __('Kjønn') }} *</label>
                                    <select class="single-select" name="gender" id="gender" required>
                                        <option value="male">{{ __('custom.male') }}</option>
                                        <option value="female">{{ __('custom.female') }}</option>
                                    </select>

                                    {{--                                @error('gender') --}}
                                    {{--                                <span class="invalid-feedback" role="alert"> --}}
                                    {{--                                        <strong>{{ $message }}</strong> --}}
                                    {{--                                    </span> --}}
                                    {{--                                @enderror --}}
                                </div>
                                
                                <div class="col-md-4">
                                    <label for="age" class="col-form-label text-md-end">{{ __('custom.age') }}
                                        *</label>
                                    <input id="age" type="number" min="5" max="100"
                                        class="form-control @error('age') is-invalid @enderror"
                                        placeholder="{{ __('custom.enter') }} {{ __('custom.age') }}" name="age"
                                        value="{{ old('age') }}" required autofocus>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <div class="col-md-4">
                                    <label for="name" class="col-form-label text-md-end">Klubb
                                        *</label>
                                    <input id="Klubb" type="text"
                                        class="form-control @error('name') is-invalid @enderror"
                                        placeholder="Klubb name" name="Klubb"
                                        value="{{ old('name') }}" required autocomplete="Klubb" autofocus>
                                </div>

                                <div class="col-md-4">
                                    <label for="funksjon"
                                        class="form-label col-form-label text-md-end">Funksjon *</label>
                                    <select class="single-select" name="funksjon" id="funksjon" required>
                                        <option value="Spiller">Spiller</option>
                                        <option value="Trener">Trener</option>
                                        <option value="Dommer">Dommer</option>
                                    </select>
                                </div>
                            </div>


                            <div class="row mb-0">
                                <div class="col-md-12 text-center">
                                    <button type="submit" class="btn btn-primary">
                                        {{ __('Opprett Konto') }}
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
