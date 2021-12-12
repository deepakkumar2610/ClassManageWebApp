<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" Inherits="ClassManageApp.LoginForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Login</title>
  <%--  <link rel="stylesheet" type="text/css" href="LoginForm.css" />--%>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" />

    <!-- Boostrap cdn Fontawesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css" integrity="sha512-xA6Hp6oezhjd6LiLZynuukm80f8BoZ3OpcEYaqKoCV3HKQDrYjDE1Gu8ocxgxoXmwmSzM4iqPvCsOkQNiu41GA==" crossorigin="anonymous" />

    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script type="text/javascript" src="js/JScript.js" ></script>
    <!-- Material Icons Links -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Baloo+Da+2&display=swap');
        body {
           background-color:rgba(0,50,100,.8);
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" >
        <div class="col-md-4 offset-4 border mt-5 p-3 rounded bg-light ">
            
            <%--<div class=" text-center text-primary "><h5>Admin Login</h5></div>--%>
             <div class="right_logopart d-flex p-2 justify-content-center rounded" style="background-color: rgba(0,50,100,.8); width: 100%; height: 10vh;">
                    <div class="ml-1">
                        <img src="./IMG/krisons.jpg" style="width: 45px; height: auto; border-radius: 50%; border: 2px solid maroon">
                    </div>
                    <div>
                        <div class="ml-2" style="font-size: 2.5rem; font-family: monospace; color: #d9d9d9; text-shadow: 5px 0px 0px maroon;"><b>LogoPart</b></div>
                    </div>
                </div>
            <hr />
            <div class="mb-3">
                <label for="" class="form-label">Username</label>
                <asp:TextBox runat="server" type="text" class="form-control" ID="txtUserName" aria-describedby="emailHelp"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvUser" ErrorMessage="Please enter Username" ControlToValidate="txtUserName" runat="server" />
                <%--<div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>--%>
            </div>
            <div class="mb-3">
                <label for="exampleInputPassword1" class="form-label">Password</label>
                <asp:TextBox runat="server"  TextMode="Password" class="form-control" ID="txtPWD" aria-describedby="passwordHelp"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvPWD" runat="server" ControlToValidate="txtPWD" ErrorMessage="Please enter Password"/>
            </div>
            <hr />
            <asp:Button runat="server" ID="btnSubmit" class="btn btn-success" OnClick="btnSubmit_Click" Text="Login" />
            </div>

    </form>
</body>
</html>
