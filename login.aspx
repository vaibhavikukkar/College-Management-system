<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="College_Management.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .login{
            border: 1px solid black;
            width: 400px;
            height: 500px;
            background-image: url('college.jpg');
            color: white;
            border-radius: 20px;
            box-shadow: 0px 0px 20px rgba(0,0,0,0.75);
            background-size: cover;
            background-position: center;
            overflow: hidden;
        }

        form{
            display: block;
            box-sizing: border-box;
            padding: 40px;
            width: 100%;
            height:100%;
            backdrop-filter: brightness(40%);
            flex-direction: column;
            display: flex;
            gap: 5px;
        }

        h1{
            font-weight: normal;
            font-size: 24px;
            text-shadow: 0px 0px 2px rgba(0,0,0,0.5);
            margin-bottom: 60px;
        }

        label{
            color: rgba(255,255,255,0.8);
            text-transform: uppercase;
            font-size: 10px;
            letter-spacing: 2px;
            padding-left: 10px;
        }

        input{
            background: rgba(255,255,255,0.3);
            height: 40px;
            line-height: 40px;
            border-radius: 20px;
            padding: 0px 20px;
            border: none;
            margin-bottom: 20px;
            color: white;
        }

        button{
            background:rgba(45,126,231);
            height:40px;
            line-height: 40px;
            border-radius: 40px;
            border: none;
            margin: 10px 0px;
            box-shadow: 0px 0px 5px rgba(0,0,0,0.3);
            font-size: 12px;
            text-transform: uppercase;
        }
    </style>
</head>
<body>
    <form action="Data.html" onsubmit="return authenticate()">
        <div>
            <h1>LOG IN</h1>
      <label for="username">Username</label>
      <input type="text" placeholder="Enter Username" name="username" required/>
      <label for="password">Password</label>
      <input type="password" placeholder="Enter Password" name="password" required/>
      <button type="submit">Submit</button>
        </div>
    </form>
        <script>
      function authenticate(){
        var authorised;
        
        //get input values
        var username = document.getElementById("username").value;
        var password = document.getElementById("password").value;
        
        //check to see if the password and username match
        if(username == "vaibhu" && password == "121103"){
          authorised = true;
        }else{ // username or password do not match
          authorised = false;
          //alert user
          alert("Sorry, password is incorrect.");
        }
        //return result
        return authorised;
      }
        </script>
</body>
</html>
