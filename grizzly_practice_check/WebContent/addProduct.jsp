<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <title> Grizzly-Store Practice Check </title>
     <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="styles/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="styles/css/main.css">
    <link rel="stylesheet" type="text/css" href="styles/css/bootstrap.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr"
        crossorigin="anonymous">
</head>

<body>
    <script src="scripts/js/bootstrap.min.js"></script>
    <script src="scripts/js/bootstrap.js"></script>
    <!-- Just an image -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand " href="#">
            <img src="images/bb10.jpg" width="250" height="40" alt="Grizzly-Store" style="border-radius: 1rem;">
</a>

<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02"
    aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

<div class="collapse navbar-collapse" id="navbarTogglerDemo02" style="padding-left: 50px;">
    <div class="d-flex justify-content-center h-10 </h4>0">
        <div class="searchbar">
            <input class="search_input" type="text" name="" placeholder="Search...">
            <a href="#" class="search_icon"><i class="fas fa-search"></i></a>
        </div>
    </div>
</div>
<ul class="navbar-nav mr-auto mt-2 mt-lg-0">
    <li class="nav-item active" style="padding-left: 700px">
<a class="nav-link" href="#"><i class="fas fa-bell"></i> <span class="sr-only"></span></a>
</li>
<%
   String uname1 = request.getParameter("uname");
%>
<li class="nav-item">
    <a class="nav-link" href="#">Welcome <%=uname1 %></a>
</li>
<li class="nav-item " style="padding-left: 100px">
<a class="btn btn-secondary" href="logout.jsp" style="border-radius: 1rem; background:#C0C0C0; color: black">Logout</a>
</li>
</ul>

</div>
</nav>

<div class="container-fluid" style="padding-top: 100px;">
<div class="row">
    <div class="col-sm" style="float: left; padding-left: 200px;">
<div class="card bg-light mb-3" style="max-width: 18rem; ">
<div class="card-header" style="color: darkgray; "><b>Profile</b><a href="#" class="btn btn-secondary" style="float: right; background: #C0C0C0 " >edit</a>
</div>
<img src="images/user.jpg" class="card-img-top" alt="image not found" width="50px" height="200px" style=" padding: 10px 10px 10px 10px;">
<div class="card-body">
    <h3 class="card-title" style="text-align: center"><%=uname1 %></h3>
<h5 style="text-align: center; padding-top: 10px"> ID </h5>
<p class="card-text" style="text-align: center">Gre234335</p>
<h5 style="text-align: center; padding-top: 10px"> Designation </h5>
<p class="card-text" style="text-align: center">Product admin</p>
<h5 style="text-align: center; padding-top: 10px">Office </h5>
<p class="card-text" style="text-align: center">NYC_NY,USA</p>
</div>
</div>
</div>

<div class="col-sm">
    <nav class="nav nav-pills nav-justified" style="background:lightgray; color:black ">
<a class="nav-item nav-link active" style="background:#C0C0C0; color:black" href="#">PRODUCTS</a>
<a class="nav-item nav-link" style="color:black" href="#">VENDORS</a>
</nav>
<!-- Drop Zone -->
<div class="col-sm" style="width: 400px; padding-top: 30px; ">
<form method="post" action="#" id="#">
    <div class="form-group files color">
        <input type="file" class="form-control" multiple="">
    </div>
</form>
<button type="button" class="btn btn-secondary" >2</button>
<button type="button" class="btn btn-secondary">3</button>
<button type="button" class="btn btn-secondary">4</button>
<button type="button" class="btn btn-secondary">5</button>
</div>

</div>
<div class="col-sm">
    <form method="post" action="addAction.jsp?uname=<%=uname1 %>" style=" background: transparent;">
<div class="form-group">
    <ul class="list-group list-group-flush" style="float: left; padding-top: 100px;">
<li class="list-group-item">
<input type="text" class="form-control" name="pid" id="formGroupExampleInput" placeholder="Enter Product ID"></li>
<li class="list-group-item">
    <select name="category" class="custom-select">
  <option selected>Category</option>
  <option value="electronics" > Electronics</option>
  <option value="home appliances">Home Appliances</option>
  <option value="mobiles">Mobiles</option>
</select>
</li>
<li class="list-group-item"><input type="text" class="form-control" name="pname" id="formGroupExampleInput" placeholder="Name"></li>
<li class="list-group-item"><input type="text" class="form-control" name="desc" id="formGroupExampleInput" placeholder="Description"></li>
<li class="list-group-item"><input type="text" class="form-control" name="price" id="formGroupExampleInput" placeholder="Price"></li>
</ul>
</div>

<div class="container" style="padding-top: 650px;padding-left: 250px;"> <input type="submit" value="Add" class="btn btn-dark" href="product.jsp" style=" 
  width: 40%; border-radius: 1rem;
  bottom: 10px;" >

</div>
<div class="container" style="padding-top: 20px;padding-left: 250px;">
<a class="btn btn-light" href="product.jsp?uname=<%=uname1 %>" style=" border-radius: 1rem;
  width: 40%;
  bottom: 10px;">Cancel</a>
</div>
</form>
</div>

</div>
</div>
</body>
</html>
