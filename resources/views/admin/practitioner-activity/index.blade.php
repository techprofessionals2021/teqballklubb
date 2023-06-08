@extends("layouts.app")

@section("style")
    <link href="{{asset('assets/plugins/datatable/css/dataTables.bootstrap5.min.css')}}" rel="stylesheet"/>
    <style>
        .dt-buttons.btn-group {
            display: none;
        }
    </style>
@endsection

@section("wrapper")
    <!--start page wrapper -->
    <div class="page-wrapper">
        @include("layouts.alert_message")
        <div class="page-content">
            <!--breadcrumb-->
            <div class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">
                <div class="breadcrumb-title pe-3">{{__('custom.registeredActivity')}}</div>
                <div class="ps-3">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb mb-0 p-0">
                            <li class="breadcrumb-item"><a href="javascript:;"><i class="bx bx-home-alt"></i></a>
                            </li>
                            <li class="breadcrumb-item active"
                                aria-current="page">{{__('custom.registeredActivityList')}} </li>
                        </ol>
                    </nav>
                </div>
                {{--					<div class="ms-auto">--}}
                {{--						<div class="btn-group">--}}
                {{--							<a href="{{route('group.create')}}" class="btn btn-primary">{{__('custom.add')}}</a>--}}
                {{--						</div>--}}
                {{--					</div>--}}
            </div>
            <!--end breadcrumb-->
            {{--				<h6 class="mb-0 text-uppercase">Profession Section</h6>--}}
            <hr/>
            <div class="card">
                <div class="card-body">
                    <div class="table-responsive">
                        <table id="example2" class="table table-striped table-bordered">
                            <thead>
                            <tr>
{{--                                <th>{{__('custom.id')}}</th>--}}
                                <th>{{__('custom.group')}}</th>
                                <th>{{__('custom.practitioner')}}</th>
                                <th>{{__('custom.exercise_name')}}</th>
                                <th>{{__('custom.duration')}}</th>
                                <th>{{__('custom.intensity')}}</th>
                                <th>{{__('custom.injuryPain')}}</th>
                                <th>{{__('custom.recovery')}}</th>
                                <th>{{__('custom.sleep')}}</th>
                                <th>{{__('custom.date')}}</th>
                                <th>{{__('custom.ptComment')}}</th>
                                <th>{{__('custom.ptNote')}}</th>
                                <th>{{__('custom.action')}}</th>
                            </tr>
                            <tr>
{{--                                <th>{{__('custom.id')}}</th>--}}
                                <th data-src="yes">{{__('custom.group')}}</th>
                                <th data-src="yes">{{__('custom.practitioner')}}</th>
                                <th data-src="yes">{{__('custom.exercise_name')}}</th>
                                <th>{{__('custom.duration')}}</th>
                                <th>{{__('custom.intensity')}}</th>
                                <th>{{__('custom.injuryPain')}}</th>
                                <th>{{__('custom.recovery')}}</th>
                                <th>{{__('custom.sleep')}}</th>
                                <th>{{__('custom.date')}}</th>
                                <th>{{__('custom.ptComment')}}</th>
                                <th>{{__('custom.ptNote')}}</th>
                                 <th class="for-dnone">{{__('custom.action')}}</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($allUsersActivities as $item)
                                @if(!isset($item->userInfo) || !isset($item->userInfo->group))
                                    @continue
                                @endif
                                <tr>
{{--                                    <th scope="row">{{$item->id}}</th>--}}
                                    <td>{{$item->userInfo->group->name ?? '---'}}</td>
                                    <td>{{$item->userInfo->name ?? '---'}}</td>
                                    <td>{{$item->exerciseName}}</td>
                                    <td>{{$item->duration}}</td>
                                    <td>{{$item->intensity}}</td>
                                    <td>{{$item->injuryPain}}</td>
                                    <td>{{$item->recovery}}</td>
                                    <td>{{$item->sleep}}</td>
                                    <td>{{$item->recordDate}}</td>
                                    <td>{{$item->comment}}</td>
                                    <td>{{$item->note}}</td>
                                    <td>
                                        <button type="button" class="btn btn-info text-white addRegisterActivityNote"
                                                onclick="addRegisterActivityNote({{ $item->id }})"
                                                data-id="{{$item->id}}" data-note="{{$item->note}}" data-bs-toggle="modal"
                                                data-bs-target="#addRegisterActivityNote">{{__('custom.edit')}}</button>
                                        <a href="#delete" onclick="deleteRecord({{ $item->id }})" class="btn btn-danger">{{__('custom.delete')}}</a>
                                        {{--                                            <a href="{{route('register-activity.edit',['register_activity' => $item->id ])}}" class="btn btn-info text-white">{{__('custom.note')}}</a>--}}
                                    </td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>
                        <form id="delete-form" method="POST" style="display:none">
                            @method('DELETE')
                            @csrf
                            <button type="submit">Delete</button>
                        </form>
                        <div class="modal fade" id="addRegisterActivityNote" tabindex="-1" aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title">{{__('custom.addRegisteredActivityNote')}} </h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <form class="row g-3" id="regActivityform" method="POST"
                                              action="{{route('registeredActivityNote')}}">
                                            @csrf
                                            <input type="hidden" name="regActivityid" class="form-control"
                                                   id="regActivityid" value="">

                                            <div class="col-md-12">
                                                <textarea class="form-control" name="note" id="note"></textarea>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">{{__('custom.close')}}
                                        </button>
                                        <button type="submit" class="btn btn-primary regActivityformbtn">{{__('custom.saveChanges')}}
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--end page wrapper -->
@endsection

@section("script")
<script src="{{asset('assets/plugins/datatable/js/jquery.dataTables.min.js')}}"></script>
<script src="{{asset('assets/plugins/datatable/js/dataTables.bootstrap5.min.js')}}"></script>
<script>
    function deleteRecord(id) {
        let confirmBox = confirm('Vil du virkelig slette?');
        if (confirmBox) {
            let path = `{{ url('delete-register-activity/${id}') }}`;
            $('#delete-form').attr('action', path);
            $('#delete-form').submit();
        }
    }
    function addRegisterActivityNote(id) {
        $("#regActivityid").val(id);
    }
    $(".addRegisterActivityNote").click(function (e) {
        e.preventDefault();
        $('#note').text($(this).data('note'));
    });
    $(".regActivityformbtn").click(function (e) {
        e.preventDefault();
        $('#regActivityform').submit();
    });
    $(document).ready(function () {
        $('#example').DataTable();
    });
</script>
@endsection
