<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>


<%
    if (request.getParameter("submit") != null) {
        String id = request.getParameter("ID");
        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        String dob = request.getParameter("dob");
        String age = request.getParameter("age");
        String email = request.getParameter("email");
        String contact_no = request.getParameter("contact_no");
        String gender = request.getParameter("gender");
        String last_donate_date = request.getParameter("last_donate_date");
        String blood_group = request.getParameter("blood_group");
        String city = request.getParameter("city");

        Connection conn;
        PreparedStatement pst;
        ResultSet rs;

        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost/blood","root","");
        pst = conn.prepareStatement("update blood_donation set fname = ? ,lname = ?,dob = ?,age = ?,email = ?,contact_no = ?,gender = ?,last_donate_date = ?,blood_group = ?,city = ? where ID=?");
        pst.setString(1, fname);
        pst.setString(2, lname);
        pst.setString(3, dob);
        pst.setString(4, age);
        pst.setString(5, email);
        pst.setString(6, contact_no);
        pst.setString(7, gender);
        pst.setString(8, last_donate_date);
        pst.setString(9, blood_group);
        pst.setString(10, city);
        pst.setString(11, id);
        pst.executeUpdate();
        %>
            
            <script>
               
                alert("Record Update Succesfully");
               window.location.href = "http://localhost:8080/final/viewUser.jsp";
            </script>
            <%    
        }
       
    %>

<!DOCTYPE html>
<html>
    <head>
        <title>update</title>
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        <style>
            *{
                font-family: Georgia, serif;
                /*color:black;*/
            }
            body{
                background-image: url("1.webp");
                background-size: cover;
                background-position: center;
                background-attachment: fixed;
                background-repeat: no-repeat;

            }
            .box{
                display: flex;
                justify-content: center;
                align-items: center;
                min-height: 90vh;
            }
            .container{
                width: 410px;
                display: flex;
                flex-direction: column;
                padding: 0 70px 0 30px;
                background: rgba(0,0,0,0.6);
                margin-bottom: 20px;
            }

            span{
                font-size: 16px;
                display: flex;
                justify-content: center;
                padding: 10px 0 10px 0;
                height: 20px;
                color:#fff;
                margin-top: 20px
            }
            header{
                color: whitesmoke;
                font-size: 35px;
                display: flex;
                justify-content: center;
                padding: 20px 0 0 0;

            }
            
            .input-field .input{
                height: 45px;
                width: 100%;
                border: none;
                border-radius: 30px;
                font-size: 15px;
                padding: 0 0 0 45px;
                background: rgba(255,255,255,0.6);
                outline: none;
            }
            i{
                position: relative;
                top: -33px;
                left: 17px;
            }
            ::-webkit-input-placeholder{
            }
            .submit{
                border: none;
                border-radius: 30px;
                font-size: 15px;
                height: 45px;
                outline: none;
                width: 110%;
                color: black;
                background: rgba(255,255,255,0.8);
                cursor: pointer;
                transition: .3s ;
            }
            .submit:hover{
                box-shadow: 1px 5px 7px 1px rgba(0, 0, 0, 0.9);
            }
            .two-col{
                display: flex;
                flex-direction: row;
                justify-content: space-between;
                font-size: 16px;
                margin-top: 25px;
                color:#fff;
            }
            .one{
                display: flex;

            }
            label a{
                text-decoration: none;
            }

            .m{
                margin-top: 10px
            }
        </style>

    </head>

    <body>
        <div class="box">
            <div class="container">

                <header><b><center>Update Page for donor</center></b></header><br>


                <form method="post">
                    <%
                         Connection conn;
                         PreparedStatement pst;
                         ResultSet rs;
            
                         Class.forName("com.mysql.cj.jdbc.Driver");
                         conn = DriverManager.getConnection("jdbc:mysql://localhost/blood","root","");
                         
                          String id = request.getParameter("ID");
                         
                          pst = conn.prepareStatement("select * from blood_donation where ID = ?");
                         pst.setString(1, id);
                         rs = pst.executeQuery();
                         while(rs.next())
                         {
                        
           
                        %>
                    <br><br>
                    <div class="input-field" style="margin-top:-15px">
                        <input type="text" class="input" name="fname" value="<%= rs.getString("fname") %>" placeholder="Enter your first name" id="fname"><br>
                        <i class='bx bx-user' ></i>
                    </div>

                    <div class="input-field">
                        <input type="text" class="input" name="lname" value="<%= rs.getString("lname") %>" placeholder="Enter your last name" id="lname"><br>
                        <i class='bx bx-user' ></i>
                    </div>

                    <div class="input-field">
                        <input type="text" class="input" name="dob" value="<%= rs.getString("dob") %>" placeholder="Enter your date of birth" id="dob" onfocus="year - month - date"><br>
                        <i class='bx bx-calendar' ></i>
                    </div>

                    <div class="input-field">
                        <input type="text" class="input" name="age" value="<%= rs.getString("age") %>" placeholder="Enter your age" id="age"><br>
                        <i class='bx bx-user' ></i>
                    </div>

                    <div class="input-field">
                        <input type="text" class="input" name="email" value="<%= rs.getString("email") %>" placeholder="Enter your email" id="email"><br>
                        <i class='bx bx-message' ></i>
                    </div>

                    <div class="input-field">
                        <input type="text" class="input" name="contact_no" value="<%= rs.getString("contact_no") %>" placeholder="Enter your contact no." id="contact_no" maxlength="10"><br>
                        <i class='bx bx-phone' ></i>
                    </div>

                    <div class="input-field ">  
                        <input type="text" class="input" id="gender" name="gender" value="<%= rs.getString("gender") %>" placeholder="Enter your gender">
                        <i class='bx bx-user' ></i>
                    </div>

                    <div>    

                    <div class="input-field" > 
                        <input type="text" class="input" id="blood_group" name="blood_group" value="<%= rs.getString("blood_group") %>" placeholder="Enter your Bloodgroup">
                        <i class='bx bx-droplet' ></i>
                    </div>
                        
                    


                    <div class="input-field" style="margin-bottom:0px">
                        <input type="text" class="input" name="last_donate_date" value="<%= rs.getString("last_donate_date") %>" placeholder="Enter your last donate date" id="last_donate_date"><br>
                        <i class='bx bx-calendar' ></i>
                    </div>

                    <div class="input-field">
                        <input type="text" class="input" name="city" value="<%= rs.getString("city") %>" placeholder="Enter your city" id="city">
                        <i class='bx bx-map' ></i>
                    </div>
                    
                    <div class="input-field">
                       
                        <a href="viewUser.jsp"><input type="submit" name="submit" class="submit"  value="submit" id="submit"></a>
                    </div>
                    <br>
                    <a href="viewUser.jsp" style="font-size: 21px; color: white;"><center> back<<< </center></a><br>

                    <% 
                        }
                    %>
                </form>
<!--                <a href="index.jsp" style="font-size: 18px; color: white;"><center> back<<< </center></a>-->
            </div>
        </div>
    </div>
</body>
</html>
