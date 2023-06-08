@extends('user.app')

@section('content')
<div class="container" id="app">
    <div class="sevpage-title">
        <h3>Personlig Data</h3>
    </div>
    <div class="row">
        <div class="col-lg-6">
            <h4>Alder : <span>{{$dateOfBirth}}</span></h4>
            <h4>Høyde (cm) : <span>{{$user->userStats->height ?? ''}}</span></h4>
            <h4>Vekt (kg) : <span>{{$user->userStats->weight  ?? ''}}</span></h4>
            <h4>Makspuls : <span>{{$user->maxHeartRate}}</span></h4>
        </div>
        <div class="col-lg-6">
            <h4>BMI : <span>{{$user->userStats->bmi ?? ''}}</span></h4>
            {{-- <h4>Posisjon : <span>{{$user->position}}</span></h4>
            <h4>Foretrukket Skuddfot : <span>{{$user->foretrukket}}</span></h4> --}}
            <h4>Fett  % : <span>{{$user->fat}}</span></h4>
            <button type="button" class="btn sbmtt endredata" data-bs-toggle="modal" data-bs-target="#endredataModal">Endre data</button>

        </div>
{{--        <div class="col-lg-12 text-center">--}}
{{--            <div class="sevpage-title">--}}
{{--                <h3 class="text-center">Abonnement</h3>--}}
{{--            </div>--}}
{{--            @foreach ($usersAllSubscriptions as $item)--}}
{{--                <h4>{{$item->subsItem->product->programSetup->name}} <a href="#" class="btn btn-success">Unsubscribe</a> - <span>{{$item->remaining_days}} days left</span></h4>--}}
{{--            @endforeach--}}
{{--            <div class="table-responsive">--}}
{{--                <table class="table text-center">--}}
{{--                    <thead>--}}
{{--                        <tr>--}}
{{--                            <th>SubScription Name</th>--}}
{{--                            <th>Action</th>--}}
{{--                            <th>Days Remaining</th>--}}
{{--                        </tr>--}}
{{--                    </thead>--}}
{{--                    <tbody>--}}
{{--                    @forelse ($usersAllSubscriptions as $item)--}}
{{--                        <tr>--}}
{{--                            <td>{{isset($item->subsItem->product) ? $item->subsItem->product->programSetup->name : $item->subsItem->product6->programSetup->name}}</td>--}}
{{--                            <td>--}}
{{--                                @if($item->remaining_days == 0)--}}
{{--                                @if ($item->ends_at != null)--}}
{{--                                    <a href="{{route('renewSubscription.id',$item->stripe_id)}}" class="btn btn-success">Renew</a>--}}
{{--                                    <a href="{{route('renewSubscription.id',$item->name)}}" class="btn btn-success">Renew</a>--}}
{{--                                    <a href="#" class="btn btn-success">Renew</a>--}}
{{--                                @else--}}
{{--                                    <a href="{{route('pauseSubscription.id',$item->name)}}" class="btn btn-success">Unsubscribe</a>--}}
{{--                                @endif--}}
{{--                            </td>--}}
{{--                            <td><span>{{$item->remaining_days}} days left</span></td>--}}
{{--                        </tr>--}}
{{--                    @empty--}}
{{--                    @endforelse--}}
{{--                    </tbody>--}}
{{--                </table>--}}
{{--            </div>--}}
{{--        </div>--}}

    </div>

{{-- --data in pop up-- --}}
    <div class="modal fade" id="endredataModal" tabindex="-1" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Rediger Personlig Data</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form class="row g-3" id="endredataform" method="POST" action="{{route('submitUserProfileInfo')}}">
                        @csrf
                        <div class="row">
                            <div class="col-lg-4">
                                <div class="form-items">
                                    <label for="age">Alder *</label>
                                    <input type="date" id="age" name="age" class="form-control" required value="{{$user->dob}}" placeholder="age*">
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="form-items">
                                    <label for="height">Høyde (cm) *</label>
                                    <input type="number" min="0" id="height" name="height" class="form-control" required value="{{$user->userStats->height ?? '10'}}" placeholder="Høyde (cm)*">
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="form-items">
                                    <label for="weight">Vekt (kg) *</label>
                                    <input type="number" min="0" id="weight" name="weight" class="form-control" required value="{{$user->userStats->weight ?? '40'}}" placeholder="Vekt (kg)*">
                                </div>
                            </div>

                            <div class="col-lg-6">
                                <div class="form-items">
                                    <label for="maxHeartRate">Makspuls *</label>
                                    <input type="number" min="0" id="maxHeartRate" name="maxHeartRate" class="form-control" required value="{{$user->maxHeartRate}}" placeholder="Makspuls *">
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-items">
                                    <label for="fat">Fett *</label>
                                    <input type="number" min="0" id="fat" name="fat" class="form-control" required value="{{$user->fat}}" placeholder="Fett *">
                                </div>
                            </div>

                            <div class="col-lg-6 pt-3">
                                <div class="form-items">
                                    <label for="position">Posisjon</label>
                                    <select class="form-control" name="position" required>
                                        @foreach ($position as $item)
                                            <option {{$user->position == $item ? 'selected' : ''}} value="{{$item}}">{{$item}}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="col-lg-6 pt-3">
                                <div class="form-items">
                                    <label for="foretrukket">Foretrukket Skuddfot</label>
                                    <select class="form-control" name="foretrukket" required>
                                        @foreach ($preferredShooterFoot as $item)
                                            <option {{$user->foretrukket == $item ? 'selected' : ''}} value="{{$item}}">{{$item}}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>

                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Lukk</button>
                    <button type="submit" class="btn btn-primary endredataformbtn">{{__('custom.submit')}}</button>
                </div>
            </div>
        </div>
    </div>
{{-- --data in pop up-- --}}

    <div class="sevpage-title">
        <h3>Kalkulator for pulsstyring</h3>
    </div>

    <div class="row">
        <div class="col-lg-12">
            <div class="table-responsive">
                <table class="table table-bordered text-center calculate-hr-static">
                    <thead>
                    <tr>
                        <th style="background-color: #3690f1 !important" colspan="4" scope="colgroup">Intensitetsskala</th>
                    </tr>
                    <tr>
                        <th>{{__('Intensitetssoner')}}</th>
                        <th>{{__('15-20 år % HF')}}</th>
                        <th>{{__('Voksne % HF')}}</th>
                        <th>{{__('Formål')}}</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>1</td>
                        <td>65 til 80</td>
                        <td>60 til 75</td>
                        <td>Aktiv restitusjon</td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>80 til 90</td>
                        <td>75 til 85</td>
                        <td>Langtur</td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>90 til 93,5</td>
                        <td>85 til 90</td>
                        <td>Interval trening rundt anaerob terskel</td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td>93,5 til 97</td>
                        <td>90 til 95</td>
                        <td>Hard intervaltrening</td>
                    </tr>
                    <tr>
                        <td>5</td>
                        <td>97 til 100</td>
                        <td>95 til 100</td>
                        <td>Sprint og eksplosiv trening</td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-lg-12">
            <div class="table-responsive">
                <table class="table table-bordered text-center calculate-hr-static">
                    <thead>
                    <tr>
                        <th style="background-color: #3690f1 !important" colspan="4" scope="colgroup">Utøver data</th>
                    </tr>
                    <tr>
                        <th>{{__('Intensitetssoner')}}</th>
                        <th>{{__('15-20 år % HF')}}</th>
                        <th>{{__('Voksne % HF')}}</th>
                        <th>{{__('Formål')}}</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>1</td>
                        <td>@{{(message * 0.8).toFixed(2)}}</td>
                        <td>@{{(message * 0.8).toFixed(2)}}</td>
                        <td>Aktiv restitusjon</td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>@{{(message * 0.9).toFixed(2)}}</td>
                        <td>@{{(message * 0.9).toFixed(2)}}</td>
                        <td>Langtur</td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>@{{(message * 0.935).toFixed(2)}}</td>
                        <td>@{{(message * 0.935).toFixed(2)}}</td>
                        <td>Interval trening rundt anaerob terskel</td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td>@{{(message * 0.97).toFixed(2)}}</td>
                        <td>@{{(message * 0.97).toFixed(2)}}</td>
                        <td>Hard intervaltrening</td>
                    </tr>
                    <tr>
                        <td>5</td>
                        <td>@{{(message * 1).toFixed(2)}}</td>
                        <td>@{{(message * 1).toFixed(2)}}</td>
                        <td>Sprint og eksplosiv trening</td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <span class="calcul-val-label">Maksimal puls</span>
            <input type="number" class="calcul-val" v-model="message">
        </div>
    </div>

{{--    --------------- --}}

    <div class="sevpage-title">
        <h3>Kalkulator for RM kontroll</h3>
    </div>

    <div class="row">
        <div class="col-lg-12">
            <div class="table-responsive">
                <table class="table table-bordered text-center calculate-hr-static">
                    <thead>
                    <tr>
                        <th style="background-color: #3690f1 !important" colspan="3" scope="colgroup">RM beregner</th>
                    </tr>
                    <tr>
                        <th>{{__('Type trening')}}</th>
                        <th>{{__('Nybegynner % 1 RM')}}</th>
                        <th>{{__('Erfaren % 1 RM')}}</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>Muskulær utholdenhet (> 15 reps * 1-4 sett)</td>
                        <td>20 til 40</td>
                        <td>20 til 60</td>
                    </tr>
                    <tr>
                        <td>Hypertrofi (6-12 Reps*1-4 set)</td>
                        <td>60 til 70</td>
                        <td>75 til 85</td>
                    </tr>
                    <tr>
                        <td>Maksimal styrke (1-8 Reps*1-8 set)</td>
                        <td>65 til 75</td>
                        <td>80></td>
                    </tr>
                    <tr>
                        <td>Eksplosiv styrke (1-5 Reps*1-3 set)</td>
                        <td>0 til 30</td>
                        <td>30 til 50</td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-lg-12 pb-5">
            <div class="table-responsive">
                <table class="table table-bordered text-center calculate-hr-static">
                    <thead>
                    <tr>
                        <th style="background-color: #3690f1 !important" colspan="4" scope="colgroup">Utøver data</th>
                    </tr>
                    <tr>
                        <th>{{__('Type trening')}}</th>
                        <th>{{__('Nybegynner % 1 RM')}}</th>
                        <th>{{__('Erfaren % 1 RM')}}</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>Muskulær utholdenhet</td>
                        <td>@{{(message2 * 0.4).toFixed(2)}}</td>
                        <td>@{{(message2 * 0.6).toFixed(2)}}</td>
                    </tr>
                    <tr>
                        <td>Hypertrofi</td>
                        <td>@{{(message2 * 0.7).toFixed(2)}}</td>
                        <td>@{{(message2 * 0.85).toFixed(2)}}</td>
                    </tr>
                    <tr>
                        <td>Maksimal styrke</td>
                        <td>@{{(message2 * 0.75).toFixed(2)}}</td>
                        <td>@{{(message2 * 0.8).toFixed(2)}}</td>
                    </tr>
                    <tr>
                        <td>Eksplosiv styrke</td>
                        <td>@{{(message2 * 0.3).toFixed(2)}}</td>
                        <td>@{{(message2 * 0.5).toFixed(2)}}</td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <span class="calcul-val-label2">1 RM for spesifikk øvelse</span>
            <input type="number" class="calcul-val2" v-model="message2">
        </div>
    </div>


</div>
@endsection
@section('script')
{{--    <script src="https://cdn.jsdelivr.net/npm/vue@2/dist/vue.js"></script> for dev--}}
    <script src="https://cdn.jsdelivr.net/npm/vue@2"></script>
    <script src="{{asset('assets/plugins/datatable/js/jquery.dataTables.min.js')}}"></script>
    <script src="{{asset('assets/plugins/datatable/js/dataTables.bootstrap5.min.js')}}"></script>
    <script>
        var app = new Vue({
            el: '#app',
            data: {
                message: 0,
                message2: 0
            }
        });

        $(".endredataformbtn").click(function (e) {
            e.preventDefault();
            $('#endredataform').submit();
        });
        $(document).ready(function() {
            $('#example2').DataTable();
    } );
    </script>

@endsection
