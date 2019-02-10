<%--
  Created by IntelliJ IDEA.
  User: Thinh
  Date: 2/10/2019
  Time: 21:26
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Save</title>
</head>
<body>
    <h2>You chose:</h2>

    <br />
    <c:forEach var="courses" items="${member.courses}">
        <c:out  value="${courses}" /><br />
    </c:forEach>
</body>
</html>
