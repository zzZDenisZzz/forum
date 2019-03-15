<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

<html>
<head>
    <title>Green Stone</title>
</head>
<body>

<h1>Welcome ${user}</h1>

<sec:authorize access="isAuthenticated()">
    <p>Ваш логин: <sec:authentication property="principal.username" /></p>
</sec:authorize>

<a href="/login"> LOGIN </a><br><br>
<a href="/logout">LOGOUT</a>
</body>
</html>
