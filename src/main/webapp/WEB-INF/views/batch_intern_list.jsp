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
   

    <link href="<c:url value='/assets/plugins/jquery-steps/css/jquery.steps.css'/>" rel="stylesheet">
    <!-- Dropify -->
    <link rel="stylesheet" href="<c:url value='/assets/plugins/dropify/dist/css/dropify.min.css'/>">
    <!-- Tagsinput -->
    <link rel="stylesheet" href="<c:url value='/assets/plugins/bootstrap-tagsinput/css/bootstrap-tagsinput.css'/>">
    <!-- Switchery -->
    <link href="<c:url value='/assets/plugins/innoto-switchery/dist/switchery.min.css'/>" rel="stylesheet"/>
    <!-- Select 2 -->
    <link rel="stylesheet" href="<c:url value='/assets/plugins/select2/css/select2.min.css'/>">
    <!-- Towchspinner -->
    <link rel="stylesheet" href="<c:url value='/assets/plugins/bootstrap-Towchspin/css/jquery.bootstrap-Towchspin.min.css'/>">
    <!-- Input mask -->
    <link rel="stylesheet" href="<c:url value='/assets/plugins/jasny-bootstrap/dist/css/jasny-bootstrap.min.cs'/>">
    <!-- x-editable -->
    <link href="<c:url value='/assets/plugins/x-editable/dist/bootstrap3-editable/css/bootstrap-editable.css'/>" rel="stylesheet">
    <!-- Summernote -->
    <link href="<c:url value='/assets/plugins/summernote/summernote.css'/>" rel="stylesheet">
    <!-- Daterange picker -->
    <link href="<c:url value='/assets/plugins/bootstrap-daterangepicker/daterangepicker.css'/>" rel="stylesheet">
    <!-- Clockpicker -->
    <link href="<c:url value='/assets/plugins/clockpicker/css/bootstrap-clockpicker.min.css'/>" rel="stylesheet">
    <!-- asColorpicker -->
    <link href="<c:url value='/assets/plugins/jquery-asColorPicker/css/asColorPicker.min.css'/>" rel="stylesheet">
    <!-- Material color picker -->
    <link href="<c:url value='/assets/plugins/bootstrap-material-datetimepicker/css/bootstrap-material-datetimepicker.css'/>" rel="stylesheet">
    <!-- Pick date -->
    <link rel="stylesheet" href="<c:url value='/assets/plugins/pickadate/themes/default.css'/>">
    <link rel="stylesheet" href="<c:url value='/assets/plugins/pickadate/themes/default.date.css'/>">



    <link rel="stylesheet" href="<c:url value='/assets/plugins/jsgrid/css/jsgrid.min.css'/>">
    <link rel="stylesheet" href="<c:url value='/assets/plugins/jsgrid/css/jsgrid-theme.min.css'/>">
    <!-- Footable -->
    <link rel="stylesheet" href="<c:url value='/assets/plugins/footable/css/footable.bootstrap.min.css'/>">
    <!-- Bootgrid -->
    <link rel="stylesheet" href="<c:url value='/assets/plugins/jquery-bootgrid/dist/jquery.bootgrid.min.css'/>">


    <link href="<c:url value='/assets/plugins/datatables/css/jquery.dataTables.min.css'/>" rel="stylesheet">


    <link href="<c:url value='/main/./css/style.css'/>" rel="stylesheet">


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

            <div class="row page-titles mx-0">
               
              
            </div>
            <!-- row -->

            <div class="container-fluid">
                
              
                <div class="row">
                    <div class="col-12">
                        <h3 class="content-heading">Intern List</h3>
                    </div>
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="table-responsive">
        <button type="button" class="btn btn-primary float-right" id="exportBtn" style="float: right;margin-bottom:20px">Export Data</button>

                                    <table id="example" class="display" style="min-width: 845px">
                                        <thead>
                                            <tr>
                                                <th>Name</th>
                                                <th>Batch</th>
                                                
                                                <th>College</th>
                                                <th>Course</th>
                                                <th>DOB</th>
                                                <th>Gender</th>
                                                <th>Number</th>
                                                <th>Address</th>
                                                <th>Description</th>
                                                <th>Action</th>

                                           </tr>
                                        </thead>
                                        <tbody>

                                        <c:forEach var="intern" items="${allBatchInterns}">

                                            <tr>
                                                <td>${intern.name}</td>
                                                <td>${intern.batchid}</td>
                                                <td>${intern.code}</td>
                                                <td>${intern.course}</td>
                                                <td>${intern.dob}</td>
                                                <td>${intern.gender}</td>
                                                <td>${intern.number}</td>
                                                <td>${intern.address}</td>
                                                <td>${intern.description}</td>
                                                <td><a href="/InternManagement/performance/getPerformanceData/${intern.id}">View Performance</a></td>


                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                                <th>Name</th>
                                                <th>College</th>
                                                <th>Course</th>
                                                <th>DOB</th>
                                                <th>Gender</th>
                                                <th>Number</th>
                                                <th>Address</th>
                                                <th>Description</th>
                                                <th>Action</th>
                                            </tr>
                                        </tfoot>
                                    
                                    </table>
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
        
        
        <!--**********************************
            Footer start
        ***********************************-->
        <div class="footer">
            <div class="copyright">
                <p><a href="templatespoint.net"></a></p>
            </div>
        </div>
        <!--**********************************
            Footer end
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

    <!-- JS Grid -->
    <script src="<c:url value='/assets/plugins/jquery-validation/jquery.validate.min.js'/>"></script>
    <script src="<c:url value='/assets/plugins/jsgrid/js/jsgrid.min.js'/>"></script>
    <!-- Footable -->
    <script src="<c:url value='/assets/plugins/footable/js/footable.min.js'/>"></script>
    <!-- Bootgrid -->
    <script src="<c:url value='/assets/plugins/jquery-bootgrid/dist/jquery.bootgrid.min.js'/>"></script>
    <!-- Datatable -->
    <script src="<c:url value='/assets/plugins/datatables/js/jquery.dataTables.min.js'/>"></script>


    <!-- JS Grid Init -->
    <script src="<c:url value='/main/./js/plugins-init/jsgrid-init.js'/>"></script>
    <script src="<c:url value='/main/./js/plugins-init/footable-init.js'/>"></script>
    <script src="<c:url value='/main/./js/plugins-init/jquery.bootgrid-init.js'/>"></script>
    <script src="<c:url value='/main/./js/plugins-init/datatables.init.js'/>"></script>

    <script src="https://cdn.jsdelivr.net/gh/linways/table-to-excel@v1.0.4/dist/tableToExcel.js"></script>


    <script>
        $('#exportBtn').click(function(){
             
    TableToExcel.convert(document.getElementById("example"), {
        name: "Report.xlsx",
        sheet: {
        name: "Sheet1"
        }
      });
    });
    
    </script>
</body>


</html>