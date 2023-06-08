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
					<div class="breadcrumb-title pe-3">{{__('custom.mmCenter')}}</div>
					<div class="ps-3">
						<nav aria-label="breadcrumb">
							<ol class="breadcrumb mb-0 p-0">
								<li class="breadcrumb-item"><a href="{{route('fullcalender.id','all')}}"><i class="bx bx-home-alt"></i></a>
								</li>
								<li class="breadcrumb-item active" aria-current="page">{{__('custom.mmCenterList')}}</li>
							</ol>
						</nav>
					</div>
					<div class="ms-auto">
						<div class="btn-group">
							<a href="{{route('mm-center.create')}}" class="btn btn-primary">{{__('custom.addmmCenter')}}</a>
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
                                        <th>{{__('custom.name')}}</th>
                                        <th>{{__('custom.city')}}</th>
                                        <th>{{__('custom.postalCode')}}</th>
                                        <th>{{__('custom.telephone')}}</th>
                                        <th>{{__('Adresse')}}</th>
{{--                                        <th data-src="yes">{{__('custom.is_active')}}</th>--}}
                                        <th>{{__('custom.created_at')}}</th>
                                        <th>{{__('custom.action')}}</th>
									</tr>
                                    <tr>
{{--                                        <th>{{__('custom.id')}}</th>--}}
                                        <th>{{__('custom.name')}}</th>
                                        <th>{{__('custom.city')}}</th>
                                        <th>{{__('custom.postalCode')}}</th>
                                        <th>{{__('custom.telephone')}}</th>
                                        <th>{{__('Adresse')}}</th>
{{--                                        <th>{{__('custom.is_active')}}</th>--}}
                                        <th>{{__('custom.created_at')}}</th>
                                         <th class="for-dnone">{{__('custom.action')}}</th>
									</tr>
								</thead>
                                <tbody>
                                @foreach($mmCenters as $item)
                                    <tr>
{{--                                        <td>{{$item->id}}</td>--}}
                                        <td>{{$item->name}}</td>
                                        <td>{{$item->city}}</td>
                                        <td>{{$item->postal_code}}</td>
                                        <td>{{$item->telephone}}</td>
                                        <td>{{$item->address}}</td>
{{--                                        <td class="for-cust-check-main {{$item->is_active ? 'for-cust-check' : 'for-cust-uncheck'}}">--}}
{{--                                            @if($item->is_active)--}}
{{--                                                {{__("custom.yes")}}--}}
{{--                                            @else--}}
{{--                                                {{__("custom.no")}}--}}
{{--                                            @endif--}}
{{--                                        </td>--}}
{{--                                        <td>{{date('d-M-Y' , strtotime($item->created_at))}}</td>--}}
                                        <td>{{ucwords(strftime("%A %e %B %Y",strtotime($item->created_at)))}}</td>
                                        <td>
                                            <a href="{{route('mm-center.edit',['mm_center' => $item->id ])}}" class="btn btn-info text-white">{{__('custom.edit')}}</a>
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
                let path = `{{ url('mm-center/${id}') }}`;
                $('#delete-form').attr('action', path);
                $('#delete-form').submit();
            }
        }
		$(document).ready(function() {
			$('#example').DataTable();
		  } );
	</script>
	@endsection
