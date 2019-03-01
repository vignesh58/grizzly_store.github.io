
<%@page import="org.apache.tomcat.dbcp.dbcp2.PStmtKey"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="com.cognizant.bean.productBean"%>
<%@page import="com.cognizant.dao.productDAO"%>
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
<%
response.setIntHeader("Refresh", 10);
if (session.getAttribute("name") == null) {
       out.println("Login again");
       %>
       <a
              class="btn btn-secondary" href="index.jsp"
              style="border-radius: 1rem; background: #C0C0C0; color: black">Login</a>
       
       <% 
} else {
       System.out.println(session.getAttribute("name"));
       %>


<%
   String uname1 = request.getParameter("uname");
%>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k"
        crossorigin="anonymous"></script>
    <!--  <script src="scripts/js/bootstrap.js"></script> -->
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
<li class="nav-item">
    <a class="nav-link" href="#">Welcome <%=uname1 %></a>
</li>
<li class="nav-item " style="padding-left: 100px">
<a class="btn btn-secondary" href="index.jsp" style="border-radius: 1rem; background:#C0C0C0; color: black">Logout</a>
</li>
</ul>

</div>
</nav>

<div class="container-fluid" style="padding-top: 100px;">
<div class="row">
    <div class="col-sm-3" style="float: left; padding-left: 200px;">
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
    <nav class="nav nav-pills " style="width: 75%;">
<a class="nav-item nav-link active" style="background:#C0C0C0; color:black;width: 30%; " href="#">PRODUCTS</a>
<a class="nav-item nav-link" style="background:lightgray; color:black; width: 30%;" href="#">VENDORS</a>
</nav>

<nav class="nav" style="padding-top: 20px;">
<div class="btn-group" role="group" aria-label="Button group with nested dropdown">
    <div class="btn-group " role="group">
        <button id="btnGroupDrop1" type="button" class="btn btn-light dropdown-toggle" data-toggle="dropdown" aria-haspopup="true"
            aria-expanded="false" style="border-radius: 2rem;"> Choose Action
</button>
<div class="dropdown-menu" aria-labelledby="btnGroupDrop1">
    <a class="dropdown-item" href="#">Update</a>
    <a class="dropdown-item" href="#">Edit</a>
</div>
</div>
<ul class="navbar-nav mr-auto mt-2 mt-lg-0">
    <li class="nav-item active">
        <div class="d-flex justify-content-center h-10 </h4>0" style="padding-left: 30px;">
<div class="searchbar">
    <input class="search_input" type="text" name="" placeholder="Search...">
    <a href="#" class="search_icon"><i class="fas fa-search"></i></a>
</div>
</div>
</li>
</ul>
<div class="btn-group " role="group">
    <button id="btnGroupDrop1" type="button" class="btn btn-light dropdown-toggle" data-toggle="dropdown" aria-haspopup="true"
        aria-expanded="false" style="border-radius: 2rem;"> Sort by
</button>
<div class="dropdown-menu" aria-labelledby="btnGroupDrop1">
    <a class="dropdown-item" href="#">Name</a>
    <a class="dropdown-item" href="#">Date</a>
</div>
</div>
</div>
<ul class="navbar-nav mr-auto mt-2 mt-lg-0">
<li class="nav-item " style=" padding-left: 800px">
<a class="btn btn-secondary" href="addProduct.jsp?uname=<%=uname1 %>" style="border-radius: 1rem; color:#fff">Add Product</a>
</li>
</ul>
</nav>
<p  class="table-border" style="padding-top:30px; ">
<table class="table table-hover table-bordered"  style=" width: 100%;"  >
  <thead  style="color: #DCDCDC ">
    <tr class="table-light"  style="color: #DCDCDC ">
      <th scope="col">Product List</th>
      <th scope="col">Brand</th>
      <th scope="col">Category</th>
      <th scope="col">Rating</th>
    </tr>
  </thead>
  <!-- onclick="location.href='description.html'" -->
  <%
                                                try {
                                                                
                                                    productDAO pDAO = new productDAO();
                                                                List<productBean> pList = new ArrayList<productBean>();
                                                                pList = pDAO.readAll();

                                                                int i = 0;
                                                                for (productBean emp : pList) {
                                %>
   <tbody style="height:5px;
          overflow-y:auto; 
           width: 100%;"  >
    <tr>
      <td scope="row"><label class="container1" style="padding-left: 30px;"><%=emp.getPname() %>
          <input type="checkbox" checked="checked">
           <span class="checkmark"></span>
       </label></td>
      <td><%=emp.getBrand()%></td>
      <td><%=emp.getCategory()%></td>
      <td><%=emp.getRating()%></td>
       <td> <span style="padding-left: 10px;" > <a class="btn btn-light" disabled href="description.jsp?uname=<%=uname1 %>&pname=<%=emp.getPname() %>" style="border-radius: 1rem; color: black">View</a> </span>
      <span style="padding-left: 10px;" > <a class="btn btn-light" disabled href="product.jsp?uname=<%=uname1 %>" style="border-radius: 1rem; color: black">Block</a> </span>
     <span style="padding-left: 10px;" > <a class="btn btn-light" disabled href="delete.jsp?uname=<%=uname1 %>&pname=<%=emp.getPname() %>&pid=<%=emp.getPid() %>&category=<%=emp.getCategory() %>" style="border-radius: 1rem;  color: black">Remove</a> </span></td>
    </tr>
   
  </tbody>
<%
                                                }
                                                                
                                %>
</table>
<%
                                } catch (Exception e) {
                                                out.println(e.getMessage());
                                }
                %>
</p>

</div>
</div>
</div>
</body>
<% } %>

</html>
