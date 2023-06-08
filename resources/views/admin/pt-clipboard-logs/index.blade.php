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
					<div class="breadcrumb-title pe-3">{{__('custom.ptClipboardLogs')}}</div>
					<div class="ps-3">
						<nav aria-label="breadcrumb">
							<ol class="breadcrumb mb-0 p-0">
								<li class="breadcrumb-item"><a href="{{route('fullcalender.id','all')}}"><i class="bx bx-home-alt"></i></a>
								</li>
								<li class="breadcrumb-item active" aria-current="page">{{__('custom.ptClipboardLogsList')}}</li>
							</ol>
						</nav>
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
{{--                                        <th>{{__('custom.userId')}}</th>--}}
                                        <th>{{__('custom.name')}}</th>
                                        <th>{{__('custom.now')}}</th>
                                        <th>{{__('custom.previous')}}</th>
{{--                                        <th>{{__('custom.date')}}</th>--}}
                                        <th>{{__('custom.date')}}</th>
                                        <th>{{__('custom.createBy')}}</th>
									</tr>
                                    <tr>
{{--                                        <th>{{__('custom.userId')}}</th>--}}
                                        <th>{{__('custom.name')}}</th>
                                        <th>{{__('custom.now')}}</th>
                                        <th>{{__('custom.previous')}}</th>
{{--                                        <th>{{__('custom.date')}}</th>--}}
                                        <th>{{__('custom.date')}}</th>
                                        <th>{{__('custom.createBy')}}</th>
									</tr>
								</thead>
                                <tbody>
                                @foreach($ptClipboardLogs as $item)
                                    <tr>
{{--                                        <td>{{$item->practitioner->id}}</td>--}}
                                        <td>{{$item->practitioner->name}}</td>
                                        <td>{{$item->now}}</td>
                                        <td>{{$item->previous}}</td>
{{--                                        <td>{{date('D d F Y H:i:s' , strtotime($item->created_at))}}</td>--}}
                                        <td>{{ucwords(strftime("%A %e %B %Y %I:%M:%S",strtotime($item->created_at)))}}</td>
                                        <td>{{$item->createBy->name ?? ""}}</td>
                                    </tr>
                                @endforeach
                                </tbody>
							</table>
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
		$(document).ready(function() {
			$('#example').DataTable();
		  } );
	</script>
	@endsection
