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
                <div class="breadcrumb-title pe-3">{{__('custom.video')}}</div>
                <div class="ps-3">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb mb-0 p-0">
                            <li class="breadcrumb-item"><a href="{{route('fullcalender.id','all')}}"><i class="bx bx-home-alt"></i></a>
                            </li>
                            <li class="breadcrumb-item active"
                                aria-current="page">{{__('custom.videoList')}}</li>
                        </ol>
                    </nav>
                </div>
                <div class="ms-auto">
                    <div class="btn-group">
                        <a href="{{route('video.create')}}" class="btn btn-primary">{{__('custom.addVideo')}}</a>
                    </div>
                </div>
            </div>
            <!--end breadcrumb-->
            {{--				<h6 class="mb-0 text-uppercase">Profession Section</h6>--}}
            <hr/>
            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="row">
                                <div class="col-lg-4"></div>
                                <div class="col-lg-8">
                                    <!-- the player -->
                                    <video class="videolinkmain" src=""
                                           id="" width="250" controls="" type="video/mp4">
                                    </video>
                                </div>
                                <div class="col-lg-4"></div>
                            </div>
                        </div>
                    </div>
                    <div class="table-responsive">
                        <table id="example2" class="table table-striped table-bordered">
                            <thead>
                            <tr>
{{--                                <th>{{__('custom.id')}}</th>--}}
                                <th>{{__('custom.name')}}</th>
                                <th>{{__('Type')}}</th>
                                <th>{{__('custom.videoCategoryName')}}</th>
{{--                                <th>{{__('custom.description')}}</th>--}}
                                <th>{{__('custom.created_at')}}</th>
                                <th>{{__('custom.action')}}</th>
                            </tr>
                            <tr>
{{--                                <th>{{__('custom.id')}}</th>--}}
                                <th data-src="no">{{__('custom.name')}}</th>
                                <th data-src="yes">{{__('Type')}}</th>
                                <th data-src="yes">{{__('custom.videoCategoryName')}}</th>
{{--                                <th data-src="no">{{__('custom.description')}}</th>--}}
                                <th data-src="no">{{__('custom.created_at')}}</th>
                                 <th class="for-dnone">{{__('custom.action')}}</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($videos as $item)
                                <tr>
{{--                                    <td>{{$item->id}}</td>--}}
                                    <td>{{$item->name}}</td>
                                    <td>{{$item->type}}</td>
                                    <td>{{$item->exCategory->name}}</td>
{{--                                    <td>{{$item->description}}</td>--}}
{{--                                    <td>{{date('d-M-Y' , strtotime($item->created_at))}}</td>--}}
                                    <td>{{ucwords(strftime("%A %e %B %Y",strtotime($item->created_at)))}}</td>
                                    <td>
                                        <a href="{{route('video.edit',['video' => $item->id ])}}"
                                           class="btn btn-info text-white">{{__('custom.edit')}}</a>
                                        <a data-video-link="{{$item->video_sd}}"
                                           class="btn btn-primary text-white showVideo">{{__('custom.show_video')}}</a>
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
                let path = `{{ url('video/${id}') }}`;
                $('#delete-form').attr('action', path);
                $('#delete-form').submit();
            }
        }

        $(document).ready(function () {
            $('#example').DataTable();
        });
        $(document).ready(function () {
            $(".showVideo").click(function (e) {
                e.preventDefault();
                let videolink = $(this).data('video-link');
                $('.videolinkmain').attr('src', videolink);

                console.log(videolink);
            });
        });
    </script>
@endsection
