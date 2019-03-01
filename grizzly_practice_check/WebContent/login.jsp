<%@page import="org.apache.tomcat.dbcp.dbcp2.PStmtKey"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
                pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ADMIN LOGIN</title>
</head>
<body>
                <%!static int status = 0;%>

                <%
                                String uname1 = request.getParameter("uname");
                                String pw1 = request.getParameter("pw");
                                Class.forName("com.mysql.jdbc.Driver");

                                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/grizzlystore?useSSL=false", "root",
                                                                "root");
                 
                                Statement stmt = conn.createStatement();
                                int flag = 0;
                                ResultSet rs = stmt.executeQuery("select * from userdetails");
                                while (rs.next()) {
                                                if (rs.getString(1).equals(uname1) && rs.getString(2).equals(pw1) && rs.getString(3).equals("0")) {
                                                                flag = 1;
                                                              
                                                                session.setAttribute("name",uname1);  
                                                                response.sendRedirect("addProduct.jsp?uname="+uname1);

                                                }
                                }
                                if (status >= 3) {
                                                PreparedStatement pstmt = conn.prepareStatement("update userdetails set status=? where uname=?");
                                                pstmt.setString(1, "1");
                                                pstmt.setString(2, uname1);
                                                int status1 = 0;
                                                status1 = pstmt.executeUpdate();
                                                pstmt.close();
                                                out.println("YOUR ACCOUNT IS LOCKED");
                                                }
                                if (flag == 0 && status < 3) {
                                                status += 1;
                                                out.println(status + " status");
                                                response.sendRedirect("index.jsp");
                                }

                                rs.close();
                                stmt.close();
                                conn.close();
                %>
</body>
</html>
