<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">


<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>
        Admin Dashboard</title>
    <!-- Favicon icon -->

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.5.5/css/simple-line-icons.min.css" integrity="sha512-QKC1UZ/ZHNgFzVKSAhV5v5j73eeL9EEN289eKAEFaAjgAiobVAnVv/AGuPbXsKl1dNoel3kNr6PYnSiTzVVBCw==" crossorigin="anonymous"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.5.5/css/simple-line-icons.css" integrity="sha512-9Tu/Gu0+bXW+oGrTGJOeNz2RG4MaF52FznXCciXFrXehFTLF6phJnJFNVOU2mmj9FWIXk9ap0H1ocygu1ZTRqg==" crossorigin="anonymous"/>

    <link
            rel="icon" type="image/png" sizes="16x16" href="/images/deal_logo.webp">
    <!-- Custom Stylesheet -->
    <link rel="stylesheet"  href="<c:url value='/assets/plugins/owl.carousel/dist/css/owl.carousel.min.css'/>">
    <link
            href="<c:url value='/assets/plugins/fullcalendar/css/fullcalendar.min.css'/>" rel="stylesheet">
    <!-- Chartist -->
    <link rel="stylesheet" href="<c:url value='/assets/plugins/chartist/css/chartist.min.css'/>">

    <link  href="<c:url value='/main/css/style.css'/>" rel="stylesheet">


</head>

<body>


        <!--*******************
                Preloader start
            ********************-->
        <div id="preloader">
            <div class="loader"></div>
        </div>
        <!--*******************
                Preloader end
            ********************-->


        <!--**********************************
                Main wrapper start
            ***********************************-->
        <div
            id="main-wrapper">

            <!--**********************************
                        Nav header start
                    ***********************************-->
            <div class="nav-header">
                <div class="brand-logo">
                    <a href="#">
                        <b class="logo-abbr">D</b>
                        <span class="brand-title">
                            <b>Admin Dashboard</b>
                        </span>
                    </a>
                </div>
                <div class="nav-control">
                    <div class="hamburger">
                        <span class="toggle-icon">
                            <i class="icon-menu"></i>
                        </span>
                    </div>
                </div>
            </div>
            <!--**********************************
                        Nav header end
                    ***********************************-->

            <!--**********************************
                        Header start
                    ***********************************-->
            <div class="header">
                <div class="header-content clearfix"></div>
            </div>
            <!--**********************************
                        Header end ti-comment-alt
                    ***********************************-->

            <!--**********************************
                        Sidebar start
                    ***********************************-->
            <div class="nk-sidebar">
                <div class="nk-nav-scroll">
                    <ul class="metismenu" id="menu">
                        <li class="nav-label">Dashboard</li>
                        <li>
                            <a href="/InternManagement/dashboard/count" aria-expanded="false">
                                <i class="icon-speedometer"></i>
                                <span class="nav-text">Dashboard</span>
                            </a>

                        </li>

                        <li>
                            <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                                <i class="fa fa-globe"></i>
                                <span class="nav-text">New Batches</span>
                            </a>
                            <ul aria-expanded="false">

                                <li>
                                    <a href="/InternManagement/batch">New Batch</a>
                                </li>
                                <li>
                                    <a href="/InternManagement/batches">List of Batch</a>
                                </li>


                            </ul>
                        </li>

                        <li>
                            <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                                <i class="fa fa-globe"></i>
                                <span class="nav-text">New Intern</span>
                            </a>
                            <ul aria-expanded="false">
                                <li>
                                    <a href="/InternManagement/interns/getInternFormData">Add Intern</a>
                                </li>
                                <li>
                                    <a href="/InternManagement/interns">List of Intern</a>
                                </li>
                            </ul>
                        </li>

                        

                        <li>
                            <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                                <i class="fa fa-globe"></i>
                                <span class="nav-text">Performance</span>
                            </a>
                            <ul aria-expanded="false">

                                <li>
                                    <a href="/InternManagement/performance/getFormData">New Performance</a>
                                </li>
                                <li>
                                    <a href="/InternManagement/performances">List of Performance</a>
                                </li>

                            </ul>
                        </li>


                        <li>
                            <a href="/InternManagement/" aria-expanded="false">
                                <i class="icon-logout"></i>
                                <span class="nav-text">Logout</span>
                            </a>

                        </li>


                    </ul>
                </div>
            </div>
            <!--**********************************
                        Sidebar end
                    ***********************************-->


            <!--**********************************
                        Content body start
                    ***********************************-->
            <div class="content-body">


                <div class="container-fluid">
                    <div class="row justify-content-between mb-4"><!-- <div class="col-xl-3 col-lg-4">
                        						<h2 class="page-heading">Hi,Welcome Back!</h2>
                        						<p class="mb-0">Your restaurent admin template</p>
                                            </div> -->
                        <!-- <div class="col-xl-9 col-xxl-9 col-lg-8 mt-4 mt-lg-0">
                                                <div class="steps">
                                                    <ul class="list-unstyled multi-steps">
                                                        <li>Ordered</li>
                                                        <li>Pending</li>
                                                        <li class="is-active">Accept</li>
                                                        <li>Delivery</li>
                                                        <li>Received</li>
                                                    </ul>
                                                </div> 
                                            </div> -->

                    </div>
                    <div class="row">
                        <div class="col-xl-6 col-xxl-12">
                            <div class="row"></div>
                        </div>


                    </div>

                    <div class="row">
                        <div class="col-lg-12">
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="card-title">Overview</h4>


                                    <div class="row">

                                        <div class="col-sm-6 col-xxl-6 col-xl-6">
                                            <div class="card">
                                                <div class="card-body pb-0">
                                                    <div class="row justify-content-between">
                                                        <div class="col-auto">
                                                            <h4 class="text-muted mb-3">Total Intern</h4>
                                                        </div>
                                                        <div class="col-auto">
                                                            <h2>${internCount}</h2>
                                                        </div>
                                                    </div>

                                                </div>
                                                <div class="chart-wrapper">
                                                    <div id="home_chart_widget_1" class="home_chart_widget chart-one"></div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-sm-6 col-xxl-6 col-xl-6">
                                            <div class="card">
                                                <div class="card-body pb-0">
                                                    <div class="row justify-content-between">
                                                        <div class="col-auto">
                                                            <h4 class="text-muted mb-3">Total Batches</h4>
                                                        </div>
                                                        <div class="col-auto">

                                                            <h2>${batchCount}</h2>


                                                        </div>
                                                    </div>

                                                </div>
                                                <div class="chart-wrapper">
                                                    <div id="home_chart_widget_3" class="home_chart_widget chart-three"></div>
                                                </div>
                                            </div>
                                        </div>


                                    </div>


                                </div>
                            </div>
                        </div>


                    </div>


                </div>
            </div>
            <!--**********************************
                        Content body end
                    ***********************************-->


        </div>
        <!--**********************************
                Main wrapper end
            ***********************************-->

        <!--**********************************
                Scripts
            ***********************************-->
            <script src="<c:url value='/assets/plugins/common/common.min.js'/>"></script>
            <script src="<c:url value='/main/./js/custom.min.js'/>"></script>
            <script src="<c:url value='/main/./js/settings.js'/>"></script>
            <script src="<c:url value='/main/./js/quixnav.js'/>"></script>
            <script src="<c:url value='/main/./js/styleSwitcher.js'/>"></script>
            
            <!-- Datamap -->
            <script src="<c:url value='/assets/plugins/d3v3/index.js'/>"></script>
            <script src="<c:url value='/assets/plugins/topojson/topojson.min.js'/>"></script>
            <script src="<c:url value='/assets/plugins/datamaps/datamaps.world.min.js'/>"></script>
            <!-- Calender -->
            <script src="<c:url value='/assets/plugins/jqueryui/js/jquery-ui.min.js'/>"></script>
            <script src="<c:url value='/assets/plugins/moment/moment.min.js'/>"></script>
            <script src="<c:url value='/assets/plugins/fullcalendar/js/fullcalendar.min.js'/>"></script>
            <!-- ChartJS -->
            <script src="<c:url value='/assets/plugins/chart.js/Chart.bundle.min.js'/>"></script>
            <!-- MorrisJS -->
            <script src="<c:url value='/assets/plugins/raphael/raphael.min.js'/>"></script>
            <script src="<c:url value='/assets/plugins/morris/morris.min.js'/>"></script>
            <!-- Owl carousel -->
            <script src="<c:url value='/assets/plugins/owl.carousel/dist/js/owl.carousel.min.js'/>"></script>
            <!-- Chartist -->
            <script src="<c:url value='/assets/plugins/chartist/js/chartist.min.js'/>"></script>
            <script src="<c:url value='/assets/plugins/chartist-plugin-tooltips/js/chartist-plugin-tooltip.min.js'/>"></script>
            
            
            <!-- Init files -->
            <script src="<c:url value='/main/./js/plugins-init/fullcalendar-init.js'/>"></script>
            <script src="<c:url value='/main/./js/dashboard/dashboard-1.js'/>"></script>

    </body>

</html>
