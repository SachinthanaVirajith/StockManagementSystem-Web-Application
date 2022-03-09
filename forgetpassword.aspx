<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forgetpassword.aspx.cs" Inherits="TCPStockManagementSystem.forgetpassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Bootsrap/bootstrap.min.css" rel="stylesheet" />
    <link href="Css/Passwordreset.css" rel="stylesheet" />
    <title></title>
</head>
    <body>
<div class="wrapper">
<div id="formContent" class="auto-style1">

<form runat="server">
   <h2 style="color:#3d5c41;">Enter Email to reset your password</h2>
   <br />
   <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter your Email" class="form-control" TextMode="Email" Height="55px" Width="450px"></asp:TextBox>
   <br /><br />
   <asp:Button ID="Button2" runat="server" Text="Send" OnClick="Button2_Click" class="btn btn-warning" Font-Bold="True"/>
</form>
</div>
</div>
</body>
</html>
