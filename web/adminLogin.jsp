<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Login</title>
                <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>

        <style>
             *{
            font-family: Georgia, serif;
            color:black;
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
            width: 360px;
            display: flex;
            flex-direction: column;
            padding: 0 60px 0 20px;
            background: rgba(0,0,0,0.6);

        }
/*        span{
            font-size: 16px;
            display: flex;
            justify-content: center;
            padding: 30px 0 30px 0;
            height: 20px;
            color:#fff;
            margin-top: 20px
        }*/
        header{
            font-size: 40px;
            display: flex;
            justify-content: center;
            padding: 45px 0 35px 0;
            color:#fff;
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
       
        .submit{
            border: none;
            border-radius: 30px;
            font-size: 18px;
            height: 45px;
            outline: none;
            width: 110%;
            color: black;
            text-align: center;
            background: rgba(255,255,255,0.7);
            cursor: pointer;
            transition: .3s ;
        }
        .submit:hover{
            box-shadow: 1px 5px 7px 1px rgba(0, 0, 0, 0.9);
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

        <div class="top">
            <!--<span>Have an account?</span>-->
            <header>&nbsp;&nbsp;Admin Login</header>
        </div>
        
        <form method="post" action="login" style="height:240px">
        
        <div class="input-field">
            <input type="text" class="input" name="username" placeholder="Username" id="userName"><br>
            <i class='bx bx-user' ></i>
        </div>

        <div class="input-field">
            <input type="Password" class="input" name="password" placeholder="Password" id="pass"><br>
            <i class='bx bx-lock-alt'></i>
        </div>

       <div class="input-field">
            <input type="text" class="submit" name="submit" onclick="a()" value="submit" id="submit"><br>
        </div>
            
        </form>
    </div>
</div>          
</body>
</html>

<script type="text/javascript">
    function a() {
        var userName = document.getElementById("userName").value;
        var pass = document.getElementById("pass").value;
        console.log(userName);
        console.log(pass);
        if (userName === "urvi" && pass === "189") {
            alert("loging successfully");
            window.location.href = "http://localhost:8080/final/viewUser.jsp";
        } else {
            alert("worng userID & Password");
        }
    }
</script>
