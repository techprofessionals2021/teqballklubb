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
                <div class="breadcrumb-title pe-3">{{__('custom.questionData')}}</div>
                <div class="ps-3">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb mb-0 p-0">
                            <li class="breadcrumb-item"><a href="javascript:;"><i class="bx bx-home-alt"></i></a>
                            </li>
                            <li class="breadcrumb-item active"
                                aria-current="page">{{__('custom.questionDataList2')}}</li>
                        </ol>
                    </nav>
                </div>
                <div class="ms-auto">
                    <div class="btn-group">
                        <a href="{{route('stats-question.create',['user_id'=>$userInfo->id])}}" class="btn btn-primary">{{__('custom.add')}}</a>
                    </div>
                </div>
            </div>
            <!--end breadcrumb-->
                <h6 class="mb-0 text-uppercase">{{$userInfo->name}}</h6>
            <hr/>
            <div class="card">
                <div class="card-body">
                    <div class="table-responsive">
                        <table id="example2" class="table table-striped table-bordered">
                            <thead>
                            <tr>
                                <th>{{__('custom.status')}}</th>
                                @for ($i = 1; $i <= 32; $i++)
                                    <th>Q{{$i}}</th>
                                @endfor
                                {{--                                        <th>{{__('custom.created_at')}}</th>--}}
                                <th>{{__('custom.action')}}</th>
                            </tr>
                            <tr>
                                <th data-src="yes" >{{__('custom.status')}}</th>
                                @for ($i = 1; $i <= 32; $i++)
                                    <th>Q{{$i}}</th>
                                @endfor
                                {{--                                        <th>{{__('custom.created_at')}}</th>--}}
                                <th class="for-dnone">{{__('custom.action')}}</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($statsQuestions as $item)
                                <tr>
                                    <td class="text-center">{{strtoupper($item->status)}}</td>
                                    @for ($i = 0; $i <= 31; $i++)
                                        <td class="text-center">{{$item->allStatsQuestionAndValues[$i]['question_value'] ?? '---'}}</td>
                                    @endfor
                                    {{--                                        <td>{{date('d-M-Y' , strtotime($item->created_at))}}</td>--}}
                                    <td>
                                        <a href="{{route('stats-question.edit',['user_id'=>$userInfo->id,'stats_question' => $item->id ])}}" class="btn btn-info text-white">{{__('custom.edit')}}</a>
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
            <hr/>
            <h6 class="mb-3">AVG = Average, STDEV = Standard Deviation</h6>
            <div class="card">
                <div class="card-body">
                    <div class="table-responsive">
                        <table id="example3" class="table table-striped table-bordered">
                            <thead>
                            <tr>
                                <th>{{__('custom.status')}}</th>
                                @for ($i = 1; $i <= 32; $i++)
                                    <th>Q{{$i}}</th>
                                @endfor
                            </tr>
                            <tr>
                                <th data-src="yes">{{__('custom.status')}}</th>
                                @for ($i = 1; $i <= 32; $i++)
                                    <th>Q{{$i}}</th>
                                @endfor
                            </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="text-center">AVG-PRE</td>
                                    @for ($i = 1; $i <= 32; $i++)
                                        <td class="text-center">{{number_format($avgQuesValuePre->where('question_no','q'.$i)->avg('question_value'), 2, '.', '') ?? ''}}</td>
                                    @endfor
                                </tr>
                                <tr>
                                    <td class="text-center">AVG-POST</td>
                                    @for ($i = 1; $i <= 32; $i++)
                                        <td class="text-center">{{number_format($avgQuesValuePost->where('question_no','q'.$i)->avg('question_value'), 2, '.', '') ?? ''}}</td>
                                    @endfor
                                </tr>
                                <tr>
                                    <td class="text-center">STDEV-PRE ±</td>
                                    @foreach($stdevAnthroPre as $item)
                                        <td class="text-center">{{$item}}</td>
                                    @endforeach
                                </tr>
                                <tr>
                                    <td class="text-center">STDEV-POST ±</td>
                                    @foreach($stdevAnthroPost as $item)
                                        <td class="text-center">{{$item}}</td>
                                    @endforeach
                                </tr>
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
        function deleteRecord(id) {
            let confirmBox = confirm('Vil du virkelig slette?');
            if (confirmBox) {
                let path = `{{ url('stats-question/${id}') }}`;
                $('#delete-form').attr('action', path);
                $('#delete-form').submit();
            }
        }
        $(document).ready(function () {
            $('#example').DataTable();
        });
    </script>
@endsection
