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
</head>

<body>
    <script src="scripts/js/bootstrap.min.js"></script>
    <script src="scripts/js/bootstrap.js"></script>
    <div class="text-center" align="center">
        <img src="images/bb1.jpg" class="rounded" alt="fdsf" style="width:40%; padding-top: 200px;">
    </div>
   <form method="POST" action="login.jsp">
      <div class="form-row align-items-center"> 
          <div class="container" style="padding-top: 10px; width:20%; ">
              <input type="text" name="uname" class="form-control form-rounded" placeholder="User Name">      
      </div>
      </div>
       <div class="form-row align-items-center"> 
          <div class="container" style="padding-top: 10px; width:20%; ">
              <input type="password" name="pw" class="form-control form-rounded" placeholder="Enter Password">      
      </div>
      </div>
      <div class="form-row align-items-center">
         <div class="container" style="padding-top: 10px; width:20%; padding-left: 150px" >
          <input type="submit" value="submit" class="btn btn-outline-secondary" style="color: #000000; border-radius: 1rem" >
         </div>
      </div>
</form>

</body>

</html>
