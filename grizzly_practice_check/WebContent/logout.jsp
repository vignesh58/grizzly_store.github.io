<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Logout Page</title>
</head>
<body>
	<%
              response.setHeader("Cache-Control", "no-cache");
              response.setHeader("Cache-Control", "no-store");
              response.setHeader("Pragma", "no-cache");
              response.setDateHeader("Expires", 0);
              session.setAttribute("name", null);
              if (session.getAttribute("name") == null) {
                     session.invalidate();
                     response.sendRedirect("index.jsp");
                     response.setIntHeader("Refresh", 5);
              }
       %>
</body>
</html>


