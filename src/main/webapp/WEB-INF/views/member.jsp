<%--
  Created by IntelliJ IDEA.
  User: Thinh
  Date: 2/10/2019
  Time: 21:26
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Spring MVC checkbox</title>
</head>
<body>
    <h2>Sandwich Condiments</h2>

    <form:form method="post" commandName="member">
        <table>
            <tr>
                <th>Are you a new member?</th>
                <td>
                    <form:checkbox path="newMember" />
                </td>
            </tr>
            <tr>
                <th>Choose the sandwich </th>
                <td>
                    <form:checkboxes path="courses" items="${courses}" />
                </td>
            </tr>
            <tr>
                <th></th>
                <td>
                    <input type="submit" name="submit" value="Save" />
                </td>
            </tr>
        </table>
    </form:form>
</body>
</html>
