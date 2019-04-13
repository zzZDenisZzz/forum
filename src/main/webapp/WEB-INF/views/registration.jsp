<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Registration</title>

    <link href="<c:url value="/resources/css/images/favicon.ico" />" rel="shortcut icon"
          type="image/x-icon">
    <!-- Bootstrap core CSS -->
    <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/registration.css" />" rel="stylesheet">
</head>
<body>

<div class="main">
    <div class="col-12">
        <div class="registration-form">
            <h1 class="text-center">Registration User</h1>
            <%--@elvariable id="user" type="com.greenstone"--%>
            <form:form method="post" modelAttribute="user" action="/registration">

                <spring:bind path="username">
                    <div class="form-group ${status.error ? 'has-error' : ''}">
                        <form:input type="text" class="form-control" name="username" placeholder="Username"
                                    path="username"/>
                        <form:errors cssClass="text-danger" path="username"/>
                    </div>
                </spring:bind>

                <spring:bind path="password">
                    <div class="form-group ${status.error ? 'has-error' : ''}">
                        <form:input type="password" class="form-control" name="password" placeholder="Password"
                                    path="password"/>
                        <form:errors cssClass="text-danger" path="password"/>
                    </div>
                </spring:bind>

                <spring:bind path="confirmPassword">
                    <div class="form-group ${status.error ? 'has-error' : ''}">
                        <form:input type="password" class="form-control" name="confirmPassword"
                                    placeholder="Confirm Password"
                                    path="confirmPassword"/>
                        <form:errors cssClass="text-danger" path="confirmPassword"/>
                    </div>
                </spring:bind>
                <button class="btn btn-lg btn-dark btn-block" type="submit">Sign up</button>
            </form:form>
            <p>Don't have an Account? <a href="${pageContext.request.contextPath}/login"> Login Now!</a></p>
        </div>
    </div>
</div>
</body>
</html>