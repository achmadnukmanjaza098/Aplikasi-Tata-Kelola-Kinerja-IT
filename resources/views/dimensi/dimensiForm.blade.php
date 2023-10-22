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
                <div class="row">
                    <div class="col-12">
                        <div class="card card-default">
                            <div class="card-header">
                                <a href="{{ URL::route('dimensi') }}" class="btn btn-primary">Kembali</a>
                            </div>
                            <!-- /.card-header -->
                            <div class="card-body">
                                @if(isset($data))
                                    <form action="{{ route('actionEditDimensi', $data->id) }}" method="post">
                                    @csrf
                                    @method('PUT')
                                @else
                                    <form action="{{ route('actionAddDimensi') }}" method="post">
                                        @csrf
                                @endif
                                    <div class="form-group">
                                        <label>Dimensi</label>
                                        <input type="text" name="dimensi" class="form-control" placeholder="Dimensi" required="" value="{{ isset($data) ? $data->dimensi : '' }}">
                                    </div>
                                    <div class="form-group">
                                        <label>Bobot</label>
                                        <input type="text" name="bobot" class="form-control" placeholder="Bobot" value="{{ isset($data) ? $data->bobot : '' }}">
                                    </div>
                                    <button type="submit" class="btn btn-primary btn-block">Submit</button>
                                    <hr>
                                </form>
                                <!-- /.row -->
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.row -->
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
