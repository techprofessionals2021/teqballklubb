@extends('user.app')
@section('content')
<div class="container">

    <div class="sevpage-title">
        <h3>Aktivitetsliste</h3>
        <a href="{{route('register.activity')}}" class="btn btn-primary">Registrer aktivitet</a>
    </div>
    <table class="table table-hover table-bordered">
        <thead>
        <tr>
            <th scope="col">ID</th>
            <th scope="col">Treningsform</th>
            <th scope="col">Varighet (Min)</th>
            <th scope="col">Intensitet</th>
            <th scope="col">Skade/Smerte</th>
            <th scope="col">Restitusjon</th>
            <th scope="col">Søvn</th>
            <th scope="col">Søvnkvalitet </th>
            <th scope="col">Dato</th>
            <th scope="col">Kommentar</th>
            <th scope="col">Kommentar fra PT</th>
        </tr>
        </thead>
        <tbody>
        @forelse ($activityLists as $item)
            <tr>
                <th scope="row">{{$item->id}}</th>
                <td>{{$item->exerciseName}}</td>
                <td>{{$item->duration}}</td>
                <td>{{$item->intensity}}</td>
                <td>{{$item->injuryPain}}</td>
                <td>{{$item->recovery}}</td>
                <td>{{$item->sleep}}</td>
                <td>{{$item->sleep_quality}}</td>
                <td>{{$item->recordDate}}</td>
                <td>{{$item->comment}}</td>
                <td>{{$item->note}}</td>
            </tr>
        @empty
            <tr>
                <td colspan="10">Ingen registreringsaktivitet funnet!</td>
            </tr>
        @endforelse
        </tbody>
    </table>
</div>
@endsection
@section('script')
@endsection
