<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="TCPStockManagementSystem.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Bootsrap/bootstrap.min.css" rel="stylesheet" />
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> 
</head>
<body style="background-image: url('images/166705922_492538218824838_5828692693223133337_n.jpg'); background-repeat: repeat; background-attachment: fixed";>
    <form id="form1" runat="server">
        <div class="container-fluid">
           <br /><h1 style="font-weight:bolder; text-align:center; font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif, sans-serif, Arial, sans-serif; color: #dc6c41; text; font-size: 100px;">TCP Exports Pvt Ltd</h1>
            <h1 style="font-weight:bolder; text-align:center; font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif, sans-serif, Arial, sans-serif; color: #50E475; text; font-size: 100px;">(STOCK MANAGEMENT SYSTEM)</h1>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <center><asp:Button ID="Button1" runat="server" Text="Open"  class="btn btn-success btn-lg" Width="220px" Height="60px" OnClick="Button1_Click"/></center>        
          </div>
    </form>
</body>
</html>
