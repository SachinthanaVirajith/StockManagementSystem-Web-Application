<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Userlogin.aspx.cs" Inherits="TCPStockManagementSystem.Userlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Bootsrap/bootstrap.min.css" rel="stylesheet" />
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> 
    <link href="Css/login.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 129px;
            height: 50px;
            margin-top:20px;
        }
        .auto-style2 {
            left: 0px;
            top: 0px;
        }
    :-ms-input-placeholder { 
        text-align: center;   
    }
    ::-webkit-input-placeholder { 
        text-align: center;     
    }
    </style>
</head>

<body>
<div class="wrapper fadeInDown">
<div id="formContent">
<div class="fadeIn first">
   <img src="images/transperent-full.png" style="width: 129px; height: 50px; margin-top: 20px; right: 150px; position: relative; left: 150px;"/>
    <br />
    <br />
</div>
<form runat="server">
   <div><asp:TextBox ID="TextBox1" runat="server" style="text-align:center" class="form-control" placeholder="UserID"  Width="416px" Height="60px" BackColor="White" AutoComplete="off"></asp:TextBox></div>
   <div style="position: relative; left: 6px; text-align: center;"><asp:TextBox ID="TextBox2" runat="server" style="text-align:center" class="form-control" placeholder="Password"  TextMode="Password" Width="416px" Height="60px" BackColor="White"></asp:TextBox><br /></div>
   <div style="position: relative; right: 100px; left: 100px"><asp:Button ID="Btnlogin" runat="server" Text="Log In" OnClick="Button1_Click" class="fadeIn fourth" /></div>
</form>

<div id="formFooter">
  <a class="underlineHover" href="forgetpassword.aspx">Forgot Password?</a>
</div>
</div>
</div>
</body>
</html>
