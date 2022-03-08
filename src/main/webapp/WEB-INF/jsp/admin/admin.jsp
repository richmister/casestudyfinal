<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<html>

<head>
    <title>PerScholas Case Study</title>
       <!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">


    <!-- Seperate-->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
 integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>



 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
  integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>





<link rel="stylesheet" type="text/css" href="../pub/css/styles.css" />
</head>

<body>

<!-- implement any html you need to show on every page as a header here -->
<img src="/pub/images/headerbackground.jpg"style="height:50%">
<div style="    margin-top: -310px;"><h1 style="font-size: 85px;    color: greenyellow;    font-weight: 600; margin-left: 4%;">Truly Organic<img src="/pub/images/th (50).jpg" class="img-thumbnail" alt="" style="    width: 760px;    margin-left: 4%;" ></h1>

</div>
<ul>
  <li class="nav-item">
    <a class="nav-link" href="/home" style=" color: white;font-size: x-large;">Logout</a>
  </li>
  </ul>
<sec:authorize access="hasAnyAuthority('ADMIN')">


<form method="get" action="/registration-url-path/userList">
    <input type="text" name="search" value="${searchInput}">
    <button type="submit">Search</button>
</form>
<hr>
<form method="get" action="/registration-url-path/userList">
    First Name <input type="text" name="firstName">
    <br>
    Last Name <input type="text" name="lastName">
    <button type="submit">Search</button>
</form>
<hr>

<table border="1">
    <tr>
        <td><b>Id</b></td>

        <td><b>Email</b></td>
        <td><b>First Name</b></td>
        <td><b>Last Name</b></td>
        <td><b>Password</b></td>
        <td><button>Edit</button></td>
        <td><button>Delete</button></td>
    </tr>
    <c:forEach items="${userListKey}" var="user">
        <tr>
            <td>${user.id}</td>

            <td>${user.email}</td>
            <td>${user.firstName}</td>
            <td>${user.lastName}</td>
            <td>${user.password}</td>
            <td><a class="btn btn-primary"  role="button" href="/registration-url-path/register?id=${user.id}">Edit</a></td>
            <td><a class="btn btn-danger" role="button" href="/registration-url-path/deleteUser?id=${user.id}">Delete</a></td>
        </tr>
    </c:forEach>
</table>

<jsp:include page="../include/footer.jsp" />




<%-- Whatever you put in here will only be visible to people with ADMIN userrole --%>
</sec:authorize>
