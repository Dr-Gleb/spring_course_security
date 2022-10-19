<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 19.10.2022
  Time: 12:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Info foe Employees</title>
</head>
<body>
    Info for all Employees
<br><br>
    <security:authorize access="hasRole('HR')">
<input type="button" value="Salary" onclick="window.location.href='hr_info'">
Only for HR stuff
    </security:authorize>
<br><br>
<security:authorize access="hasRole('MANAGER')">
    <input type="button" value="Performance" onclick="window.location.href='manager_info'">
Only for Managers
</security:authorize>
</body>
</html>
