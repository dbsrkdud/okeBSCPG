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
        <div id="content-wrapper" >
            <!-- Main Content -->
            <div id="content">
                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
                    <div class="input-group-append">
                        <button class="btn btn-primary" id="home_btn" type="button">
                            <i class="fas fa-home fa-1x"></i>
                        </button>
                    </div>
                    <!-- Sidebar Toggle (Topbar) -->
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>
                </nav>
                <!-- End of Topbar -->
                <div class="container-fluid">
                    <div class="row" id="git_page" style="height: 500px;">
                        <div class="col-md-6 mb-4" style="margin: auto">
                            <div class="card border-left-primary shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-primary text-uppercase mb-3" style="font-size: 2.0em">GIT URL</div>
                                            <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..."
                                                   aria-label="Search" aria-describedby="basic-addon2">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row" id="base_image_page" style="display: none; height: 500px">
                        <div class="col-md-6 mb-4" style="margin: auto">
                            <div class="card border-left-success shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-success text-uppercase mb-3" style="font-size: 2.0em">BASE IMAGE</div>
                                            <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..."
                                                   aria-label="Search" aria-describedby="basic-addon2">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row" id="setting_page" style="display: none; height: 500px">
                        <div class="col-md-6 mb-4" style="margin: auto">
                            <div class="card border-left-info shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-info text-uppercase mb-3" style="font-size: 2.0em">SETTING</div>
                                            <div class="col-auto mb-2">CPU
                                                <input type="text" class="form-control bg-light border-0 small" aria-describedby="basic-addon2">
                                            </div>
                                            <div class="col-auto">MEMORY
                                                <input type="text" class="form-control bg-light border-0 small" aria-describedby="basic-addon2">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="d-sm-flex align-items-center justify-content-center mt-3 mb-5">
                        <button class="btn btn-sm btn-sm btn-primary shadow-sm" id="prev_btn" style="display: none">이전</button>&nbsp;&nbsp;
                        <button class="btn btn-sm btn-sm btn-primary shadow-sm" id="next_btn">다음</button>
                    </div>
                </div>
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

    <!-- Bootstrap core JavaScript-->
    <script src="/assets/jquery/jquery.min.js"></script>
    <script src="/assets/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="/js/create.js"></script>

</body>
</html>
