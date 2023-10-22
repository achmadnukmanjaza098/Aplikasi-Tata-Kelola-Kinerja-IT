@extends('main')
@section('content')
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>AdminLTE 3 | DataTables</title>
        <!-- Google Font: Source Sans Pro -->
        <link rel="stylesheet"
            href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="{{ asset('style/plugins/fontawesome-free/css/all.min.css') }}">
        <!-- DataTables -->
        <link rel="stylesheet" href="{{ asset('style/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css') }}">
        <link rel="stylesheet" href="{{ asset('style/plugins/datatables-responsive/css/responsive.bootstrap4.min.css') }}">
        <link rel="stylesheet" href="{{ asset('style/plugins/datatables-buttons/css/buttons.bootstrap4.min.css') }}">
        <!-- Theme style -->
        <link rel="stylesheet" href="{{ asset('style/dist/css/adminlte.min.css') }}">


    </head>

    <body class="hold-transition sidebar-mini">
        <section class="content">
            <div class="container-fluid">
                <h4 style="text-transform: Capitalize">Selamat Datang, Anda Login Sebagai {{$role->name.'('.$role->nama_role.')'}}</h4><br>
                <div class="row-fluid">
                    <div class="widget red span3" onTablet="span4" onDesktop="span3">
                        <h5>CORPORATE CONTRIBUTION</h5>
                        <hr>
                        <div class="content">
                            <div class="verticalChart">
                                @foreach ($corporate_1 as $item)
                                    <div class="singleBar">
                                        <div class="bar">
                                            <div class="value">
                                                <span>{{ $item->jumlah }}</span>
                                            </div>
                                        </div>
                                        <div class="title">{{ $item->jawaban }}</div>
                                    </div>
                                @endforeach
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                    <div class="widget blue span3" onTablet="span4" onDesktop="span3">
                        <h5>STAKEHOLDER ORIENTATION</h5>
                        <hr>
                        <div class="content">
                            <div class="verticalChart">
                                @foreach ($corporate_2 as $item)
                                    <div class="singleBar">
                                        <div class="bar">
                                            <div class="value">
                                                <span>{{ $item->jumlah }}</span>
                                            </div>
                                        </div>
                                        <div class="title">{{ $item->jawaban }}</div>
                                    </div>
                                @endforeach
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                    <div class="widget yellow span3" onTablet="span4" onDesktop="span3">
                        <h5>OPERATIONAL EXCELLENCE</h5>
                        <hr>
                        <div class="content">
                            <div class="verticalChart">
                                @foreach ($corporate_3 as $item)
                                    <div class="singleBar">
                                        <div class="bar">
                                            <div class="value">
                                                <span>{{ $item->jumlah }}</span>
                                            </div>
                                        </div>
                                        <div class="title">{{ $item->jawaban }}</div>
                                    </div>
                                @endforeach
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                    <div class="widget green span3" onTablet="span4" onDesktop="span3">
                        <h5>FUTURE ORIENTATION</h5>
                        <hr>
                        <div class="content">
                            <div class="verticalChart">
                                @foreach ($corporate_4 as $item)
                                    <div class="singleBar">
                                        <div class="bar">
                                            <div class="value">
                                                <span>{{ $item->jumlah }}</span>
                                            </div>
                                        </div>
                                        <div class="title">{{ $item->jawaban }}</div>
                                    </div>
                                @endforeach
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row-fluid hideInIE8 circleStats">
                    <div class="span3" onTablet="span4" onDesktop="span3">
                        <div class="circleStatsItemBox red">
                            <div class="header">CORPORATE CONTRIBUTION</div>
                            <span class="percent">percent</span>
                            <div class="circleStat">
                                <input type="text" value="{{$kpi_1}}" class="whiteCircle" />
                            </div>
                            <div class="footer">
                                <span class="count">
                                    <span class="unit">{{"Kesimpulan KPI adalah " . $kategori_kpi_1}}</span>

                                </span>

                            </div>
                        </div>
                    </div>
                    <div class="span3" onTablet="span4" onDesktop="span3">
                        <div class="circleStatsItemBox blue">
                            <div class="header">STAKEHOLDER ORIENTATION</div>
                            <span class="percent">percent</span>
                            <div class="circleStat">
                                <input type="text" value="{{$kpi_2}}" class="whiteCircle" />
                            </div>
                            <div class="footer">
                                <span class="count">
                                    <span class="unit">{{"Kesimpulan KPI adalah " . $kategori_kpi_2}}</span>

                                </span>

                            </div>
                        </div>
                    </div>
                    <div class="span3" onTablet="span4" onDesktop="span3">
                        <div class="circleStatsItemBox yellow">
                            <div class="header">OPERATIONAL EXCELLENCE</div>
                            <span class="percent">percent</span>
                            <div class="circleStat">
                                <input type="text" value="{{$kpi_3}}" class="whiteCircle" />
                            </div>
                            <div class="footer">
                                <span class="count">
                                    <span class="unit">{{"Kesimpulan KPI adalah " . $kategori_kpi_3}}</span>

                                </span>

                            </div>
                        </div>
                    </div>
                    <div class="span3" onTablet="span4" onDesktop="span3">
                        <div class="circleStatsItemBox green">
                            <div class="header">FUTURE ORIENTATION</div>
                            <span class="percent">percent</span>
                            <div class="circleStat">
                                <input type="text" value="{{$kpi_4}}" class="whiteCircle" />
                            </div>
                            <div class="footer">
                                <span class="count">
                                    <span class="unit">{{"Kesimpulan KPI adalah " . $kategori_kpi_4}}</span>

                                </span>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.container-fluid -->
        </section>
        <!-- /.content -->
        {{-- </div>
        </div> --}}
        <!-- ./wrapper -->

        <!-- jQuery -->
        <script src="{{ asset('style/plugins/jquery/jquery.min.js') }}"></script>
        <!-- Bootstrap 4 -->
        <script src="{{ asset('style/plugins/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
        <!-- DataTables  & Plugins -->
        <script src="{{ asset('style/plugins/datatables/jquery.dataTables.min.js') }}"></script>
        <script src="{{ asset('style/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js') }}"></script>
        <script src="{{ asset('style/plugins/datatables-responsive/js/dataTables.responsive.min.js') }}"></script>
        <script src="{{ asset('style/plugins/datatables-responsive/js/responsive.bootstrap4.min.js') }}"></script>
        <script src="{{ asset('style/plugins/datatables-buttons/js/dataTables.buttons.min.js') }}"></script>
        <script src="{{ asset('style/plugins/datatables-buttons/js/buttons.bootstrap4.min.js') }}"></script>
        <script src="{{ asset('style/plugins/jszip/jszip.min.js') }}"></script>
        <script src="{{ asset('style/plugins/pdfmake/pdfmake.min.js') }}"></script>
        <script src="{{ asset('style/plugins/pdfmake/vfs_fonts.js') }}"></script>
        <script src="{{ asset('style/plugins/datatables-buttons/js/buttons.html5.min.js') }}"></script>
        <script src="{{ asset('style/plugins/datatables-buttons/js/buttons.print.min.js') }}"></script>
        <script src="{{ asset('style/plugins/datatables-buttons/js/buttons.colVis.min.js') }}"></script>
        <script src="{{ asset('style/js/jquery-1.9.1.min.js') }}"></script>
        <script src="{{ asset('style/js/jquery-migrate-1.0.0.min.js') }}"></script>
        <script src="{{ asset('style/js/jquery-ui-1.10.0.custom.min.js') }}"></script>
        <script src="{{ asset('style/js/jquery.ui.touch-punch.js') }}"></script>
        <script src="{{ asset('style/js/modernizr.js') }}"></script>
        <script src="{{ asset('style/js/bootstrap.min.js') }}"></script>
        <script src="{{ asset('style/js/jquery.cookie.js') }}"></script>
        <script src='{{ asset('style/js/fullcalendar.min.js') }}'></script>
        <script src='{{ asset('style/js/jquery.dataTables.min.js') }}'></script>
        <script src="{{ asset('style/js/excanvas.js') }}"></script>
        <script src="{{ asset('style/js/jquery.flot.js') }}"></script>
        <script src="{{ asset('style/js/jquery.flot.pie.js') }}"></script>
        <script src="{{ asset('style/js/jquery.flot.stack.js') }}"></script>
        <script src="{{ asset('style/js/jquery.flot.resize.min.js') }}"></script>
        <script src="{{ asset('style/js/jquery.chosen.min.js') }}"></script>
        <script src="{{ asset('style/js/jquery.uniform.min.js') }}"></script>
        <script src="{{ asset('style/js/jquery.cleditor.min.js') }}"></script>
        <script src="{{ asset('style/js/jquery.noty.js') }}"></script>
        <script src="{{ asset('style/js/jquery.elfinder.min.js') }}"></script>
        <script src="{{ asset('style/js/jquery.raty.min.js') }}"></script>
        <script src="{{ asset('style/js/jquery.iphone.toggle.js') }}"></script>
        <script src="{{ asset('style/js/jquery.uploadify-3.1.min.js') }}"></script>
        <script src="{{ asset('style/js/jquery.gritter.min.js') }}"></script>
        <script src="{{ asset('style/js/jquery.imagesloaded.js') }}"></script>
        <script src="{{ asset('style/js/jquery.masonry.min.js') }}"></script>
        <script src="{{ asset('style/js/jquery.knob.modified.js') }}"></script>
        <script src="{{ asset('style/js/jquery.sparkline.min.js') }}"></script>
        <script src="{{ asset('style/js/counter.js') }}"></script>
        <script src="{{ asset('style/js/retina.js') }}"></script>
        <script src="{{ asset('style/js/custom.js') }}"></script>
        <!-- AdminLTE App -->
        <script src="{{ asset('style/dist/js/adminlte.min.js') }}"></script>
        <!-- AdminLTE for demo purposes -->
        <script src="{{ asset('style/dist/js/demo.js') }}"></script>
        <!-- Page specific script -->
        <script>
            $(function() {
                $("#example1").DataTable({
                    "responsive": true,
                    "lengthChange": false,
                    "autoWidth": false,
                    "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"]
                }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
                $('#example2').DataTable({
                    "paging": true,
                    "lengthChange": false,
                    "searching": false,
                    "ordering": true,
                    "info": true,
                    "autoWidth": false,
                    "responsive": true,
                });
            });
        </script>
    </body>

    </html>
@endsection
