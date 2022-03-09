<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Resetpassword.aspx.cs" Inherits="TCPStockManagementSystem.Resetpassword" %>

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
   <h2 style="color:#3d5c41;">Reset Password</h2>
   <br />
   <asp:TextBox ID="TextBox1" runat="server" placeholder="New Password" class="form-control" TextMode="Password" Height="50px"></asp:TextBox>
    <br />
    <asp:TextBox ID="TextBox2" runat="server" placeholder="Confirm Password" class="form-control" TextMode="Password" Height="50px" ></asp:TextBox>
   <br />
    <div>
   <asp:Button ID="Button1" runat="server" Text="Reset" class="btn btn-warning" Font-Bold="True" OnClick="Button1_Click"/>
    </div>
</form>
</div>
</div>
</body>
</html>