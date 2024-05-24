<%@page import="java.sql.*" %> 


<% 
        String id = request.getParameter("ID");
        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost/blood","root","");
        pst = con.prepareStatement("DELETE FROM blood_donation WHERE ID = ?");
        pst.setString(1, id);
        pst.executeUpdate();  
        
        %>
        
        <script>
            
            alert("Record Deletee");
            
            
       </script
       
    <%
        response.sendRedirect("viewUser.jsp");
    %>