<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Login Page</title>

    <link href="${pageContext.request.contextPath}resources/css/images/favicon.ico" rel="shortcut icon"
          type="image/x-icon">
    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}resources/css/login.css" rel="stylesheet">

</head>
<body>
<div class="sidenav">
    <div class="login-main-text">
        <h2>Green Stone<br> Login Page</h2>
    </div>
</div>
<div class="main">
    <div class="col-md-6 col-sm-12">
        <div class="login-form">
            <%--@elvariable id="errorMessage" type="com.greenstone"--%>
            <c:if test="${not empty errorMessage}">
                <div class="text-danger">${errorMessage}</div>
            </c:if>
            <form name='login' action="${pageContext.request.contextPath}/login" method='POST'>
                <div class="form-group">
                    <label>User Name</label>
                    <input type="text" class="form-control" name="username" placeholder="User Name">
                </div>
                <div class="form-group">
                    <label>Password</label>
                    <input type="password" class="form-control" name="password" placeholder="Password">
                </div>
                <button type="submit" class="btn btn-black">Sign in</button>
                <button type="button" class="btn btn-secondary"
                        onclick='location.href="${pageContext.request.contextPath}/registration"'>Sign up
                </button>
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            </form>
        </div>
    </div>
</div>
<script src="${pageContext.request.contextPath}resources/jquery/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}resources/js/bootstrap.min.js"></script>

</body>
</html>