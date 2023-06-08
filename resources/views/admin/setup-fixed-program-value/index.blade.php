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
                <div class="breadcrumb-title pe-3">{{__('custom.setupFixedPrograms')}}</div>
                <div class="ps-3">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb mb-0 p-0">
                            <li class="breadcrumb-item"><a href="javascript:;"><i class="bx bx-home-alt"></i></a>
                            </li>
                            <li class="breadcrumb-item active"
                                aria-current="page"> Endre fast program</li>
                        </ol>
                    </nav>
                </div>
                <div class="ms-auto">
                    <div class="btn-group">

                    </div>
                </div>
            </div>
            <!--end breadcrumb-->
            <h6 class="mb-0 text-capitalize">{{__('custom.setupFixedProgramsSection')}}</h6>
            <hr/>
            <div class="card">
                <div class="card-body">
                    <div class="table-responsive">
                        <table id="example2" class="table table-striped table-bordered">
                            <thead>
                            <tr>
                                <th>id</th>
                                <th>{{__('custom.programName')}}</th>
                                <th>{{__('custom.categoryName')}}</th>
                                <th>{{__('custom.set')}}</th>
                                <th>{{__('custom.rep')}}</th>
                                <th>{{__('custom.duration')}}</th>
                                <th>{{__('custom.break')}}</th>
                                <th>{{__('custom.distance')}}</th>
{{--                                <th>{{__('custom.exercise_no')}}</th>--}}
                                <th>{{__('Øvelsesnummer')}}</th>
                                <th>{{__('custom.description')}}</th>
                                <th>{{__('custom.action')}}</th>
                            </tr>
                            <tr>
                                <th>id</th>
                                <th>{{__('custom.programName')}}</th>
                                <th data-src="yes">{{__('custom.categoryName')}}</th>
                                <th>{{__('custom.set')}}</th>
                                <th>{{__('custom.rep')}}</th>
                                <th>{{__('custom.duration')}}</th>
                                <th>{{__('custom.break')}}</th>
                                <th>{{__('custom.distance')}}</th>
{{--                                <th>{{__('custom.exercise_no')}}</th>--}}
                                <th data-src="yes">{{__('Øvelsesnummer')}}</th>
                                <th>{{__('custom.description')}}</th>
                                <th class="for-dnone">{{__('custom.action')}}</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($fixedPrograms as $item)
                                <tr>
                                    <td>{{$item->id}}</td>
                                    <td>{{$item->programWithVideo->name}}</td>
                                    <td>{{$item->programWithVideo->exCategory->name}}</td>
                                    <td>{{$item->set}}</td>
                                    <td>{{$item->rep}}</td>
                                    <td>{{$item->duration}}</td>
                                    <td>{{$item->break}}</td>
                                    <td>{{$item->distance}}</td>
{{--                                    <td>{{$item->exercise_no}}</td>--}}
                                    <td>{{sprintf("%02d", $item->sort)}}</td>
                                    <td>{{$item->description}}</td>
                                    <td>
                                        <a href="{{route('setupFixedProgramValuesEdit.id',['id' => $item->id ])}}" class="btn btn-info text-white">{{__('custom.edit')}}</a>
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

            {{--  --------------------------------------------------------   --}}
            <h6 class="mb-0 text-capitalize">{{__('custom.programSection')}}</h6>
            <hr/>
            <div class="card">
                <div class="card-body">
                    <div class="ms-auto mb-2" style="text-align: right">
                        <div class="btn-group">
                            <input type="button" value="{{__('custom.addSelectedPrograms')}}" onclick='programSecSubmitBtn()' class="btn btn-primary">
                        </div>
                    </div>
                    <div class="table-responsive">
                        <form class="row g-3" method="post" id="programSectionMain" action="{{route('submitSetupFixedProgramAddContent')}}">
                            @csrf
                            <input type="hidden" name="fixedProgramId" value="{{$fixedProgramId}}">
                        <table id="example3" class="table table-striped table-bordered">
                            <thead>
                            <tr>
                                <th class="text-center">{{__('custom.action3')}}</th>
                                <th>{{__('custom.exerciseName2')}}</th>
                                <th>{{__('custom.categoryName')}}</th>
                                <th>{{__('Øvelsesnummer')}}</th>
                            </tr>
                            <tr>
                                <th class="text-center" style="visibility: hidden">{{__('custom.action3')}}</th>
                                <th>{{__('custom.exerciseName2')}}</th>
                                <th data-src="yes">{{__('custom.categoryName')}}</th>
                                <th data-src="yes">{{__('Øvelsesnummer')}}</th>
                            </tr>
                            </thead>
                            <tbody>
                                @foreach($allProgramsWithVideo as $item)
                                <tr>
                                    <td class="text-center">
                                        <input class="form-check-input p-2" name="progValues[]" type="checkbox" value="{{$item->id}}" id="{{$item->name}}">
                                        {{--                                            <a href="{{route('program-setup.edit',['program_setup' => $item->id ])}}" class="btn btn-info text-white">{{__('custom.edit')}}</a>--}}
                                        {{--                                            <a href="#delete" onclick="deleteRecord({{ $item->id }})" class="btn btn-danger">{{__('custom.delete')}}</a>--}}
                                    </td>
                                    <td><label for="{{$item->name}}" class="d-block">{{$item->name}}</label></td>
                                    <td>{{$item->exCategory->name}}</td>
{{--                                    <td>{{$item->sort}}</td>--}}
                                    <td>{{sprintf("%02d", $item->sort)}}</td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>
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
                let path = `{{ url('delete-setup-fixed-program-content/${id}') }}`;
                $('#delete-form').attr('action', path);
                $('#delete-form').submit();
            }
        }
        $(document).ready(function () {
            $('#example').DataTable();
        });

        function programSecSubmitBtn() {
            $("#programSectionMain").submit();
        }
    </script>
    <script>
        {{--$(document).ready(function () {--}}
        {{--    var table = $('#example2').DataTable({--}}
        {{--        lengthChange: false,--}}
        {{--        retrieve: true,--}}
        {{--        paging: false--}}
        {{--        buttons: [{ extend: 'copy', text: '{{__('custom.copy')}}' }, 'excel', 'pdf', 'print'],--}}
        {{--        language: {--}}
        {{--            info: "{{__('custom.showing')}} _START_ {{__('custom.to')}} _END_ {{__('custom.oof')}} _TOTAL_ {{__('custom.entries')}}",--}}
        {{--            search: "{{__('custom.search')}} :",--}}
        {{--            infoEmpty:      "{{__('custom.showing')}} 0 {{__('custom.to')}} 0 {{__('custom.oof')}} 0 {{__('custom.entries')}}",--}}
        {{--            infoFiltered:   "({{__('custom.filteredFrom')}} _MAX_ {{__('custom.totalEntries')}})",--}}
        {{--            zeroRecords:    "{{__('custom.zeroRecords')}}",--}}
        {{--            paginate: {--}}
        {{--                next:       "{{__('custom.nextt')}}",--}}
        {{--                previous:   "{{__('custom.prev')}}"--}}
        {{--            },--}}
        {{--        }--}}
        {{--    });--}}

        {{--    table.buttons().container()--}}
        {{--        .appendTo('#example2_wrapper .col-md-6:eq(0)');--}}

        {{--});--}}
    </script>
@endsection
