@extends('user.app')
@section('head')
{{--    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">--}}
    <link href="{{asset('css/subplan.css')}}" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer"
{{--    />--}}
    <link href="https://fonts.googleapis.com/css2?family=Raleway:wght@100;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
@endsection
@section('content')
{{--    <div class="container">--}}
        <div class="container main_wrapper">
            <!-- Heading Start -->
{{--            <div class="heading_wrapper">--}}
{{--                <h1 class="mian_title">Performance programs</h1>--}}
{{--                <h2 class="sub_title">for footballers</h2>--}}
{{--                <div class="plan_desc_wrapper">--}}
{{--                    <h3 class="plan_desc">Choose the plan that best suits your needs.</h3>--}}
{{--                    <h3 class="plan_desc"><b>14-day free trial on the premium package</b></h3>--}}
{{--                </div>--}}
{{--                <div class="feat_btn_wrapper">--}}
{{--                    <a class="feat_btn" href="#">--}}
{{--                        <span>See feature list.<b><u>Click here</u></b></span>--}}
{{--                        <span><i class="fas fa-info-circle"></i></span>--}}
{{--                    </a>--}}
{{--                </div>--}}
{{--            </div>--}}
            <!-- Heading End -->
            <!-- Price Packages Start -->
            <div class="price_pkg_main_wrapper">
                <div class="price_pkg_inner_wrapper">
                    <div class="price_item">
                        <div class="icons_wrapper">
                            <img src="{{asset('assets/images/plan/check.gif')}}" class="check_icon" />
                        </div>
                        <h2 class="price_title">{{$subPlan->programSetup->name}}</h2>
                        <h2 class="price_sub_title">{{$subPlan->description}}</h2>
                        <div class="price_tab_wrapper">
                            <h2 class="tab_title">Velg faktureringsperioden nedenfor <img src="{{asset('assets/images/plan/hand.svg')}}" /></h2>

                            <nav>
                                <div class="nav nav-tabs price_tabs_top" id="nav-tab" role="tablist">
                                    <a class="nav-item nav-link active subs_type" data-subs-type="6month" id="halfyearl-tab" data-toggle="tab" href="#halfyearl" role="tab" aria-controls="halfyearl" aria-selected="true">Halvårlig</a>
                                    <a class="nav-item nav-link subs_type" data-subs-type="1month" id="monthly-tab" data-toggle="tab" href="#monthly" role="tab" aria-controls="monthly" aria-selected="false">Månedlig</a>
                                </div>
                            </nav>
{{--                            <form action="{{ route('subscription.create') }}" method="post" id="payment-form">--}}
{{--                            <form action="{{route('subscription.create')}}" method="post" id="payment-form">--}}
{{--                                @csrf--}}
                                <div class="tab-content price_tabs_content" id="nav-tabContent">
                                    <div class="tab-pane fade show active" id="halfyearl" role="tabpanel" aria-labelledby="half-yearl-tab">
                                        <div class="price_tab_content_wrapper">
    {{--                                        <h3 class="pkg_price pkg_cut_price">€26 / mth.</h3>--}}
                                            <div class="pkg_inner_price_wrapper">
                                                <div class="pkg_inner_wrapper">
                                                    <h2 class="pkg_inner_price">NOK {{number_format($subPlan->price_6_month / 6 , 2) }}</h2>
                                                    <h2 class="pkg_month">*pr. måned</h2>
                                                </div>
                                                <h2 class="pkg_payment">*Belastes med NOK {{number_format($subPlan->price_6_month, 2) }} </h2>
{{--                                                <h2 class="pkg_payment">*Belastes med NOK {{number_format($subPlan->price_6_month - (($subPlan->price_6_month / 182.5)*(14)) , 2) }} etter 14 dager</h2>--}}
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="monthly" role="tabpanel" aria-labelledby="monthly-tab">
                                    <div class="price_tab_content_wrapper">
{{--                                        <h3 class="pkg_price">€26 / mth.</h3>--}}
                                        <div class="pkg_inner_price_wrapper">
                                            <div class="pkg_inner_wrapper">
                                                <h2 class="pkg_inner_price">NOK {{$subPlan->price_a_month}}</h2>
                                                <h2 class="pkg_month">*pr. måned</h2>
                                            </div>
{{--                                            <h2 class="pkg_payment">*€135 for payment after 14 days</h2>--}}
                                        </div>
                                    </div>
                                </div>
                                </div>

                            <div class="price_submit_wrapper">
{{--                                <a class="pkg_sub_btn">Start 14-day free trial <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill-rule="evenodd" clip-rule="evenodd"><path d="M21.883 12l-7.527 6.235.644.765 9-7.521-9-7.479-.645.764 7.529 6.236h-21.884v1h21.883z"/></svg></a>--}}
                                <div class="card-footer" style=" background-color: #f8f9fa;">
{{--                                    <button type="submit" id="card-button" data-secret="{{ $intent->client_secret }}" class="pkg_sub_btn">Start 14-day free trial <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill-rule="evenodd" clip-rule="evenodd"><path d="M21.883 12l-7.527 6.235.644.765 9-7.521-9-7.479-.645.764 7.529 6.236h-21.884v1h21.883z"/></svg></button>--}}
                                    <button type="button" data-toggle="modal" data-target="#paymentmodal" class="pkg_sub_btn">Få tilgang<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill-rule="evenodd" clip-rule="evenodd"><path d="M21.883 12l-7.527 6.235.644.765 9-7.521-9-7.479-.645.764 7.529 6.236h-21.884v1h21.883z"/></svg></button>
                                </div>
                            </div>
{{--                            </form>--}}
                        </div>
                    </div>
                </div>
            </div>
            <!-- Price Packages End -->
            <!-- Modal -->
            <div class="modal fade" id="paymentmodal" tabindex="-1" role="dialog" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="modalLabel"> Skriv inn kortinformasjonen din</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <div class="card">
                                <form action="{{ route('subscription.create') }}" method="post" id="payment-form">
                                    @csrf
                                    <div class="form-group">
{{--                                        <div class="card-header">--}}
{{--                                            <label for="card-element">--}}
{{--                                                Enter your credit card information--}}
{{--                                            </label>--}}
{{--                                        </div>--}}
                                        <div class="card-body">
                                            <div id="card-element">
                                                <!-- A Stripe Element will be inserted here. -->
                                            </div>
                                            <!-- Used to display form errors. -->
                                            <div id="card-errors" role="alert"></div>
                                            <input type="hidden" name="plan" value="{{ $subPlan->id }}" />
                                            <input type="hidden" class="planTypeValue" readonly name="planType" value="6month" />
                                        </div>
                                    </div>
                                    <div class="card-footer" style=" background-color: #f8f9fa;">
                                        <button
                                            id="card-button"
                                            class="btn btn-dark"
                                            type="submit"
                                            data-secret="{{ $intent->client_secret }}"
                                        > Pay </button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Commitment Start -->
            <div class="commitment_main_wrapper">
                <div class="commitment_top_wrapper">
                    <img class="shield_icons" src="{{asset('assets/images/plan/shield.png')}}" />
                    <h2 class="commt_main_title">Ingen forpliktelser eller skjulte avgifter</h2>
                    <h2 class="commt_sub_title">Vi har ingen uforutsette bindinger eller skjulte gebyrer. Bestill vårt
                        halvårlige abonnoment og få gratis tilgang i 14 dager. Du kan melde deg av når som helst under
                        abonnoment på din bruker. </h2>
                    {{--                    <a href="#" class="store_link">--}}
                    {{--                        <img src="{{asset('assets/images/plan/store-icons.png')}}" class="store_icon" />--}}
                    {{--                    </a>--}}
                    <h2 class="commt_desc">Abonnementer belastes og fornyes automatisk ved slutten av hver
                        abonnementsperiode. Du kan kansellere automatisk fornyelse og melde deg av når som helst via
                        abonnement på din egen bruker eller ved å ta kontakt med oss. Prisen for halvårlig abonnement er
                        gjennomsnittsprisen per måned over en 6 måneders periode.</h2>
                </div>
            </div>
            <!-- Commitment End -->
        </div>
{{--    </div>--}}
@endsection
@section('script')
{{--    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>--}}
{{--    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>--}}
{{--    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>--}}
<script>
    $('#paymentmodal').on('shown.bs.modal', function () {
        $('#myInput').trigger('focus')
    })

    $('.subs_type').click(function () {
        var subvalue = $(this).data('subs-type');
        $('.planTypeValue').val(subvalue);

        if (subvalue == '1month'){
            $('.pkg_sub_btn').text('Få tilgang');
        }else {
            $('.pkg_sub_btn').text('Start 14 dagers gratis prøveperiode');
        }
    });
</script>
<script src="https://js.stripe.com/v3/"></script>
<script>
    // alert();
    // Custom styling can be passed to options when creating an Element.
    // (Note that this demo uses a wider set of styles than the guide below.)
    var style = {
        base: {
            color: '#32325d',
            lineHeight: '18px',
            fontFamily: '"Helvetica Neue", Helvetica, sans-serif',
            fontSmoothing: 'antialiased',
            fontSize: '16px',
            '::placeholder': {
                color: '#aab7c4'
            }
        },
        invalid: {
            color: '#fa755a',
            iconColor: '#fa755a'
        }
    };

    const stripe = Stripe('pk_test_51LNAM4FC9zDwzih7Sx93RflYEo79uVtrL79FTaE4yXikVHBrbiP4vnKkYqFqyYbqi7qVhlz7SYj5zdpWq7RKXMbV00klUiS43D', { locale: 'en' }); // Create a Stripe client.
    const elements = stripe.elements(); // Create an instance of Elements.
    const cardElement = elements.create('card', { style: style }); // Create an instance of the card Element.
    const cardButton = document.getElementById('card-button');
    const clientSecret = cardButton.dataset.secret;
    // console.log(clientSecret);
    cardElement.mount('#card-element'); // Add an instance of the card Element into the `card-element` <div>.

    // Handle real-time validation errors from the card Element.
    cardElement.addEventListener('change', function(event) {
        var displayError = document.getElementById('card-errors');
        if (event.error) {
            displayError.textContent = event.error.message;
        } else {
            displayError.textContent = '';
        }
    });

    // Handle form submission.
    var form = document.getElementById('payment-form');

    form.addEventListener('submit', function(event) {
        event.preventDefault();

        stripe
            .handleCardSetup(clientSecret, cardElement, {
                payment_method_data: {
                    //billing_details: { name: cardHolderName.value }
                }
            })
            .then(function(result) {
                console.log(result);
                if (result.error) {
                    // Inform the user if there was an error.
                    var errorElement = document.getElementById('card-errors');
                    errorElement.textContent = result.error.message;
                } else {
                    console.log(result);
                    // Send the token to your server.
                    stripeTokenHandler(result.setupIntent.payment_method);
                }
            });
    });

    // Submit the form with the token ID.
    function stripeTokenHandler(paymentMethod) {
        // Insert the token ID into the form so it gets submitted to the server
        var form = document.getElementById('payment-form');
        var hiddenInput = document.createElement('input');
        hiddenInput.setAttribute('type', 'hidden');
        hiddenInput.setAttribute('name', 'paymentMethod');
        hiddenInput.setAttribute('value', paymentMethod);
        form.appendChild(hiddenInput);

        // Submit the form
        form.submit();
    }
</script>
@endsection
