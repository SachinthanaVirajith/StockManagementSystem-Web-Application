<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="print.aspx.cs" Inherits="TCPStockManagementSystem.print" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Bootsrap/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
           <div class="container" style="margin-top:4.5cm;margin-left:2.0cm;margin-right:2.0cm;margin-bottom:2.2cm">
                       <div class="row" style="margin-left:0.6cm;margin-right:0.5cm">
                           <div class="col" style="margin-top:0.5cm;margin-left:-0.8cm">
                               <asp:Label ID="lblsupplier" runat="server" Text="" Width="7.6cm" Height="3.2cm" Font-Bold Font-Size="25px"></asp:Label>
                           </div>
                           <div class="col" style="margin-top:-0.2cm">
                               <div class="row">
                                   <asp:Label ID="lbldate" runat="server" Text="" Width="5.2cm" Height="1cm" Font-Bold Font-Size="15px"></asp:Label>
                               </div>
                               <div class="row">
                                   <asp:Label ID="lblpaymentmethod" runat="server" Text="" Width="5.2cm" Height="1cm" Font-Bold Font-Size="15px"></asp:Label>
                               </div>
                               <div class="row" style="margin-top:0.4cm">
                                   <asp:Label ID="lblvoucherno" runat="server" Text="" Width="5.2cm" Height="1cm" Font-Bold Font-Size="15px"></asp:Label>
                               </div>
                           </div>
                           <div class="col" style="margin-top:-0.3cm">
                               <div class="row">
                                   <asp:Label ID="lblsupreg" runat="server" Text="" Width="5.2cm" Height="0.7cm" Font-Bold Font-Size="15px"></asp:Label>
                               </div>
                               <div class="row" style="margin-top:0.3cm">
                                   <asp:Label ID="lblcheque" runat="server" Text="" Width="5.2cm" Height="0.7cm" Font-Bold Font-Size="15px"></asp:Label>
                               </div>
                               <div class="row" style="margin-top:0.3cm">
                                   <asp:Label ID="lblconsec" runat="server" Text="" Width="5.2cm" Height="1.4cm" Font-Bold Font-Size="15px"></asp:Label>
                               </div>
                           </div>
                       </div>
                         <div class="row" style="margin-top:1cm;margin-left:-2.5cm">
                             <div class="col">
                                 <asp:Label ID="Label1" runat="server" Text="1" Width="1.4cm" Height="1.5cm" Font-Bold Font-Size="15px"></asp:Label>
                                 <asp:Label ID="lbldate1" runat="server" Text="" Width="3.7cm" Height="1.5cm" Font-Bold Font-Size="15px" > </asp:Label>
                                 <asp:Label ID="lblmat" runat="server" Text="" Width="1.7cm" Height="1.5cm" Font-Bold Font-Size="15px"> </asp:Label>
                                 <asp:Label ID="lblstatus" runat="server" Text="" Width="3.3cm" Height="1.5cm" Font-Bold Font-Size="15px" > </asp:Label>
                                 <asp:Label ID="lblunit" runat="server" Text="" Width="2.5cm" Height="1.5cm" Font-Bold Font-Size="15px" > </asp:Label>
                                 <asp:Label ID="lblquantity" runat="server" Text="" Width="3.3cm" Height="1.5cm" Font-Bold Font-Size="15px" > </asp:Label>
                                 <asp:Label ID="lblrate" runat="server" Text="" Width="2.0cm" Height="1.5cm" Font-Bold Font-Size="15px" > </asp:Label>
                                 <asp:Label ID="lblamt" runat="server" Text="" Width="3.7cm" Height="1.5cm" Font-Bold Font-Size="15px" > </asp:Label>
                             </div>                          
                         </div>
                         <div class="row" style="margin-left:-2.5cm">
                             <div class="col">
                                 <asp:Label ID="Label2" runat="server" Text="2" Width="1.4cm" Height="1.5cm" Font-Bold Font-Size="15px"></asp:Label>
                                 <asp:Label ID="lbldesc" runat="server" Text="" Width="8.3cm" Height="1.5cm" Font-Bold Font-Size="15px" > </asp:Label>
                                 <asp:Label ID="Label6" runat="server" Text="" Width="2.2cm" Height="1.5cm" Font-Bold Font-Size="15px" > </asp:Label>
                                 <asp:Label ID="Label7" runat="server" Text="" Width="2.3cm" Height="1.5cm" Font-Bold Font-Size="15px" > </asp:Label>
                                 <asp:Label ID="Label8" runat="server" Text="" Width="4.0cm" Height="1.5cm" Font-Bold Font-Size="15px" > </asp:Label>
                                 <asp:Label ID="lblreduct" runat="server" Text="-" Width="3.7cm" Height="1.5cm" Font-Bold Font-Size="15px" > </asp:Label>
                             </div>                          
                         </div>
                         <div class="row" style="margin-left:-2.5cm">
                             <div class="col">
                                 <asp:Label ID="Label3" runat="server" Text="3" Width="1.4cm" Height="1.5cm" Font-Bold Font-Size="15px"></asp:Label>
                                 <asp:Label ID="lbldesc1" runat="server" Text="" Width="8.3cm" Height="1.5cm" Font-Bold Font-Size="15px" > </asp:Label>
                                 <asp:Label ID="Label10" runat="server" Text="" Width="2.2cm" Height="1.5cm" Font-Bold Font-Size="15px" > </asp:Label>
                                 <asp:Label ID="Label11" runat="server" Text="" Width="2.3cm" Height="1.5cm" Font-Bold Font-Size="15px" > </asp:Label>
                                 <asp:Label ID="Label12" runat="server" Text="" Width="4.0cm" Height="1.5cm" Font-Bold Font-Size="15px" > </asp:Label>
                                 <asp:Label ID="lbladdi" runat="server" Text="+" Width="3.7cm" Height="1.5cm" Font-Bold Font-Size="15px" > </asp:Label>
                             </div>                          
                         </div>
                        <div class="row" style="margin-top:1.0cm;margin-left:-2.5cm">
                             <div class="col">
                                 <asp:Label ID="Label4" runat="server" Text="" Width="1.4cm" Height="1.5cm" Font-Bold Font-Size="15px"></asp:Label>
                                 <asp:Label ID="Label5" runat="server" Text="" Width="3.7cm" Height="1.5cm" Font-Bold Font-Size="15px" > </asp:Label>
                                 <asp:Label ID="Label9" runat="server" Text="" Width="1.7cm" Height="1.5cm" Font-Bold Font-Size="15px"> </asp:Label>
                                 <asp:Label ID="Label13" runat="server" Text="" Width="3.3cm" Height="1.5cm" Font-Bold Font-Size="15px" > </asp:Label>
                                 <asp:Label ID="Label14" runat="server" Text="" Width="2.5cm" Height="1.5cm" Font-Bold Font-Size="15px" > </asp:Label>
                                 <asp:Label ID="Label15" runat="server" Text="" Width="3.3cm" Height="1.5cm" Font-Bold Font-Size="15px" > </asp:Label>
                                 <asp:Label ID="Label16" runat="server" Text="" Width="2.0cm" Height="1.5cm" Font-Bold Font-Size="15px" > </asp:Label>
                                 <asp:Label ID="Label17" runat="server" Text="" Width="3.7cm" Height="1.5cm" Font-Bold Font-Size="15px" > </asp:Label>
                             </div>                          
                         </div>

            </div>
           </div>
    </form>
    <br />
    <br />
</body>
</html>