	@extends("layouts.app")

	@section("style")
	<link href="{{asset('assets/plugins/datatable/css/dataTables.bootstrap5.min.css')}}" rel="stylesheet" />
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
					<div class="breadcrumb-title pe-3">{{__('custom.ptClipboard')}}</div>
					<div class="ps-3">
						<nav aria-label="breadcrumb">
							<ol class="breadcrumb mb-0 p-0">
								<li class="breadcrumb-item"><a href="javascript:;"><i class="bx bx-home-alt"></i></a>
								</li>
								<li class="breadcrumb-item active" aria-current="page">{{__('custom.ptClipboardList')}}</li>
							</ol>
						</nav>
					</div>
					<div class="ms-auto">
						<div class="btn-group">
{{--							<a href="{{route('pt-clipboard.create')}}" class="btn btn-primary">{{__('custom.refresh')}}</a>--}}
						</div>
					</div>
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
                                        <th>{{__('custom.name')}}</th>
                                        <th>{{__('custom.city')}}</th>
                                        <th>{{__('custom.remainingClipboard')}}</th>
{{--                                        <th>{{__('custom.created_at')}}</th>--}}
                                        <th>{{__('custom.action')}}</th>
									</tr>
                                    <tr>
                                        <th data-src="yes">{{__('custom.name')}}</th>
                                        <th data-src="yes">{{__('custom.city')}}</th>
                                        <th data-src="no">{{__('custom.remainingClipboard')}}</th>
{{--                                        <th>{{__('custom.created_at')}}</th>--}}
                                         <th class="for-dnone">{{__('custom.action')}}</th>
									</tr>
								</thead>
                                <tbody>
                                @foreach($ptClipboards as $item)
                                    <tr>
                                        <td>{{$item->practitioner->name}}</td>
                                        <td>{{$item->practitioner->city ?? '---'}}</td>
                                        <td>{{$item->remain_clip}}</td>
                                        {{--                                        <td>{{date('d-M-Y' , strtotime($item->created_at))}}</td>--}}
                                        <td>
                                            <a href="{{route('registerAttendance.id',$item->id)}}" class="btn btn-info text-white">{{__('custom.registerAttendance')}}</a>

{{--                                            <button type="button" class="btn btn-info text-white addUserPtClipboard"--}}
{{--                                                    onclick="addUserPtClipboard({{ $item->id }})"--}}
{{--                                                    data-id="{{$item->id}}" data-bs-toggle="modal"--}}
{{--                                                    data-bs-target="#addUserPtClipboard">{{__('custom.addClipboard')}}</button>--}}

                                            <button type="button" class="btn btn-info text-white editUserPtClipboard editremainclips"
                                                    onclick="editUserPtClipboard({{ $item->id }} , {{$item->remain_clip}})"
                                                    data-id="{{$item->id}}" data-bs-toggle="modal"
                                                    data-bs-target="#editUserPtClipboard">{{__('custom.editClipboard')}}</button>

                                            <a href="#delete" onclick="deleteRecord({{ $item->id }})" class="btn btn-danger">{{__('custom.delete')}}</a>
                                        </td>
                                    </tr>
                                @endforeach
                                </tbody>
                                <div class="modal fade" id="addUserPtClipboard" tabindex="-1" aria-hidden="true">
                                    <div class="modal-dialog modal-dialog-centered">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title">{{__('custom.addUsersPTClipboard')}}</h5>
                                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                        aria-label="Close"></button>
                                            </div>
                                            <div class="modal-body">
                                                <form class="row g-3" id="addUserPtClipboardform" method="POST"
                                                      action="{{route('addUserPtClipboard')}}">
                                                    @csrf
                                                    <input type="hidden" name="userPtClipboardid" class="form-control"
                                                           id="userPtClipboardid" value="">

                                                    <div class="col-md-12">
                                                        <input type="number" min="1" class="form-control" name="clipboard" placeholder="{{__('custom.numberOfClipboards')}} *" id="clipboard">
                                                    </div>
                                                </form>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">{{__('custom.close')}}</button>
                                                <button type="submit" class="btn btn-primary userPtClipboardbtn">{{__('custom.saveChangesNew')}}</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>

{{--                                --Edit pt clips-- --}}
                                <div class="modal fade" id="editUserPtClipboard" tabindex="-1" aria-hidden="true">
                                    <div class="modal-dialog modal-dialog-centered">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title">{{__('custom.editUsersPTClipboard')}}</h5>
                                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                        aria-label="Close"></button>
                                            </div>
                                            <div class="modal-body">
                                                <form class="row g-3" id="editUserPtClipboardform" method="POST"
                                                      action="{{route('editUserPtClipboard')}}">
                                                    @csrf
                                                    <input type="hidden" name="userPtClipboardid" class="form-control"
                                                           id="edituserPtClipboardid" value="">

                                                    <div class="col-md-12">
                                                        <input type="number" min="1" class="form-control" name="clipboard" placeholder="{{__('custom.numberOfClipboards')}} *" id="editclipboard">
                                                    </div>
                                                </form>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">{{__('custom.close')}}</button>
                                                <button type="submit" class="btn btn-primary userPtClipboardbtn">{{__('custom.saveChangesNew')}}</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
							</table>
                            <form id="delete-form" method="POST" style="display:none">
                                @method('DELETE')
                                @csrf
                                <button type="submit">Delete</button>
                            </form>
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
                let path = `{{ url('pt-clipboard/${id}') }}`;
                $('#delete-form').attr('action', path);
                $('#delete-form').submit();
            }
        }
        function addUserPtClipboard(id) {
            $("#userPtClipboardid").val(id);
        }
        $(".userPtClipboardbtn").click(function (e) {
            e.preventDefault();
            $('#addUserPtClipboardform').submit();
        });

        // Edit Pt clips

        function editUserPtClipboard(id ,remainClips) {
            $("#edituserPtClipboardid").val(id);
            $("#editclipboard").val(remainClips);

        }
        $(".userPtClipboardbtn").click(function (e) {
            e.preventDefault();
            $('#editUserPtClipboardform').submit();
        });
		$(document).ready(function() {
			$('#example').DataTable();
		  } );
	</script>
	@endsection
