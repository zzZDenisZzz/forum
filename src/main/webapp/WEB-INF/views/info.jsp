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

    <link href="<c:url value="/resources/css/images/favicon.ico" />" rel="shortcut icon"
          type="image/x-icon">
    <!-- Bootstrap core CSS -->
    <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/login.css" />" rel="stylesheet">

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
                <h1 class="mt-3">Information</h1>
            </div>
        </div>
    </div>
</div>

<div class="container" style="background-color:azure">
    <div class="row mt-5" style="background-color:darkseagreen">
        <div class="col-7 mt-3 mb-3">Topics</div>
        <div class="col-1 text-center mt-3 mb-3">Replies</div>
        <div class="col-1 text-center mt-3 mb-3">Views</div>
        <div class="col-3 mt-3 mb-3">Last post</div>
    </div>
    <div class="row">
        <%--@elvariable id="topic" type="java.util.List"--%>
        <c:forEach items="${topic}" var="topic">
            <div class="col-1 mt-3 mb-3"><img src="/resources/css/images/paper.png"></div>
            <div class="col-6 mt-3 mb-3"><a class="text-dark"
                                            href="/topic/information/${topic.id}">${topic.theme}</a></div>
            <div class="col-1 text-center mt-3 mb-3">1</div>
            <div class="col-1 text-center mt-3 mb-3">2</div>
            <div class="col-3 mt-3 mb-3">by Admin ${topic.topicDate}</div>
        </c:forEach>
    </div>
</div>
<!-- Bootstrap core JavaScript -->
<script src="<c:url value="/resources/jquery/jquery.min.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap.bundle.min.js" />"></script>

</body>
</html>