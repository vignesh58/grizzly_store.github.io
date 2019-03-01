<%@page import="org.apache.tomcat.dbcp.dbcp2.PStmtKey"%>
<%@page import="java.sql.*"%>
<%@page import="com.cognizant.bean.productBean"%>
<%@page import="com.cognizant.dao.productDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Product action</title>
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
   
    <%
    try {
                /*           Class.forName("com.mysql.jdbc.Driver");
                                String url = "jdbc:mysql://localhost:3306/grizzly_store";
                                Connection conn = DriverManager.getConnection(url, "root", "root");
                                String insertQuery = "insert into product (pid, pname, category, description, price)values (?, ?, ?, ?, ?)";
                                String pid = request.getParameter("pid");
                                String name = request.getParameter("pname");
                                String category = request.getParameter("category");
                                String desc = request.getParameter("desc");
                                String price = request.getParameter("price");
                                PreparedStatement pstmt = conn.prepareStatement(insertQuery);           
                                pstmt.setString(1,pid);
                                pstmt.setString(2, name);
                                pstmt.setString(3, category);
                                pstmt.setString(4, desc);
                                pstmt.setString(5, price);
                                int insertStatus = 0;
                                insertStatus = pstmt.executeUpdate();
                                */
                                productDAO pDAO = new productDAO();
                    productBean p = new productBean();
                                p.setPid(request.getParameter("pid"));
                                p.setPname(request.getParameter("pname"));
                                p.setCategory(request.getParameter("category"));
                                p.setDescription(request.getParameter("desc"));
                                p.setPrice(request.getParameter("price"));
                                int insertStatus = 0;
                                insertStatus = pDAO.insert(p);
                                
                                
                                if (insertStatus == 0) {
                                                out.println("Error while Inserting the Record!!! Pls Check.");
                                } else {
                                                response.sendRedirect("product.jsp?uname="+uname1);
                                }
                } catch (Exception e) {
                                out.print(e.getMessage());
                }

                                                       //         response.sendRedirect("addProduct.jsp?uname="+uname1);
                                
 %>
</body>
<% } %>
</html>
