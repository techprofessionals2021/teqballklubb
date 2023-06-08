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
					<div class="breadcrumb-title pe-3">{{__('custom.setupFixedPrograms')}}</div>
					<div class="ps-3">
						<nav aria-label="breadcrumb">
							<ol class="breadcrumb mb-0 p-0">
								<li class="breadcrumb-item"><a href="javascript:;"><i class="bx bx-home-alt"></i></a>
								</li>
								<li class="breadcrumb-item active" aria-current="page">{{__('custom.setupFixedProgramsList')}}</li>
							</ol>
						</nav>
					</div>
					<div class="ms-auto">
						<div class="btn-group">
							<a href="{{route('setup-fixed-program.create')}}" class="btn btn-primary">{{__('custom.setupFixedAdd')}}</a>
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
{{--                                        <th>{{__('custom.id')}}</th>--}}
                                        <th>{{__('Navn på fast program')}}</th>
{{--                                        <th>{{__('custom.groupName')}}</th>--}}
{{--                                        <th>{{__('custom.practitioner')}}</th>--}}
{{--                                        <th>{{__('custom.type')}}</th>--}}
{{--                                        <th>{{__('custom.comments')}}</th>--}}
{{--                                        <th>{{__('custom.sort')}}</th>--}}
                                        <th>{{__('custom.created_at')}}</th>
                                        <th>{{__('custom.action')}}</th>
									</tr>
                                    <tr>
{{--                                        <th>{{__('custom.id')}}</th>--}}
                                        <th data-src="no">{{__('Navn på fast program')}}</th>
{{--                                        <th>{{__('custom.groupName')}}</th>--}}
{{--                                        <th>{{__('custom.practitioner')}}</th>--}}
{{--                                        <th data-src="yes">{{__('custom.type')}}</th>--}}
{{--                                        <th data-src="no">{{__('custom.comments')}}</th>--}}
{{--                                        <th>{{__('custom.sort')}}</th>--}}
                                        <th data-src="no">{{__('custom.created_at')}}</th>
                                         <th class="for-dnone">{{__('custom.action')}}</th>
									</tr>
								</thead>
                                <tbody>
                                @foreach($setupFixedPrograms as $item)
                                    <tr>
{{--                                        <td>{{$item->id}}</td>--}}
                                        <td>{{$item->name}}</td>
{{--                                        <td>{{$item->group->name}}</td>--}}
{{--                                        <td>{{$item->practitioner->name}}</td>--}}
{{--                                        <td>{{$item->exCategory->name}}</td>--}}
{{--                                        <td>{{$item->comment}}</td>--}}
{{--                                        <td>{{$item->sort}}</td>--}}
{{--                                        <td>{{date('d-M-Y' , strtotime($item->created_at))}}</td>--}}
                                        <td>{{ucwords(strftime("%A %e %B %Y",strtotime($item->created_at)))}}</td>
                                        <td>
                                            <a href="{{route('setup-fixed-program.edit',['setup_fixed_program' => $item->id ])}}" class="btn btn-info text-white">{{__('custom.edit')}}</a>
                                            <a href="{{route('setupFixedProgramAddContent.id',['id' => $item->id])}}" class="btn btn-info text-white">{{__('custom.addPrograms')}}</a>
                                            <a href="#delete" onclick="deleteRecord({{ $item->id }})" class="btn btn-danger">{{__('custom.delete')}}</a>
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
                let path = `{{ url('setup-fixed-program/${id}') }}`;
                $('#delete-form').attr('action', path);
                $('#delete-form').submit();
            }
        }
		$(document).ready(function() {
			$('#example').DataTable();
		  } );
	</script>
	@endsection
