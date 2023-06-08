	@extends("layouts.app")

	@section("style")
	<link href="{{asset('assets/plugins/datatable/css/dataTables.bootstrap5.min.css')}}" rel="stylesheet" />
	@endsection

		@section("wrapper")
		<!--start page wrapper -->
		<div class="page-wrapper">
            @include("layouts.alert_message")
			<div class="page-content">
				<!--breadcrumb-->
				<div class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">
					<div class="breadcrumb-title pe-3">{{__('custom.caseworker')}}</div>
					<div class="ps-3">
						<nav aria-label="breadcrumb">
							<ol class="breadcrumb mb-0 p-0">
								<li class="breadcrumb-item"><a href="{{route('fullcalender.id','all')}}"><i class="bx bx-home-alt"></i></a>
								</li>
								<li class="breadcrumb-item active" aria-current="page">{{__('custom.caseworker')}} {{__('custom.list')}}</li>
							</ol>
						</nav>
					</div>
					<div class="ms-auto">
						<div class="btn-group">
							<a href="{{route('caseworker.create')}}" class="btn btn-primary">{{__('custom.add')}}</a>
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
                                        <th>{{__('custom.id')}}</th>
                                        <th>{{__('custom.name')}}</th>
                                        <th>{{__('custom.email')}}</th>
                                        <th>{{__('custom.telephone')}}</th>
                                        <th>{{__('custom.is_active')}}</th>
                                        <th>{{__('custom.created_at')}}</th>
                                        <th class="for-dnone">{{__('custom.action')}}</th>
									</tr>
								</thead>
                                <tbody>
                                @foreach($caseworkers as $item)
                                    <tr>
                                        <td>{{$item->id}}</td>
                                        <td>{{$item->name}}</td>
                                        <td>{{$item->email}}</td>
                                        <td>{{$item->telephone}}</td>
                                        <td>
                                            <div class="form-check">
                                                <input class="form-check-input" disabled {{$item->is_active ? 'checked' : ''}} type="checkbox" value="">
                                                <span class="d-none">{{$item->is_active  == 1 ? __('custom.yes') : __('custom.no')}}</span>
                                            </div>
                                        </td>
{{--                                        <td>{{date('d-M-Y' , strtotime($item->created_at))}}</td>--}}
                                        <td>{{ucwords(strftime("%A %e %B %Y",strtotime($item->created_at)))}}</td>
                                        <td>
                                            <a href="{{route('caseworker.edit',['caseworker' => $item->id ])}}" class="btn btn-info text-white">{{__('custom.edit')}}</a>
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
                let path = `{{ url('caseworker/${id}') }}`;
                $('#delete-form').attr('action', path);
                $('#delete-form').submit();
            }
        }
		$(document).ready(function() {
			$('#example').DataTable();
		  } );
	</script>
{{--	<script>
		$(document).ready(function() {
			var table = $('#example2').DataTable( {
				lengthChange: false,
				buttons: [ { extend: 'copy', text: '{{__('custom.copy')}}' }, 'excel', 'pdf', 'print'],
                language: {
                    info: "{{__('custom.showing')}} _START_ {{__('custom.to')}} _END_ {{__('custom.oof')}} _TOTAL_ {{__('custom.entries')}}",
                    search: "{{__('custom.search')}} :",
                    infoEmpty:      "{{__('custom.showing')}} 0 {{__('custom.to')}} 0 {{__('custom.oof')}} 0 {{__('custom.entries')}}",
                    infoFiltered:   "({{__('custom.filteredFrom')}} _MAX_ {{__('custom.totalEntries')}})",
                    zeroRecords:    "{{__('custom.zeroRecords')}}",
                    paginate: {
                        next:       "{{__('custom.nextt')}}",
                        previous:   "{{__('custom.prev')}}"
                    },
                }
			} );

			table.buttons().container()
				.appendTo( '#example2_wrapper .col-md-6:eq(0)' );
		} );
	</script>--}}
	@endsection
