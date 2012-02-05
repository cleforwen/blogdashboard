<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Message List</title>
</head>
<body>
<c:url var="saveUrl" value="/web/home/add" />
<a href="${saveUrl}">Add Message</a>
<p>Messages:
  <ul>
  <c:forEach var="message" items="${messages}">
    <li>
        <div><c:out value="${message.text}"/></div>
    </li>
  </c:forEach>
  </ul>
</p>
</body>
</html>