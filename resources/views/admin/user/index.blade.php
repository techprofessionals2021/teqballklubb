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
					<div class="breadcrumb-title pe-3">{{__('custom.users')}}</div>
					<div class="ps-3">
						<nav aria-label="breadcrumb">
							<ol class="breadcrumb mb-0 p-0">
								<li class="breadcrumb-item"><a href="{{route('fullcalender.id','all')}}"><i class="bx bx-home-alt"></i></a>
								</li>
								<li class="breadcrumb-item active" aria-current="page">{{__('custom.userList')}}</li>
							</ol>
						</nav>
					</div>
					<div class="ms-auto">
						<div class="btn-group">
							<a href="{{route('user.create')}}" class="btn btn-primary"> {{__('custom.add')}} {{__('custom.user')}}</a>
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
{{--										<th>{{__('custom.id')}}</th>--}}
										<th>{{__('custom.name')}}</th>
										<th>{{__('custom.email')}}</th>
										<th>{{__('custom.address')}}</th>
										<th>{{__('custom.postnr')}}</th>
										<th>{{__('custom.city')}}</th>
										<th>{{__('custom.born')}}</th>
										<th>{{__('custom.telephone')}}</th>
										<th>{{__('custom.group')}}</th>
{{--										<th>{{__('custom.type')}}</th>--}}
{{--										<th>{{__('custom.profession')}}</th>--}}
{{--										<th>{{__('custom.right_left')}}</th>--}}
										<th>{{__('custom.age')}}</th>
{{--										<th>{{__('custom.exercise_name')}}</th>--}}
{{--										<th>{{__('Posisjon fotball')}}</th>--}}
										<th>{{__('custom.gender')}}</th>
{{--										<th>{{__('custom.level')}}</th>--}}
										<th>{{__('custom.mmCenter')}}</th>
{{--										<th>{{__('custom.ptClips')}}</th>--}}
{{--										<th>{{__('custom.note')}}</th>--}}
{{--										<th>{{__('custom.journal')}}</th>--}}
										<th>{{__('custom.active')}}</th>
{{--										<th>{{__('custom.statistics')}}</th>--}}
{{--										<th>{{__('custom.pt_customer')}}</th>--}}
										<th>{{__('custom.consent')}}</th>
{{--										<th>{{__('custom.utv_adr_info')}}</th>--}}
{{--										<th>{{__('custom.selfreg')}}</th>--}}
{{--										<th>{{__('custom.aft')}}</th>--}}
                                        <th>{{__('custom.created_at')}}</th>
                                        <th>{{__('custom.action')}}</th>
									</tr>
                                    <tr>
{{--										<th>{{__('custom.id')}}</th>--}}
										<th data-src="no">{{__('custom.name')}}</th>
										<th data-src="no">{{__('custom.email')}}</th>
										<th data-src="no">{{__('custom.address')}}</th>
										<th data-src="no">{{__('custom.postnr')}}</th>
										<th data-src="no">{{__('custom.city')}}</th>
										<th data-src="no">{{__('custom.born')}}</th>
										<th data-src="no">{{__('custom.telephone')}}</th>
										<th data-src="yes">{{__('custom.group')}}</th>
{{--										<th data-src="yes">{{__('custom.type')}}</th>--}}
{{--										<th data-src="yes">{{__('custom.profession')}}</th>--}}
{{--										<th data-src="yes">{{__('custom.right_left')}}</th>--}}
										<th data-src="no">{{__('custom.age')}}</th>
{{--										<th data-src="no">{{__('custom.exercise_name')}}</th>--}}
{{--										<th data-src="yes">{{__('Posisjon fotball')}}</th>--}}
										<th data-src="no">{{__('custom.gender')}}</th>
{{--										<th data-src="yes">{{__('custom.level')}}</th>--}}
										<th data-src="yes">{{__('custom.mmCenter')}}</th>
{{--										<th data-src="no">{{__('custom.ptClips')}}</th>--}}
{{--										<th data-src="no">{{__('custom.note')}}</th>--}}
{{--										<th data-src="no">{{__('custom.journal')}}</th>--}}
										<th data-src="yes">{{__('custom.active')}}</th>
{{--										<th data-src="yes">{{__('custom.statistics')}}</th>--}}
{{--										<th data-src="yes">{{__('custom.pt_customer')}}</th>--}}
										<th data-src="yes">{{__('custom.consent')}}</th>
{{--										<th>{{__('custom.utv_adr_info')}}</th>--}}
{{--										<th data-src="yes">{{__('custom.selfreg')}}</th>--}}
{{--										<th>{{__('custom.aft')}}</th>--}}
                                        <th data-src="no">{{__('custom.created_at')}}</th>
                                         <th class="for-dnone">{{__('custom.action')}}</th>
									</tr>
								</thead>
                                <tbody>
                                @foreach($users as $item)
                                    <tr>
{{--                                        <td>{{$item->id}}</td>--}}
                                        <td>{{$item->name}}</td>
                                        <td>{{$item->email}}</td>
                                        <td>{{$item->address}}</td>
                                        <td>{{$item->postnr}}</td>
                                        <td>{{$item->city}}</td>
{{--                                        <td>{{isset($item->dob) ? date('d-M-Y' , strtotime($item->dob)) : '---'}}</td>--}}
                                        <td>{{isset($item->dob) ? ucwords(strftime("%A %e %B %Y",strtotime($item->dob))) : '---'}}</td>
                                        <td>{{$item->telephone ?? '--'}}</td>
                                        <td>{{$item->group->name ?? '--'}}</td>
{{--                                        <td>{{$item->exType->name ?? '--'}}</td>--}}
{{--                                        <td>{{$item->profession->name ?? '--'}}</td>--}}
{{--                                        <td>--}}
{{--                                            @if($item->right_left == 0)--}}
{{--                                                Høyre--}}
{{--                                            @endif--}}
{{--                                            @if($item->right_left == 1)--}}
{{--                                                Venstre--}}
{{--                                            @endif--}}
{{--                                            @if($item->right_left == 2)--}}
{{--                                                Begge--}}
{{--                                            @endif--}}

{{--                                        </td>--}}
                                        <td>{{$item->age ?? '--'}}</td>
{{--                                        <td>{{$item->exType->name ?? '--'}}</td>--}}
{{--                                        <td>{{$item->position ?? '--'}}</td>--}}
                                        <td>{{$item->gender == 'male' ? 'Mann' : 'Kvinne'}}</td>
{{--                                        <td>--}}
{{--                                            @if($item->level == 1)--}}
{{--                                                {{__('custom.beginner')}}--}}
{{--                                            @endif--}}
{{--                                            @if($item->level == 2)--}}
{{--                                                {{__('custom.medium')}}--}}
{{--                                            @endif--}}
{{--                                            @if($item->level == 3)--}}
{{--                                                {{__('custom.experienced')}}--}}
{{--                                            @endif--}}
{{--                                            </td>--}}
                                        <td>{{$item->mmcenter->name ?? '--'}}</td>
{{--                                        <td>{{$item->ptClips->remain_clip ?? '--'}}</td>--}}
{{--                                        <td>{{$item->note ?? '--'}}</td>--}}
{{--                                        <td>{{$item->Journal ?? '--'}}</td>--}}
                                        <td class="for-cust-check-main {{$item->is_active ? 'for-cust-check' : 'for-cust-uncheck'}}">
                                            @if($item->is_active)
                                                {{__("custom.yes")}}
                                            @else
                                                {{__("custom.no")}}
                                            @endif
                                        </td>
{{--                                        <td class="for-cust-check-main {{$item->statistics ? 'for-cust-check' : 'for-cust-uncheck'}}">--}}
{{--                                            @if($item->statistics)--}}
{{--                                                {{__("custom.yes")}}--}}
{{--                                            @else--}}
{{--                                                {{__("custom.no")}}--}}
{{--                                            @endif--}}
{{--                                        </td>--}}
{{--                                        <td class="for-cust-check-main {{$item->pt_customer ? 'for-cust-check' : 'for-cust-uncheck'}}">--}}
{{--                                            @if($item->pt_customer)--}}
{{--                                                {{__("custom.yes")}}--}}
{{--                                            @else--}}
{{--                                                {{__("custom.no")}}--}}
{{--                                            @endif--}}
{{--                                        </td>--}}
                                        <td class="for-cust-check-main {{$item->consent ? 'for-cust-check' : 'for-cust-uncheck'}}">
                                            @if($item->consent)
                                                {{__("custom.yes")}}
                                            @else
                                                {{__("custom.no")}}
                                            @endif
                                        </td>

{{--                                        <td>--}}
{{--                                            <div class="form-check">--}}
{{--                                                <input class="form-check-input" disabled {{$item->utv_adr_info ? 'checked' : ''}} type="checkbox" value="">--}}
{{--                                                <span class="d-none">{{$item->utv_adr_info  == 1 ? __('custom.yes') : __('custom.no')}}</span>--}}
{{--                                            </div>--}}
{{--                                        </td>--}}
{{--                                        <td class="for-cust-check-main {{$item->self_reg ? 'for-cust-check' : 'for-cust-uncheck'}}">--}}
{{--                                            @if($item->self_reg)--}}
{{--                                                {{__("custom.yes")}}--}}
{{--                                            @else--}}
{{--                                                {{__("custom.no")}}--}}
{{--                                            @endif--}}
{{--                                        </td>--}}
{{--                                        <td>--}}
{{--                                            <div class="form-check">--}}
{{--                                                <input class="form-check-input" disabled {{$item->aft ? 'checked' : ''}} type="checkbox" value="">--}}
{{--                                                <span class="d-none">{{$item->aft  == 1 ? __('custom.yes') : __('custom.no')}}</span>--}}
{{--                                            </div>--}}
{{--                                        </td>--}}
{{--                                        <td>{{date('d-M-Y' , strtotime($item->created_at))}}</td>--}}
                                        <td>{{ucwords(strftime("%A %e %B %Y",strtotime($item->created_at)))}}</td>
                                        <td>
                                            <a href="{{route('user.edit',['user' => $item->id ])}}" class="btn btn-info text-white">{{__('custom.edit')}}</a>
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
                let path = `{{ url('user/${id}') }}`;
                $('#delete-form').attr('action', path);
                $('#delete-form').submit();
            }
        }
		$(document).ready(function() {
			$('#example').DataTable();
		  } );
	</script>
	@endsection
