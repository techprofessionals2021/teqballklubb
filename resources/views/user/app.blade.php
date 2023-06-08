<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Zilla+Slab:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
@yield("head")
    <!-- Bootstrap CSS -->
    <link href="{{asset('assets/css/bootstrap.min.css')}}" rel="stylesheet">

    <title>TQ Sport</title>
    <style>
        .navbar-brand .img {
            width: 100px;
            margin-left: 40px;
        }

        .navbar {
            display: flex !important;
            justify-content: space-between !important;
            padding-top: 3px;
            padding-bottom: 3px;
        }
        .main-video-section {
            padding: 30px 15px;
            border-radius: 5px;
            border: 1px solid #17a2b8;
        }
        .h3 {
            margin-bottom: 0.5rem;
            font-family: inherit;
            font-weight: 500;
            line-height: 1.2;
            color: inherit;
            font-size: 1.75rem;
        }

        .dropdown, .dropup {
            position: relative;
        }

        .btn-secondary {
            padding-right: 22px;
            color: #495057;
            background-color: #ffff;
            border-color: #495057;
            padding-left: 22px;
        }


        li.nav-item a {
            font-family: "Open Sans";
        }

        .btn-primary {
            color: #007bff;
            background-color: #fff;
            border-color: #007bff;
            margin-top: 5px;
        }

        p.text {
            margin-top: 5px;
            color: #212529;
            font-size: 24px;
        }

        .sevpage-title h3 {
            font-size: 40px;
            line-height: 48px;
            font-family: 'Zilla Slab';
            font-weight: 400;
            text-align: center;
        }

        .sevpage-title {
            padding: 30px 0;
        }

        /*.form-items {*/
        /*    margin: 0 0 30px 0;*/
        /*    display: -ms-flexbox;*/
        /*    display: flex;*/
        /*    flex-wrap: wrap;*/
        /*}*/

        .form-text {
            color: #4a4e57;
            font-size: 15px;
            padding: 12px;
            padding-bottom: 5px;
            margin: 0;
        }


        .form-items input {
            width: 100%;
            padding: 10px 2.7em;
            font-size: 16px;
            font-family: 'Open Sans';
            font-weight: 400;
            color: #9ea0a4;
            border: 1px solid #e2e2e2;
            border-radius: 6px;
            /*margin-left: -35px;*/
        }

        .form-items input:hover {
            border-color: rgba(101, 188, 123, 0.5);
        }

        .form-items input:focus {
            border-color: #65bc7b;
        }

        .form-items input:focus-visible {
            outline: none !important;
        }

        .form-items textarea {
            width: 100%;
            padding: 10px 2.7em;
            font-size: 16px;
            font-family: 'Open Sans';
            font-weight: 400;
            color: #9ea0a4;
            border: 1px solid #e2e2e2;
            border-radius: 6px;
            /*margin-left: -35px;*/
        }

        .form-items textarea:hover {
            border-color: rgba(101, 188, 123, 0.5);
        }

        .form-items textarea:focus {
            border-color: #65bc7b;
        }

        .form-items textarea:focus-visible {
            outline: none !important;
        }


        .form-items i {
            font-size: 15px;
            position: relative;
            top: 34px;
            padding-left: 15px;
            color: #9ea0a4;
            /*margin-top: 16px;*/
        }


        .btn-sbmt {
            text-align: center;
        }

        .btn.sbmtt {
            background: #1C71B7;
            color: #fff;
        }

        .btn.sbmtt:hover {
            background: #145F9E;
            color: #fff;
        }
        .cust-bg-yellow{
            /*background-color: yellow !important;*/
            background-color: #1C71B7 !important;
        }
        .cust-bg-green{
            /*background-color: #4bc04b !important;*/
        }
        .cust-bg-blue{
            /*background-color: #3690f1 !important;*/
        }

        .calculate-hr-static tbody tr td:nth-child(even) ,
        .calculate-hr-static thead tr th:nth-child(even)
        {
            /*background-color: #4bc04b !important;*/
        }

        .calculate-hr-static tbody tr td:nth-child(odd) ,
        .calculate-hr-static thead tr th:nth-child(odd)
        {
            /*background-color: #3690f1 !important;*/
        }

        .calcul-val-label {
            background-color: #3690f1;
            padding: 0.5rem 1.65rem;
        }
        .calcul-val {
            width: 25.5%;
            padding: 5px;
            /*background-color: yellow;*/
            background-color: #3690f1;
            border: 1px solid #000;
        }
        .calcul-val-label2 {
            /*background-color: #3690f1;*/
            padding: 0.5rem 8.65rem;
        }
        .calcul-val2 {
            width: 31.5%;
            padding: 5px;
            /*background-color: yellow;*/
            background-color: #3690f1;
            border: 1px solid #000;
        }
    </style>
</head>
<body>


<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
    <!-- Brand/logo -->
    <a class="navbar-brand" href="{{route('userInfo')}}">
        <img src="{{asset('assets/images/nor-logo_03.png')}}"  class="logo-iconn" alt="logo icon">
    </a>

    <!-- Links -->
    <ul class="navbar-nav">
        @guest
            <li class="nav-item">
                <a class="nav-link" href="{{route('allSubscriptionMain')}}">{{ __('Årsbonnement Norges Teqballforbund') }}</a>
            </li>
            @if (Route::has('login'))
                <li class="nav-item">
                    <a class="nav-link" href="{{ route('login') }}">{{ __('custom.login') }}</a>
                </li>
            @endif

            @if (Route::has('register'))
                <li class="nav-item">
                    <a class="nav-link" href="{{ route('register') }}">{{ __('Ny bruker') }}</a>
                </li>
            @endif
        @else
{{--        <li class="nav-item">--}}
{{--            <a class="nav-link" href="{{route('userProfileInfo')}}">PROFIL</a>--}}
{{--        </li>--}}
        <li class="nav-item">
            <a class="nav-link" href="{{route('usersAllSubscription')}}">Årsabonnement Norges Teqballforbund</a>
        </li>
{{--        <li class="nav-item">--}}
{{--            <a class="nav-link" href="{{route('register-activity.index')}}">TRENINGSDAGBOK</a>--}}
{{--        </li>--}}
        <li class="nav-item">
            <a class="nav-link" href="{{route('userInfo')}}">Teqballøvelser og programmer</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="{{ route('logout') }}"
               onclick="event.preventDefault(); document.getElementById('logout-form').submit();"><div class="parent-icon"><i class='bx bx-exit'></i></div>
                <div class="menu-title">Logg ut</div>
            </a>

            <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                @csrf
            </form>
        </li>
        @endguest
    </ul>
</nav>
@include("layouts.alert_message")
@yield("content")

<!-- Bootstrap JS -->
<script src="{{asset('assets/js/bootstrap.bundle.min.js')}}"></script>
<!--app JS-->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
@yield("script")

</body>
</html>
