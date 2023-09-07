<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!DOCTYPE html>
<html lang="en" class="h-100">
    <html xmlns:th="http://www.thymeleaf.org">


<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>Admin Login</title>
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="/InternManagement/assets/images/favicon.png">
    <!-- Custom Stylesheet -->
    <link href="/InternManagement/main/./css/style.css" rel="stylesheet">

    
</head>

<body class="h-100">
    <div id="preloader">
        <div class="loader"></div>
    </div>
    <div class="login-bg h-100">
        <div class="container h-100">
            <div class="row justify-content-center h-100">
                <div class="col-md-5">
                    <div class="form-input-content">
                        <div class="card card-login">
                            <div class="card-header">
                                <div class="nav-header position-relative  text-center w-100">
                                    <div class="brand-logo">
                                        <a href="#">
                                            <span class="brand-title"><b th:text="${errorMessage}"></b>${errorMessage}</span>
                                            
                                        </a>
                                        <p th:text="${errorMessage}"></p>
                                    </div>
                                </div>
                            </div>
                            <!-- <div class="text-center my-3">
                                <img class="rounded-circle" src="assets/images/avatar/11.png" width="80" height="80" alt="">
                            </div> -->
                            <div class="card-body">
                            <h2 class="text-center mb-4">Admin Login</h2>
                                <form action="/InternManagement/admin/verify" class="sign-in-form" method="post">
                                    <div class="form-group mb-4">
                                        <input type="text" class="form-control rounded-0 bg-transparent" placeholder="Email" name="username">
                                    </div>
                                    <div class="form-group mb-4">
                                        <input type="password" class="form-control rounded-0 bg-transparent" placeholder="Password" name="password">
                                    </div>
                                    <!-- <div class="form-group ml-3 mb-5">
                                        <input id="checkbox1" type="checkbox">
                                        <label class="label-checkbox ml-2 mb-0" for="checkbox1">Remember Password</label>
                                    </div> -->
                                    <button class="btn btn-primary btn-block border-0" type="submit">Login</button>
                                </form>
                            </div>
                            <!-- <div class="card-footer text-center border-0 pt-0">
                                <p class="mb-1">Don't have an account?</p>
                                <h6><a href="#">Click me to create account</a></h6>
                            </div> -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- #/ container -->
    <!-- Common JS -->
    <script src="/InternManagement/assets/plugins/common/common.min.js"></script>
    <script src="/InternManagement/main/./js/custom.min.js"></script>
    <script src="/InternManagement/main/./js/settings.js"></script>
    <script src="/InternManagement/main/./js/quixnav.js"></script>
</body>


</html>
