@extends('user.app')
@section('content')
<div class="container">

    <div class="sevpage-title">
        <h3>Abonnement</h3>
    </div>
    <table class="table table-hover table-bordered">
        <thead>
        <tr>
{{--            <th scope="col">ID</th>--}}
            <th scope="col">Navn på abonnement</th>
{{--            <th scope="col">Gruppe</th>--}}
{{--            <th scope="col">Pris for en mnd</th>--}}
{{--            <th scope="col">Pris for 6 mnd</th>--}}
            <th scope="col">Varighet</th>
            <th scope="col">Handling</th>
            <th scope="col">Gjenstår</th>
        </tr>
        </thead>
        <tbody>
        @forelse ($userSubLists as $item)
            <tr>
{{--                <th scope="row">{{$item->id}}</th>--}}
                <td>{{$item->programSetup->name}}</td>
{{--                <td>{{$item->group->name}}</td>--}}
                {{--                <td>{{$item->price_a_month}} kr</td>--}}
                {{--                <td>{{$item->price_6_month}} kr</td>--}}
                <td>
                    @isset($item->combineSubsProgram)
                        {{$item->combineSubsProgram->is_a_month ? '1 mnd': ''}} {{$item->combineSubsProgram->is_6_month ? '6 monts': ''}}
                    @endisset
                </td>
                <td>
                    @if(isset($item->combineSubsProgram))
                        @if ($item->combineSubsProgram->subscription->ends_at != null)
                            <a href="{{route('renewSubscription.id',$item->combineSubsProgram->subscription->name)}}" class="btn btn-primary">Aktiver</a>
                        @else
                            <a href="{{route('pauseSubscription.id',$item->combineSubsProgram->subscription->name)}}" class="btn btn-primary">Kanseller</a>
                        @endif
                    @else
                        <a href="{{route('usersSubscriptionById.id',$item->id)}}" class="btn btn-primary">se</a>
                    @endif
                </td>

                <td>
                    @if(isset($item->combineSubsProgram))

                        @php
                            $startDate = Carbon\Carbon::createFromFormat('Y-m-d H:i:s', Carbon\Carbon::now());
                            $endDate = Carbon\Carbon::createFromFormat('Y-m-d H:i:s', $item->combineSubsProgram->subscription->subscription_ends_at);

                            $days = $startDate->diffInDays($endDate);
                            $hours = $startDate->copy()->addDays($days)->diffInHours($endDate);
                            $minutes = $startDate->copy()->addDays($days)->addHours($hours)->diffInMinutes($endDate);
                        @endphp
{{--                        <span>{{$item->combineSubsProgram->subscription->remaining_days}} Dager igjen</span>--}}
                        <span>{{$days}} dager {{$hours}} timer {{$minutes}} minutter igjen</span>
                    @endif
                </td>
            </tr>
        @empty
            <tr>
                <td colspan="5">Ingen abonnement funnet!</td>
            </tr>
        @endforelse
        </tbody>
    </table>
    <div class="row">
        <div class="col-lg-12 text-center pt-2">
            <a href="{{route('usersAllSubscription2')}}" class="btn btn-primary">SSA Football Performance</a>
        </div>
    </div>
</div>
@endsection
@section('script')
@endsection
