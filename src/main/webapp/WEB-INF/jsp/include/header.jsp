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


 <div>
<img src="/pub/images/headerbackground.jpg"style="height:500px; margin-top: -1%;">
</div>

<div>
<h1 style="font-size: 85px;color: greenyellow; font-weight: 600; margin-left: 4%; margin-top: 1%">
Truly Organic<img src="/pub/images/th (50).jpg"
 class="img-thumbnail" alt="" style="    width: 760px;    margin-left: 4%;" ></h1>
 </div>


<ul class="nav nav-pills" style="margin-left: 30px;     margin-bottom: 10%;     margin-left: 2%;margin-top: -2%;">
  <li class="nav-item">
    <a class="nav-link active" aria-current="page" href="/home">Home</a>
  </li>
  <li class="nav-item dropdown">
    <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-expanded="false" style=" color: white
    ;font-size: x-large;">Browse  products</a>
    <ul class="dropdown-menu">
         <li><a class="dropdown-item" href="#">Breads</a></li>
               <li><a class="dropdown-item" href="#">Fruits</a></li>
               <li><a class="dropdown-item" href="#">Oils</a></li>
                <li><a class="dropdown-item" href="#">Spices/Seasonings</a></li>
                <li><a class="dropdown-item" href="#">Vegetables</a></li>
                      <li><a class="dropdown-item" href="#">Chicken</a></li>
                            <li><a class="dropdown-item" href="#">Fish</a></li>
                                  <li><a class="dropdown-item" href="#">Beef</a></li>
                                  <li><a class="dropdown-item" href="#">Pork</a></li>
    </ul>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="/cart" style=" color: white;font-size: x-large;">Cart</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="/login" style=" color: white;font-size: x-large;">Login/Sign up</a>
  </li>

  <li class="nav-item">
    <a class="nav-link" href="/profile" style=" color: white;font-size: x-large;">Profile</a>
  </li>

       <li class="nav-item">
         <a class="nav-link" href="/login/logout" style=" color: white;font-size: x-large;">Logout</a>
       </li>


      <li class="nav-item">
      <a class="nav-link" href="/admin/admin" style=" color: white;font-size: x-large;">Admin</a>
     </li>
     <li class="nav-item">

<c:if test="${not empty sessionScope.fullnames}">
<a class="nav-link" href="/admin/admin" style=" color: white;font-size: x-large;">
 <h4 style="color:  white">Welcome ${sessionScope.fullnames}!</h4></a>

</c:if>
</li>
</ul>



</div>

