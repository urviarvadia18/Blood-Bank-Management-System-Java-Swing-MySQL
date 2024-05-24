<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View User</title>
        <style>
             .con{
        background-image: url('ajt3.gif'); 
        /*background-repeat:repeat-y;*/
        background-size: 100% 100%  ;
        background-attachment:scroll;
       /*color: whitesmoke;*/
        height: 680px;
        width: 1460px;
        font-size: 18px;
    }

            </style>
    </head>
    <body> 
  
<h1 style="background-color:black; color:white ;padding: 2px 2px;"><b><center>Donor List</center></b></h1>
  
<%--  
List<User> list=UserDB.getAllRecords();  
request.setAttribute("list",list);  
--%>  

<table border="3" width="100%">  
    
<tr>
   
    <th>first name</th>
    <th>last name</th>
    <th width="140px">date of birth</th>
    <th>age</th>
    <th width="210px">email Id</th>  
    <th width="120px">contact no</th>
    <th>gender</th>
    <th width="110px">blood group</th>
    <th width="140px">last donate date</th>
    <th>city</th>
    <th>Edit</th>
    <th width="80px">Delete</th>
</tr>

                        <%
                         Connection conn;
                         PreparedStatement pst;
                         ResultSet rs;
            
                         Class.forName("com.mysql.cj.jdbc.Driver");
                         conn = DriverManager.getConnection("jdbc:mysql://localhost/blood","root","");
                         
                         String query = "SELECT * FROM blood_donation";
                         Statement st = conn.createStatement();
                        //  st.executeUpdate(query);
                         
                         rs = st.executeQuery(query);
                         while(rs.next())
                         {
                         String id = rs.getString("id");
           
                        %>
                        
                        


<tr>
                        <td><%=rs.getString("fname") %> </td>
                        <td><%= rs.getString("lname") %> </td>
                        <td><%= rs.getString("dob") %> </td>
                        <td><%=rs.getString("age") %> </td>
                        <td><%= rs.getString("email") %> </td>
                        <td><%= rs.getString("contact_no") %> </td>
                        <td><%=rs.getString("gender") %> </td>
                        <td><%= rs.getString("blood_group") %> </td>
                        <td><%= rs.getString("last_donate_date") %> </td>
                        <td><%= rs.getString("city") %> </td>

                        <td><a href="update.jsp?ID=<%= id %>">Edit </a></td>
                        <td><a href="delete.jsp?ID=<%= id %>">Delete</a></td>
                    </tr>
                    
                    <%
                        }
                        %>
</table>  

<br/>
<a href="index.jsp" style="font-size: 21px"><center> back<<< </center></a>
  <div class="con">  </div>
    </body>
</html>
