<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2025-01-21
  Time: 오전 10:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Dashboard</title>

        <!-- Custom fonts for this template-->
        <link href="/assets/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
                rel="stylesheet">

        <!-- Custom styles for this template-->
        <link href="/assets/css/sb-admin-2.min.css" rel="stylesheet">
    </head>

    <body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">
        <!-- Content Wrapper -->
        <div id="content-wrapper" >
            <!-- Main Content -->
            <div id="content">
                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
                    <div class="input-group-append">
                        <button class="btn btn-primary" type="button" onclick="location.reload()">
                            <i class="fas fa-home fa-1x"></i>
                        </button>
                    </div>
                </nav>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">
                    <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800"></h1>
                        <a href="create.do" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">New</a>
                    </div>

                    <!-- row -->
                    <div class="row">
                        <div class="col-md-6 mb-4" style="margin: auto">
                            <div class="card border-left-primary shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">RUNNING</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">서비스명</div>
                                        </div>
                                        <div class="col-auto mr-3">
                                            <a class="" href="#" data-toggle="modal" data-target="#settingModal">
                                                <i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
                                            </a>
                                        </div>
                                        <div class="col-auto">
                                            <a class="" href="" data-toggle="modal" data-target="#logModal">
                                                <i class="fas fa-comment fa-2x text-gray-300"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="ml-2 mt-1">
                                <button class="btn btn-sm btn-sm btn-primary shadow-sm">START</button>
                                <button class="btn btn-sm btn-sm btn-primary shadow-sm">STOP</button>
                            </div>
                        </div>
                    </div>
                    <!-- row -->
                    <div class="row">
                        <div class="col-md-6 mb-4" style="margin: auto">
                            <div class="card border-left-primary shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">RUNNING</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">서비스명</div>
                                        </div>
                                        <div class="col-auto mr-3" >
                                            <a class="" href="#" data-toggle="modal" data-target="#settingModal">
                                                <i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
                                            </a>
                                        </div>
                                        <div class="col-auto">
                                            <a class="" href="#" data-toggle="modal" data-target="#logModal">
                                                <i class="fas fa-comment fa-2x text-gray-300"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="ml-2 mt-1">
                                <button class="btn btn-sm btn-sm btn-primary shadow-sm">START</button>
                                <button class="btn btn-sm btn-sm btn-primary shadow-sm">STOP</button>
                            </div>
                        </div>
                    </div>
                    <!-- row -->
                    <div class="row">
                        <div class="col-md-6 mb-4" style="margin: auto">
                            <div class="card border-left-danger shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-danger text-uppercase mb-1">SHUTDOWN</div>
                                            <div class="row no-gutters align-items-center">
                                                <div class="col-auto">
                                                    <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">서비스명</div>
                                                </div>
<%--                                                <div class="col">--%>
<%--                                                    <div class="progress progress-sm mr-2">--%>
<%--                                                        <div class="progress-bar bg-primary" role="progressbar"--%>
<%--                                                             style="width: 50%" aria-valuenow="50" aria-valuemin="0"--%>
<%--                                                             aria-valuemax="100"></div>--%>
<%--                                                    </div>--%>
<%--                                                </div>--%>
                                            </div>
                                        </div>
                                        <div class="col-auto mr-3" >
                                            <a class="" href="#" data-toggle="modal" data-target="#settingModal">
                                                <i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
                                            </a>
                                        </div>
                                        <div class="col-auto">
                                            <a class="" href="#" data-toggle="modal" data-target="#logModal">
                                                <i class="fas fa-comment fa-2x text-gray-300"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="ml-2 mt-1">
                                <button class="btn btn-sm btn-sm btn-danger shadow-sm">START</button>
                                <button class="btn btn-sm btn-sm btn-danger shadow-sm">STOP</button>
                            </div>
                        </div>
                    </div>
                    <!-- row -->
                    <div class="row">
                        <div class="col-md-6 mb-4" style="margin: auto">
                            <div class="card border-left-danger shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-danger text-uppercase mb-1">SHUTDOWN</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">서비스명</div>
                                        </div>
                                        <div class="col-auto mr-3" >
                                            <a class="" href="#" data-toggle="modal" data-target="#settingModal">
                                                <i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
                                            </a>
                                        </div>
                                        <div class="col-auto">
                                            <a class="" href="#" data-toggle="modal" data-target="#logModal">
                                                <i class="fas fa-comment fa-2x text-gray-300"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="ml-2 mt-1">
                                <button class="btn btn-sm btn-sm btn-danger shadow-sm">START</button>
                                <button class="btn btn-sm btn-sm btn-danger shadow-sm">STOP</button>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.container-fluid -->
            </div>
            <!-- End of Main Content -->
        </div>
        <!-- End of Content Wrapper -->
    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Setting Modal-->
    <div class="modal fade" id="settingModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="settingModalLabel"></h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body"></div>
                <div class="text-center d-none d-md-inline">
                    <button class="rounded-circle border-0" id="modal_prev_btn" disabled="disabled"><</button>
                    <button class="rounded-circle border-0" id="modal_next_btn">></button>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">닫기</button>
                </div>
            </div>
        </div>
    </div>
    <!-- Log Modal-->
    <div class="modal fade" id="logModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="logModalLabel">Log</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">닫기</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="/assets/jquery/jquery.min.js"></script>
    <script src="/assets/bootstrap/js/bootstrap.bundle.min.js"></script>

    <script src="/js/main.js"></script>

    </body>
</html>
