<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add Message</title>
</head>
<body>
<c:url var="saveUrl" value="/web/home/add" />
<form:form modelAttribute="message" method="POST" action="${saveUrl}">
    <table>
        <tr>
            <td>
                <form:hidden path="id"/>
                <form:label path="text">Message:</form:label>
            </td>
            <td><form:input path="text"/></td>
        </tr>
    </table>
    <input type="submit" value="Save" />
</form:form>
</body>
</html>