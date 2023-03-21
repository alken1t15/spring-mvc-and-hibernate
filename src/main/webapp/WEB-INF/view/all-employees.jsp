<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="с" uri="http://java.sun.com/jsp/jstl/core" %>


<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>All Employees</h2>
<br>

<table>
    <tr>
        <th>Name</th>
        <th>Surname</th>
        <th>Department</th>
        <th>Salary</th>
        <th>Operations</th>
    </tr>
    <c:forEach var="emp" items="${allEmps}">

       <с:url var="updateButton" value="//updateInfo"><%--  // сылаеться на @RequestMapping("/updateInfo")--%>
            <c:param name="empId" value="${emp.id}"/>
        </с:url>

        <с:url var="deleteButton" value="//deleteEmployee"><%--  // сылаеться на @RequestMapping("/updateInfo")--%>
            <c:param name="empId" value="${emp.id}"/>
        </с:url>

        <tr>
            <td>${emp.name}</td>
            <td>${emp.surname}</td>
            <td>${emp.department}</td>
            <td>${emp.salary}</td>
            <td><input type="button" value="Update" onclick="window.location.href='${updateButton}'"/>
                <input type="button" value="Delete" onclick="window.location.href='${deleteButton}'"/>
            </td>
        </tr>
    </c:forEach>
</table>
<br>
<input type="button" value="add" onclick="window.location.href='addNewEmployee'">
</body>
</html>
