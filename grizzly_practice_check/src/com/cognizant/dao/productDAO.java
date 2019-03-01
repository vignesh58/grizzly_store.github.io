package com.cognizant.dao;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


import com.cognizant.bean.productBean;

public class productDAO {

                public static Connection Connect() throws Exception {
                                Connection conn = null;
                                Class.forName("com.mysql.jdbc.Driver");
                                String url = "jdbc:mysql://localhost:3306/grizzlystore";
                                conn = DriverManager.getConnection(url, "root", "root");
                                return conn;
                }
                
                public int insert(productBean prod) throws Exception {
                                Connection conn = Connect();
                                String insertQuery = "insert into prod1 (pid, pname, category, description, price)values (?, ?, ?, ?, ?)";
                                PreparedStatement pstmt = conn.prepareStatement(insertQuery);
                                pstmt.setString(1, prod.getPid());
                                pstmt.setString(2, prod.getPname());
                                pstmt.setString(3, prod.getCategory());
                                pstmt.setString(4, prod.getDescription());
                                pstmt.setString(5, prod.getPrice());
                                int insertStatus = 0;
                    insertStatus = pstmt.executeUpdate();
                                String insertQuery1 = "insert into prod2 (pid)values (?)";
                                PreparedStatement pstmt1 = conn.prepareStatement(insertQuery1);
                                pstmt1.setString(1, prod.getPid());
                                pstmt1.executeUpdate();
                                return insertStatus;
                                
                }
                
                public List<productBean> readAll() throws Exception {
                                List<productBean> pList = new ArrayList<productBean>();
                                Connection conn = Connect();
                                String readQuery = "select pname,brand,category,rating,prod1.pid from prod1,prod2 where prod1.pid=prod2.pid  ";
                                Statement stmt = conn.createStatement();
                                ResultSet rs = stmt.executeQuery(readQuery);
                                while (rs.next()) {
                                                productBean p = new productBean();
                                                p.setPname(rs.getString(1));
                                                p.setBrand(rs.getString(2));
                                                p.setCategory(rs.getString(3));
                                                p.setRating(rs.getString(4));
                                                p.setPid(rs.getString(5));
                                                pList.add(p);
                                }
                                return pList;
                }
                
                public productBean read(String pname) throws Exception {
                                Connection conn = Connect();
                                String readQuery = "select pname,brand,description,price from prod1,prod2 where prod1.pid=prod2.pid and prod1.pname='"+pname+"'";
                                Statement stmt = conn.createStatement();
                                ResultSet rs = stmt.executeQuery(readQuery);
                /*           PreparedStatement pstmt = conn.prepareStatement(readQuery);
                                pstmt.setString(1, pname);
                                ResultSet rs = pstmt.executeQuery(readQuery);*/
                                productBean emp = new productBean();
                                if (rs.next()) {
                                                emp.setPname(rs.getString(1));;
                                                emp.setBrand(rs.getString(2));
                                                emp.setDescription(rs.getString(3));
                                                emp.setPrice(rs.getString(4));
                                }

                                return emp;
                }
                
                public int delete(String pname,String pid, String category) throws Exception {
                                Connection conn = Connect();
                                String deleteQuery = "delete from prod1 where  prod1.pname='"+pname+"' and pid='"+pid+"' and category='" + category +"'";
                                int deleteStatus = 0;
                                Statement stmt = conn.createStatement();
                                deleteStatus = stmt.executeUpdate(deleteQuery);
                                return deleteStatus;
                }
                
}
