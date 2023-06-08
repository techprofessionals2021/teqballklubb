@extends('user.app')
@section('content')
<div class="container">

    <div class="sevpage-title">
        <h3>Alle dine abonnementer</h3>
    </div>

{{--    <div class="table-responsive">--}}
        <table class="table table-hover">
            <thead>
                <tr>
                    <th scope="col">Navn på abonnement</th>
                    <th scope="col">Varighet</th>
                    <th scope="col">Handling</th>
                    <th scope="col">Gjenstår</th>
                </tr>
            </thead>
            <tbody>
            @forelse ($usersAllSubscriptions as $item)
                <tr>
                    <td>{{$item->getSubscriptionNameByPlanId($item->stripe_price)->subscription_name ?? '-Abonnement-'}}</td>
{{--                    <td>{{isset($item->subsItem->product) ? $item->subsItem->product->programSetup->name : $item->subsItem->product6->programSetup->name}}</td>--}}
                    <td>
                        @isset($item->subsItem->product)
                            1 mnd
                        @endisset
                        @isset($item->subsItem->product6)
                            6 mnd
                        @endisset
                    </td>
                    <td>
                        {{--                                @if($item->remaining_days == 0)--}}
                        @if ($item->ends_at != null)
                            {{--                                    <a href="{{route('renewSubscription.id',$item->stripe_id)}}" class="btn btn-success">Renew</a>--}}
                            <a href="{{route('renewSubscription.id',$item->name)}}" class="btn btn-primary">Start abonnement</a>
                            {{--                                    <a href="#" class="btn btn-success">Renew</a>--}}
                        @else
                            <a href="{{route('pauseSubscription.id',$item->name)}}" class="btn btn-primary">Kanseller abonnement</a>
                        @endif
                    </td>
                    <td>
                        @php
                            $startDate = Carbon\Carbon::createFromFormat('Y-m-d H:i:s', Carbon\Carbon::now());
                            $trialDaysCheack = 0;
                            if (isset($item->trial_ends_at)){
                                //todo imp days count
                             $trialDaysCheack = $startDate->diffInDays(Carbon\Carbon::createFromFormat('Y-m-d H:i:s', $item->trial_ends_at),false);
                            }
                            if($trialDaysCheack > 0){
                                $endDate = Carbon\Carbon::createFromFormat('Y-m-d H:i:s', $item->trial_ends_at);
                            }else{
                                $endDate = Carbon\Carbon::createFromFormat('Y-m-d H:i:s', $item->subscription_ends_at);
                            }

                            $days = $startDate->diffInDays($endDate);
                            $hours = $startDate->copy()->addDays($days)->diffInHours($endDate);
                            $minutes = $startDate->copy()->addDays($days)->addHours($hours)->diffInMinutes($endDate);
                        @endphp
                        <span>
                                {{$days}} dager {{$hours}} timer {{$minutes}} minutter igjen @if($trialDaysCheack > 0) ( Rettssaken ) @endif
                        </span>
                    </td>
                </tr>
            @empty
            @endforelse
            </tbody>
        </table>
{{--    </div>--}}
</div>
@endsection
@section('script')
@endsection
