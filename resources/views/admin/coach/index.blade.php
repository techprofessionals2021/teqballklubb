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
					<div class="breadcrumb-title pe-3">{{__('custom.coach')}}</div>
					<div class="ps-3">
						<nav aria-label="breadcrumb">
							<ol class="breadcrumb mb-0 p-0">
								<li class="breadcrumb-item"><a href="{{route('fullcalender.id','all')}}"><i class="bx bx-home-alt"></i></a>
								</li>
								<li class="breadcrumb-item active" aria-current="page">{{__('custom.coachList')}}</li>
							</ol>
						</nav>
					</div>
					<div class="ms-auto">
						<div class="btn-group">
							<a href="{{route('coach.create')}}" class="btn btn-primary"> {{__('custom.createCoach')}}</a>
						</div>
					</div>
				</div>
				<!--end breadcrumb-->
{{--				<h6 class="mb-0 text-uppercase">{{__('custom.exercise_type')}} {{__('custom.section')}}</h6>--}}
				<hr/>
				<div class="card">
					<div class="card-body">
						<div class="table-responsive">
							<table id="example2" class="table table-striped table-bordered">
								<thead>
                                    <tr>
{{--                                        <th scope="colgroup">{{__('custom.id')}}</th>--}}
                                        <th scope="colgroup">{{__('custom.name')}}</th>
                                        <th scope="colgroup">{{__('custom.telephone')}}</th>
                                        <th scope="colgroup">{{__('custom.email')}}</th>
                                        <th scope="colgroup">{{__('custom.workplace')}}</th>
                                        <th scope="colgroup">{{__('custom.coachFunction')}}</th>
{{--                                        <th scope="colgroup">{{__('custom.level')}}</th>--}}
                                        <th scope="colgroup">{{__('custom.note')}}</th>
                                        <th scope="colgroup">{{__('custom.address')}}</th>
{{--                                        <th scope="colgroup">{{__('custom.personalIdNumber')}}</th>--}}
                                        <th scope="colgroup">{{__('custom.active')}}</th>
                                        <th scope="colgroup">{{__('custom.calendar')}}</th>
                                        {{--										<th>{{__('custom.blog')}}</th>--}}
                                        <th scope="colgroup">{{__('custom.created_at')}}</th>
                                        <th scope="colgroup">{{__('custom.action')}}</th>
                                    </tr>
									<tr>
{{--										<th>{{__('custom.id')}}</th>--}}
										<th data-src="no">{{__('custom.name')}}</th>
										<th data-src="no">{{__('custom.telephone')}}</th>
										<th data-src="no">{{__('custom.email')}}</th>
										<th data-src="no">{{__('custom.workplace')}}</th>
										<th data-src="yes">{{__('custom.coachFunction')}}</th>
{{--										<th data-src="yes">{{__('custom.level')}}</th>--}}
										<th data-src="yes">{{__('custom.note')}}</th>
										<th data-src="no">{{__('custom.address')}}</th>
{{--										<th data-src="no">{{__('custom.personalIdNumber')}}</th>--}}
										<th data-src="yes">{{__('custom.active')}}</th>
										<th data-src="yes">{{__('custom.calendar')}}</th>
{{--										<th>{{__('custom.blog')}}</th>--}}
                                        <th data-src="no">{{__('custom.created_at')}}</th>
                                        <th class="for-dnone">{{__('custom.action')}}</th>
									</tr>
								</thead>
                                <tbody>
                                @foreach($coaches as $item)
                                    @php
                                       $role = \App\Models\role::where('name',$item->getRoles()->first())->first();
                                    @endphp
                                    <tr>
{{--                                        <td>{{$item->id}}</td>--}}
                                        <td>{{$item->name}}</td>
                                        <td>{{$item->telephone ?? '--'}}</td>
                                        <td>{{$item->email ?? '--'}}</td>
                                        <td>{{$item->coachInfo->workplace ?? '--'}}</td>

                                        <td>{{$role != null ? $role->title : '---'}}
                                        </td>
{{--                                        <td>{{$item->coachInfo->level ?? '--'}}</td>--}}
                                        <td>{{$item->coachInfo->note ?? '--'}}</td>
                                        <td>{{$item->coachInfo->address ?? '--'}}</td>
{{--                                        <td>{{$item->coachInfo->personalIdNumber ?? '--'}}</td>--}}
                                        <td class="for-cust-check-main {{$item->is_active ? 'for-cust-check' : 'for-cust-uncheck'}}">
                                               @if($item->is_active)
                                                   {{__("custom.yes")}}
                                               @else
                                                   {{__("custom.no")}}
                                               @endif
                                        </td>
                                        @if(isset($item->coachInfo))
                                        <td class="for-cust-check-main {{$item->coachInfo->calendar ? 'for-cust-check' : 'for-cust-uncheck'}}">
                                            @if($item->coachInfo)
                                                @if($item->coachInfo->calendar)
                                                    {{__("custom.yes")}}
                                                @else
                                                    {{__("custom.no")}}
                                                @endif
                                            @else
                                            @endif
                                        </td>
                                        @else
                                            <td class="for-cust-check-main">
                                                        {{__("custom.no")}}
                                            </td>
                                        @endif

{{--                                        <td>--}}
{{--                                            <div class="form-check">--}}
{{--                                                <input class="form-check-input" disabled {{$item->coachInfo->blog ? 'checked' : ''}} type="checkbox" value="">--}}
{{--                                            </div>--}}
{{--                                        </td>--}}

{{--                                        <td>{{date('d-M-Y' , strtotime($item->created_at))}}</td>--}}
                                        <td>{{ucwords(strftime("%A %e %B %Y",strtotime($item->created_at)))}}</td>
                                        <td>
                                            <a href="{{route('coach.edit',['coach' => $item->id ])}}" class="btn btn-info text-white">{{__('custom.edit')}}</a>
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
                let path = `{{ url('coach/${id}') }}`;
                $('#delete-form').attr('action', path);
                $('#delete-form').submit();
            }
        }
		$(document).ready(function() {
			$('#example').DataTable();
		  } );
	</script>
	@endsection
