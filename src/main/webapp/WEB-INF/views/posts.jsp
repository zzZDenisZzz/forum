<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Green Stone</title>

    <link href="${pageContext.request.contextPath}resources/css/images/favicon.ico" rel="shortcut icon"
          type="image/x-icon">
    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}resources/css/login.css" rel="stylesheet">

</head>

<body>

<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark static-top">
    <div class="container">
        <a class="navbar-brand" href="/welcome">Green Stone</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive"
                aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="/registration">Registration</a>
                </li>
                <li class="nav-item">
                    <sec:authorize access="!isAuthenticated()">
                        <a class="nav-link" href="<c:url value="/login" />">Login</a>
                    </sec:authorize>
                    <sec:authorize access="isAuthenticated()">
                        <a class="nav-link" href="<c:url value="/logout" />">Logout</a>
                    </sec:authorize>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Contact</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Page Content -->
<div style="background-color: darkseagreen">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <h1 class="mt-3">Welcome to Forum</h1>
            </div>
        </div>
    </div>
</div>
<div class="container" style="background-color:azure">
    <div class="row mt-4">
        <div class="col-2 mt-3 mb-3 text-center">
            <p class="h5">Username</p>
            <p class="h6">Role</p>
        </div>
        <div class="col-10 mt-3 mb-3">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque ratione nulla
            quisquam porro consectetur, hic voluptatibus non officia neque iusto quod debitis ipsum repudiandae,
            blanditiis natus accusamus est odit dolorem!
        </div>
    </div>
</div>
<div class="container">
    <div class="row mt-4 flex-row-reverse">
        <button type="button" class="btn btn-light">Add Message</button>
    </div>
</div>
<!-- Bootstrap core JavaScript -->
<script src="${pageContext.request.contextPath}resources/jquery/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}resources/js/bootstrap.bundle.min.js"></script>

</body>
</html>