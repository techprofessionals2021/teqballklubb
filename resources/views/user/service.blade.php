@extends('user.app')
@section('content')
<div class="container">

    <div class="sevpage-title">
        <h3>Registrer aktivitet</h3>
        <a href="{{route('register-activity.index')}}" class="btn btn-primary"> Treningsdagbok</a>
    </div>

    <div class="form-serv pb-5">
        <form method="POST" class="needs-validation" novalidate action="{{route('register-activity.store')}}">
            @csrf
            <div class="form-items">
                <i class="fa-solid fa-address-card"></i>
                <input type="text" class="form-control" required value="{{$user->name}}" placeholder="Fornavn*" readonly>
            </div>

            {{-- <div class="form-items">
                <i class="fa-solid fa-address-card field2"></i>
                <input type="text" class="form-control" required value="{{$user->username}}" placeholder="Etternavn*" readonly>
            </div> --}}

            <div class="form-items">
                <i class="fa-solid fa-calendar-days field3"></i>
                <input type="date" class="form-control" placeholder="Dato*" name="recordDate" value=""  required>
                <div class="invalid-feedback">Vennligst oppgi en gyldig Dato.</div>
            </div>
            <p class="form-text">Registrer øktens dato.</p>

            <div class="form-items">
                <i class="fa-solid fa-clock-rotate-left field4"></i>
                <input type="number" class="form-control" min="0" max="1440" required name="duration" placeholder="Varighet i minutter*">
                <div class="invalid-feedback">Vennligst oppgi en gyldig Varighet.</div>
            </div>
            <p class="form-text">Varighet i minutter</p>

            <div class="form-items">
                <i class="fa-solid fa-dumbbell"></i>
                <input type="text" class="form-control" required name="exerciseName" placeholder="Treningsform *">
                <div class="invalid-feedback">Vennligst oppgi en gyldig øvelsesnavn.</div>
            </div>

            <div class="form-items">
                <i class="fa-solid fa-bolt-lightning"></i>
                <input type="number" class="form-control" min="0" max="10" required name="intensity" placeholder="Registrer intensitet på en skala fra 0 og 10*">
                <div class="invalid-feedback">Vennligst oppgi en gyldig intensitet.</div>
            </div>
            <p class="form-text">Intensitet ( 0 = Hvile, 1 = Veldig Lett, 2 = Lett, 3 = Moderat, 4 = Litt hard, 5-6 = Hard, 7-9 = Veldig hard, 10 = Maksimalt )</p>

            <div class="form-items">
                <i class="fa-briefcase-medical fas"></i>
                <input type="number" class="form-control" min="0" max="10" required name="injuryPain" placeholder="Registrer skade/smerte på en skala fra 0 og 10*">
                <div class="invalid-feedback">Vennligst oppgi en gyldig Skade Smerte.</div>
            </div>
            <p class="form-text">Skade / Smerte ( 0-2 = Ingen Skader / Smerter, 3-4 = Litt Skade / Smerter, 5-6 = Moderate Skade / Smerter, 7-8 = Sterke Skade / Smerter, 9-10 = Maksimale Skade / Smerter )</p>

            <div class="form-items">
                <i class="fa-couch fas"></i>
                <input type="number" class="form-control" min="0" max="10" required name="recovery" placeholder="Registrere restituering på en skala fra 0 og 10*">
                <div class="invalid-feedback">Vennligst oppgi en gyldig Restituering.</div>
            </div>
            <p class="form-text">Restituering (0-2 = Dårlig Restituert, 3-4 = Litt Restituert, 5-6 = Moderat Restituert, 7-8 = Bra Restituert, 9-10 = Maksimalt Restituert)</p>

            <div class="form-items">
                <i class="fa-bed fas"></i>
                <input type="number" class="form-control" min="0" max="10" required name="sleep_quality" placeholder="Registrer søvnkvalitet på en skala fra 0 og 10*">
                <div class="invalid-feedback">Vennligst oppgi en gyldig Søvn.</div>
                <p class="form-text">Søvn (0-2 = Veldig dårlig søvn, 3-4 = Dårlig søvn, 5-6 = Ok søvn, 7-8 = God søvn, 9-10 = Veldig dyp søvn) </p>
            </div>

            <div class="form-items">
                <i class="fa-bed fas"></i>
                <input type="number" class="form-control" min="0" max="10" required name="sleep" placeholder="Registrer søvn*">
                <div class="invalid-feedback">Vennligst oppgi en gyldig Søvn.</div>
                <p class="form-text">Antall timer </p>
            </div>

            <div class="form-items">
                <i class="fa-userr fas"></i>
                <select class="form-control" name="coach_id" required>
                    @forelse ($coaches as $item)
                        <option value="{{$item->id}}">{{$item->name}}</option>
                    @empty
                        <option disabled value="">Ingen trener funnet!</option>
                    @endforelse
                </select>
            </div>
            <p class="form-text">Velg din personlige trener</p>

            <div class="form-items">
                <i class="fa-comment fas"></i>
                <textarea cols="40" rows="4" name="comments" required placeholder="Kommenter treningsøkten *"></textarea>
            </div>
            <p class="form-text">Kommenter din treningsøkt</p>

            <div class="btn-sbmt">
                <button type="submit" class="btn sbmtt">Registrer aktivitet</button>
            </div>
        </form>
    </div>
</div>
@endsection
@section('script')
<script>
    (function () {
        'use strict';
        window.addEventListener('load', function () {
            // Fetch all the forms we want to apply custom Bootstrap validation styles to
            var forms = document.getElementsByClassName('needs-validation');
            // Loop over them and prevent submission
            var validation = Array.prototype.filter.call(forms, function (form) {
                form.addEventListener('submit', function (event) {
                    if (form.checkValidity() === false) {
                        event.preventDefault();
                        event.stopPropagation();
                    }
                    form.classList.add('was-validated');
                }, false);
            });
        }, false);
    })();
</script>
@endsection
