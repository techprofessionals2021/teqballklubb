<!doctype html>
<html lang="en">

<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!--favicon-->
{{--	<link rel="icon" href="assets/images/favicon-32x32.png" type="image/png" />--}}
	<link rel="icon" href="http://www.movementmap.com/Images/Logoer/MMtoplogo.png" type="image/png" />
	<!--plugins-->
	@yield("style")
	<link href="{{asset('assets/plugins/simplebar/css/simplebar.css')}}" rel="stylesheet" />
	<link href="{{asset('assets/plugins/perfect-scrollbar/css/perfect-scrollbar.css')}}" rel="stylesheet" />
	<link href="{{asset('assets/plugins/metismenu/css/metisMenu.min.css')}}" rel="stylesheet" />
	<!-- loader-->
	<link href="{{asset('assets/css/pace.min.css')}}" rel="stylesheet" />
	<script src="{{asset('assets/js/pace.min.js')}}"></script>
	<!-- Bootstrap CSS -->
	<link href="{{asset('assets/css/bootstrap.min.css')}}" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&display=swap" rel="stylesheet">
	<link href="{{asset('assets/css/app.css')}}" rel="stylesheet">
	<link href="{{asset('assets/css/icons.css')}}" rel="stylesheet">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

    <!-- Theme Style CSS -->
    <link rel="stylesheet" href="{{asset('assets/css/dark-theme.css')}}" />
    <link rel="stylesheet" href="{{asset('assets/css/semi-dark.css')}}" />
    <link rel="stylesheet" href="{{asset('assets/css/header-colors.css')}}" />

    <link href="{{asset('assets/plugins/select2/css/select2.min.css')}}" rel="stylesheet" />
    <link href="{{asset('assets/plugins/select2/css/select2-bootstrap4.css')}}" rel="stylesheet" />
    <title>TQ-Sport </title>
    <style>
        .dataTables_length, .dataTables_filter {
            margin-bottom: 12px;
        }
       /*table td.for-cust-check-main::before{*/
       /*     content:url(http://www.movementmap.com/DXR.axd?r=1_160-HXr7o);*/
       /*     position:absolute;*/
       /* }*/

        table td.for-cust-check-main{
            font-size: 0px ;
        }
        table td.for-cust-check-main::before{
            position:relative;
            background-repeat: no-repeat;
            background-color: transparent;
            margin: 1px;
            cursor: default;
            display: inline-block;
            vertical-align: middle;
        }
        table td.for-cust-uncheck::before {
            content:url('assets/images/icons/un-check-icon.png');
            width: 16px;
            height: 15px;
        }
        table td.for-cust-check::before {
            content:url('assets/images/icons/check-icon.png');
            width: 16px;
            height: 15px;
        }
    </style>
</head>

<body>
	<!--wrapper-->
	<div class="wrapper">
		<!--start header -->
		@include("layouts.header")
		<!--end header -->
		<!--navigation-->
		@include("layouts.nav")
{{--		@include("layouts.nav_bkp")--}}
		<!--end navigation-->
{{--        @php--}}
{{--            if (app()->getLocale() == 'no'){--}}
{{--                setlocale(LC_TIME, array('nb_NO.UTF-8','nb_NO@norw','nb_NO','norwegian'));--}}
{{--                }--}}
{{--        @endphp--}}
		<!--start page wrapper -->
		@yield("wrapper")
		<!--end page wrapper -->
		<!--start overlay-->
        @include('sweetalert::alert')
		<div class="overlay toggle-icon"></div>
		<!--end overlay-->
		<!--Start Back To Top Button--> <a href="javaScript:;" class="back-to-top"><i class='bx bxs-up-arrow-alt'></i></a>
		<!--End Back To Top Button-->
		<footer class="page-footer">
			<p class="mb-0">Copyright © 2022. All right reserved.</p>
		</footer>
	</div>
	<!--end wrapper-->
    <!--start switcher-->
    <div class="switcher-wrapper d-none">
        <div class="switcher-btn"> <i class='bx bx-cog bx-spin'></i>
        </div>
        <div class="switcher-body">
            <div class="d-flex align-items-center">
                <h5 class="mb-0 text-uppercase">Theme Customizer</h5>
                <button type="button" class="btn-close ms-auto close-switcher" aria-label="Close"></button>
            </div>
            <hr/>
            <h6 class="mb-0">Theme Styles</h6>
            <hr/>
            <div class="d-flex align-items-center justify-content-between">
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="flexRadioDefault" id="lightmode" checked>
                    <label class="form-check-label" for="lightmode">Light</label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="flexRadioDefault" id="darkmode">
                    <label class="form-check-label" for="darkmode">Dark</label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="flexRadioDefault" id="semidark">
                    <label class="form-check-label" for="semidark">Semi Dark</label>
                </div>
            </div>
            <hr/>
            <div class="form-check">
                <input class="form-check-input" type="radio" id="minimaltheme" name="flexRadioDefault">
                <label class="form-check-label" for="minimaltheme">Minimal Theme</label>
            </div>
            <hr/>
            <h6 class="mb-0">Header Colors</h6>
            <hr/>
            <div class="header-colors-indigators">
                <div class="row row-cols-auto g-3">
                    <div class="col">
                        <div class="indigator headercolor1" id="headercolor1"></div>
                    </div>
                    <div class="col">
                        <div class="indigator headercolor2" id="headercolor2"></div>
                    </div>
                    <div class="col">
                        <div class="indigator headercolor3" id="headercolor3"></div>
                    </div>
                    <div class="col">
                        <div class="indigator headercolor4" id="headercolor4"></div>
                    </div>
                    <div class="col">
                        <div class="indigator headercolor5" id="headercolor5"></div>
                    </div>
                    <div class="col">
                        <div class="indigator headercolor6" id="headercolor6"></div>
                    </div>
                    <div class="col">
                        <div class="indigator headercolor7" id="headercolor7"></div>
                    </div>
                    <div class="col">
                        <div class="indigator headercolor8" id="headercolor8"></div>
                    </div>
                </div>
            </div>
            <hr/>
            <h6 class="mb-0">Sidebar Colors</h6>
            <hr/>
            <div class="header-colors-indigators">
                <div class="row row-cols-auto g-3">
                    <div class="col">
                        <div class="indigator sidebarcolor1" id="sidebarcolor1"></div>
                    </div>
                    <div class="col">
                        <div class="indigator sidebarcolor2" id="sidebarcolor2"></div>
                    </div>
                    <div class="col">
                        <div class="indigator sidebarcolor3" id="sidebarcolor3"></div>
                    </div>
                    <div class="col">
                        <div class="indigator sidebarcolor4" id="sidebarcolor4"></div>
                    </div>
                    <div class="col">
                        <div class="indigator sidebarcolor5" id="sidebarcolor5"></div>
                    </div>
                    <div class="col">
                        <div class="indigator sidebarcolor6" id="sidebarcolor6"></div>
                    </div>
                    <div class="col">
                        <div class="indigator sidebarcolor7" id="sidebarcolor7"></div>
                    </div>
                    <div class="col">
                        <div class="indigator sidebarcolor8" id="sidebarcolor8"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--end switcher-->
	<!-- Bootstrap JS -->
	<script src="{{asset('assets/js/bootstrap.bundle.min.js')}}"></script>
	<!--plugins-->
	<script src="{{asset('assets/js/jquery.min.js')}}"></script>
	<script src="{{asset('assets/plugins/simplebar/js/simplebar.min.js')}}"></script>
	<script src="{{asset('assets/plugins/metismenu/js/metisMenu.min.js')}}"></script>
	<script src="{{asset('assets/plugins/perfect-scrollbar/js/perfect-scrollbar.js')}}"></script>
	<!--app JS-->
	<script src="{{asset('assets/js/app.js')}}"></script>
    <script type="text/javascript">

        var url = "{{ route('changeLang') }}";

        $(".changeLang").change(function(){
            window.location.href = url + "?lang="+ $(this).val();
        });

    </script>
	@yield("script")
{{--For Bootstrap data table--}}
    <script src="{{asset('assets/plugins/select2/js/select2.min.js')}}"></script>

    <script>
        $(window).on('load',function() {

            {{--$('#example2 thead th').each( function () {--}}
            {{--    var title = $(this).text();--}}
            {{--    if(title === "Handling" || title === "Action") {--}}
            {{--        console.log(title);--}}
            {{--        // return false; // breaks--}}
            {{--        return $(this).html( '<span>'+title+'</span>');--}}
            {{--    }--}}
            {{--    --}}{{--$(this).html( '<span>'+title+'</span><br><input type="text" placeholder="{{__('custom.search')}} '+title+'" />' );--}}
            {{--} );--}}

            // $('#example2 thead th').each( function () {
            //     var title = $(this).text();
            //     // console.log(title)
            //     $(this).append('<p>'+title+'</p>');
            // });

            var table = $('#example2').DataTable( {
                "ordering": false,
                initComplete: function () {
                    $('#example2 thead th').each( function () {
                        var title = $(this).text();
                        if(title === "Handling" || title === "Action") {
                            $('.for-dnone').hide();
                        }
                    } );
                    this.api().columns().every(function () {
                        var column = this;

                        if($(column.header()).data('src') == "yes"){

                            var select = $('<select class="single-select"><option value=""></option></select>')
                            .appendTo($(column.header()).empty())
                            .on('change', function () {
                                var val = $.fn.dataTable.util.escapeRegex($(this).val());

                                column.search(val ? '^' + val + '$' : '', true, false).draw();
                            });
                            column
                            .data().unique().sort()
                            .each(function (d, j) {
                                select.append('<option value="' + d + '">' + d + '</option>');
                            });
                        }else{
                            $(column.header()).html('<input type="text" placeholder="{{__('custom.search')}} '+$(column.header()).text()+'" />' )
                            $('input', column.header()).on('keyup change clear', function () {
                                if (column.search() !== this.value) {
                                    column.search(this.value).draw();
                                }
                            });
                        }
                        });
                },
                lengthChange: true,
                buttons: [ { extend: 'copy', text: '{{__('custom.copy')}}' },'excel' , {extend: 'pdfHtml5', orientation: 'landscape', pageSize: 'LEGAL'}, 'print'],
                language: {
                    lengthMenu: "{{__('custom.show')}} _MENU_ {{__('custom.entries')}}",
                    info: "{{__('custom.showing')}} _START_ {{__('custom.to')}} _END_ {{__('custom.oof')}} _TOTAL_ {{__('custom.entries')}}",
                    search: "{{__('custom.search')}} :",
                    infoEmpty:      "{{__('custom.showing')}} 0 {{__('custom.to')}} 0 {{__('custom.oof')}} 0 {{__('custom.entries')}}",
                    infoFiltered:   "({{__('custom.filteredFrom')}} _MAX_ {{__('custom.totalEntries')}})",
                    zeroRecords:    "{{__('custom.zeroRecords')}}",
                    paginate: {
                        next:       "{{__('custom.nextt')}}",
                        previous:   "{{__('custom.prev')}}"
                    },
                },
            } );

            table.buttons().container()
                .appendTo( '#example2_wrapper .col-md-6:eq(0)' );

            $('.single-select').select2({
                theme: 'bootstrap4',
                width: $(this).data('width') ? $(this).data('width') : $(this).hasClass('w-100') ? '100%' : 'style',
                placeholder: $(this).data('placeholder'),
                allowClear: Boolean($(this).data('allow-clear')),
            });

        });

        $(window).on('load',function() {
            // -------------
            {{--$('#example3 thead th').each( function () {--}}
            {{--    var title = $(this).text();--}}
            {{--    if(title === "Handling" || title === "Action") {--}}
            {{--        // return false; // breaks--}}
            {{--        return $(this).html( '<span>'+title+'</span>');--}}
            {{--    }--}}
            {{--    $(this).html( '<span>'+title+'</span><br><input type="text" placeholder="{{__('custom.search')}} '+title+'" />' );--}}
            {{--});--}}

            var table = $('#example3').DataTable({
                "ordering": false,
                initComplete: function () {
                    $('#example3 thead th').each( function () {
                        var title = $(this).text();
                        if(title === "Handling" || title === "Action") {
                            $('.for-dnone').hide();
                        }
                    } );
                    this.api().columns().every(function () {
                        var column = this;

                        if($(column.header()).data('src') == "yes"){

                            var select = $('<select class="single-select"><option value=""></option></select>')
                                .appendTo($(column.header()).empty())
                                .on('change', function () {
                                    var val = $.fn.dataTable.util.escapeRegex($(this).val());

                                    column.search(val ? '^' + val + '$' : '', true, false).draw();
                                });
                            column
                                .data().unique().sort()
                                .each(function (d, j) {
                                    select.append('<option value="' + d + '">' + d + '</option>');
                                });
                        }else{
                            $(column.header()).html('<input type="text" placeholder="{{__('custom.search')}} '+$(column.header()).text()+'" />' )
                            $('input', column.header()).on('keyup change clear', function () {
                                if (column.search() !== this.value) {
                                    column.search(this.value).draw();
                                }
                            });
                        }
                    });
                },
                lengthChange: true,
                buttons: [{ extend: 'copy', text: '{{__('custom.copy')}}' }, 'excel', {extend: 'pdfHtml5', orientation: 'landscape', pageSize: 'LEGAL'} , 'print'],
                language: {
                    lengthMenu: "{{__('custom.show')}} _MENU_ {{__('custom.entries')}}",
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
            });

            table.buttons().container()
                .appendTo('#example3_wrapper .col-md-6:eq(0)');

            $('.single-select').select2({
                theme: 'bootstrap4',
                width: $(this).data('width') ? $(this).data('width') : $(this).hasClass('w-100') ? '100%' : 'style',
                placeholder: $(this).data('placeholder'),
                allowClear: Boolean($(this).data('allow-clear')),
            });
        });
    </script>
{{--For Bootstrap data table--}}
</body>

</html>
