@extends('user.app')
@section('head')
    {{--    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"> --}}
    <link href="{{ asset('css/subplan.css') }}" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
        integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
        crossorigin="anonymous" referrerpolicy="no-referrer" {{--    /> --}} <link
        href="https://fonts.googleapis.com/css2?family=Raleway:wght@100;300;400;500;600;700;800;900&display=swap"
        rel="stylesheet">
@endsection
@section('content')
    {{--    <div class="container"> --}}
    <div class="container main_wrapper">
        @guest
            <h2 class="price_title text-center pt-3 pb-5">Ved oprettelse av medlemskap hos Norges
                Teqballforbund får du tilgang til Teqballøvelser
                og programmer via din egen profil, samt tilsendt nyhetsbrev fra forbundet</h2>
        @endguest
        <!-- Price Packages Start -->
        <div class="row price_pkg_main_wrapper">
            @foreach ($userSubLists as $item)
                <div class="col-md-4 price_pkg_inner_wrapper p-0">
                    <div class="price_item">
                        <div class="icons_wrapper">
                            <img src="{{ asset('assets/images/plan/check.gif') }}" class="check_icon" />
                        </div>
                        <input type="hidden" name="packageid" class="packageid" value="{{ $item->id }}">
                        <h2 class="price_title">{{ $item->subscription_name ?? '-Abonnement-' }}</h2>
                        <h2 class="price_sub_title">{{ $item->description }}</h2>
                        <div class="price_tab_wrapper">
                            <h2 class="tab_title">Velg faktureringsperioden nedenfor <img
                                    src="{{ asset('assets/images/plan/hand.svg') }}" /></h2>

                            <nav>
                                <div class="nav nav-tabs price_tabs_top" id="nav-tab" role="tablist">
                                    <a class="nav-item nav-link active subs_type subs_type_six " data-subs-type="6month"
                                        id="halfyearl-tab" data-toggle="tab" href="#halfyearl{{ $item->id }}"
                                        role="tab" aria-controls="halfyearl" aria-selected="true">Halvårlig</a>
                                    <a class="nav-item nav-link subs_type subs_type_one" data-subs-type="1month"
                                        id="monthly-tab" data-toggle="tab" href="#monthly{{ $item->id }}" role="tab"
                                        aria-controls="monthly" aria-selected="false">Månedlig</a>
                                </div>
                            </nav>
                            {{--                            <form action="{{ route('subscription.create') }}" method="post" id="payment-form"> --}}
                            {{--                            <form action="{{route('subscription.create')}}" method="post" id="payment-form"> --}}
                            {{--                                @csrf --}}
                            <div class="tab-content price_tabs_content" id="nav-tabContent">
                                <div class="tab-pane fade show active" id="halfyearl{{ $item->id }}" role="tabpanel"
                                    aria-labelledby="half-yearl-tab">
                                    <div class="price_tab_content_wrapper">
                                        {{--                                        <h3 class="pkg_price pkg_cut_price">€26 / mth.</h3> --}}
                                        <div class="pkg_inner_price_wrapper">
                                            <div class="pkg_inner_wrapper">
                                                <h2 class="pkg_inner_price">NOK
                                                    {{ number_format($item->price_6_month / 6, 2) }}</h2>
                                                <h2 class="pkg_month">*pr. måned</h2>
                                            </div>
                                            <h2 class="pkg_payment">*Belastes med NOK
                                                {{ number_format($item->price_6_month, 2) }} </h2>
                                            {{--                                                <h2 class="pkg_payment">*Belastes med NOK {{number_format($item->price_6_month - (($item->price_6_month / 182.5)*(14)) , 2) }} etter 14 dager</h2> --}}
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="monthly{{ $item->id }}" role="tabpanel"
                                    aria-labelledby="monthly-tab">
                                    <div class="price_tab_content_wrapper">
                                        <div class="pkg_inner_price_wrapper">
                                            <div class="pkg_inner_wrapper">
                                                <h2 class="pkg_inner_price">NOK {{ $item->price_a_month }}</h2>
                                                <h2 class="pkg_month">*pr. måned</h2>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="price_submit_wrapper">
                                <div class="card-footer" style=" background-color: #f8f9fa;">
                                    {{--                                    <button type="submit" id="card-button" data-secret="{{ $intent->client_secret }}" class="pkg_sub_btn">Start 14-day free trial <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill-rule="evenodd" clip-rule="evenodd"><path d="M21.883 12l-7.527 6.235.644.765 9-7.521-9-7.479-.645.764 7.529 6.236h-21.884v1h21.883z"/></svg></button> --}}
                                    <a href="{{ route('createPaymentSession.prodId.planId', ['prodId' => $item->stripe_plan_6, 'planId' => $item->stripe_price_6_month]) }}"
                                        target="_blank" class="pkg_sub6_btn pkg_sub_btn">Få tilgang
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                            fill-rule="evenodd" clip-rule="evenodd">
                                            <path
                                                d="M21.883 12l-7.527 6.235.644.765 9-7.521-9-7.479-.645.764 7.529 6.236h-21.884v1h21.883z" />
                                        </svg></a>
                                    <a href="{{ route('createPaymentSession.prodId.planId', ['prodId' => $item->stripe_plan, 'planId' => $item->stripe_price_a_month]) }}"
                                        target="_blank" class="pkg_sub1_btn pkg_sub_btn d-none">Få tilgang <svg
                                            xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                            fill-rule="evenodd" clip-rule="evenodd">
                                            <path
                                                d="M21.883 12l-7.527 6.235.644.765 9-7.521-9-7.479-.645.764 7.529 6.236h-21.884v1h21.883z" />
                                        </svg></a>
                                </div>
                            </div>
                            {{--                            </form> --}}
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
        <!-- Price Packages End -->
        <div class="row">
            <div class="col-lg-4">
            </div>
            <div class="col-lg-4 text-center pt-2">
                @auth
                    <a href="{{ route('usersAllSubscription2') }}" style="border-radius: 30px"
                        class="btn border pkg_sub_btn">Dine abonnementer</a>
                @endauth
            </div>
            <div class="col-lg-4">
            </div>
        </div>
        <!-- Commitment Start -->
        <div class="commitment_main_wrapper">
            <div class="commitment_top_wrapper">
                <img class="shield_icons" src="{{ asset('assets/images/plan/shield.png') }}" />
                <h2 class="commt_main_title">Ingen forpliktelser eller skjulte avgifter</h2>
                {{-- <h2 class="commt_sub_title">Vi har ingen uforutsette bindinger eller skjulte gebyrer. Bestill vårt
                    halvårlige abonnoment og få gratis tilgang i 14 dager. Du kan melde deg av når som helst under
                    abonnoment på din bruker. </h2> --}}
                {{--                    <a href="#" class="store_link"> --}}
                {{--                        <img src="{{asset('assets/images/plan/store-icons.png')}}" class="store_icon" /> --}}
                {{--                    </a> --}}
                <h2 class="commt_desc">Abonnementer belastes og fornyes automatisk ved slutten av hver
                    abonnementsperiode. Du kan kansellere automatisk fornyelse og melde deg av når som helst via
                    abonnement på din egen bruker eller ved å ta kontakt med oss. Prisen for halvårlig abonnement er
                    gjennomsnittsprisen per måned over en 6 måneders periode.</h2>
            </div>
        </div>
        <!-- Commitment End -->
    </div>
    {{--    </div> --}}
@endsection
@section('script')
    <script>
        $('#paymentmodal').on('shown.bs.modal', function() {
            $('#myInput').trigger('focus')
        })

        $('.price_item .subs_type_one').click(function() {

            $(this).parent().parent().parent().addClass('active_six');
            $('.active_six .pkg_sub6_btn').addClass('d-none');
            $('.active_six .pkg_sub1_btn').removeClass('d-none');
        });

        $('.price_item .subs_type_six').click(function() {
            $(this).parent().parent().parent().removeClass('active_six');
            $(this).parent().parent().parent().addClass('active_one');
            $('.active_one .pkg_sub1_btn').addClass('d-none');
            $('.active_one .pkg_sub6_btn').removeClass('d-none');
        });


        $('.pkg_sub_btn').click(function() {
            var packid = $(".packageid")
            $('.planid').val(packid)
        });
    </script>
@endsection
