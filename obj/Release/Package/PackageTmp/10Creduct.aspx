<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="10Creduct.aspx.cs" Inherits="TCPStockManagementSystem._10Creduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="panel1" runat="server"><ContentTemplate>
    <div class="container-sm">
        <div class="card w-50" style="border-width: 30px; border-style: solid; margin: inherit; top: inherit; line-height: 35px; text-align: center; white-space: inherit; clip: rect(auto, auto, auto, auto);">
        <div class="card-body">
        <h5  class="card-header">Add number of kilo's used for daily production &nbsp;&nbsp;<asp:Button ID="Button2" runat="server" Text="Undo" class="btn btn-outline-info" OnClick="Button2_Click" /></h5>
                        <h1 style="font-weight: bolder; text-transform: uppercase; color: #000000;">10C
            </h1>
            <br />
            <div class="card" style="margin: -9px; padding: 8px; background-color: #FFFFCC" >
                <div class="card-body">
             <div class="row">
                <div class="col-md-2">
                    <asp:Label ID="Label1" runat="server" Text="Wash:" Font-Size="Large" Font-Bold></asp:Label>
                </div>
                <div class="col-md-4">
                    <asp:TextBox ID="TextBox2" runat="server" Visible="True" Width="125px" BorderColor="#C48A05" BorderWidth="2px" ReadOnly="True"></asp:TextBox>
                </div>
                 <div class="col-md-3">
                    <asp:Label ID="Label2" runat="server" Text="Non-Wash:" Font-Size="Large" Font-Bold></asp:Label>
                </div>
                <div class="col-md-3">
                    <asp:TextBox ID="TextBox3" runat="server" Visible="True" Width="125px" BorderColor="#C48A05" BorderWidth="2px" ReadOnly="True"></asp:TextBox>
                </div>
            </div>
                </div>
                    </div>
            <br />
             <div class="row">
                <div class="col">
                    <asp:DropDownList ID="DropDownList1" runat="server" class="btn-group btn btn-secondary btn-lg dropdown-toggle">
                        <asp:ListItem Value="">Select Wash Status</asp:ListItem>
                        <asp:ListItem>Wash</asp:ListItem>
                        <asp:ListItem>Non-wash</asp:ListItem>
                    </asp:DropDownList>
     </div>
   </div>
            <br />

                <div class="row">
                <div class="col">
                    <asp:TextBox ID="TextBox1" runat="server" class="form-control form-control-lg" BorderColor="#C48A05" BorderWidth="2px" Content Placeholder="Weight(kg)"></asp:TextBox>
                </div>
            </div>
            <br />
            <asp:Label ID="Label3" runat="server" Visible="False"></asp:Label>
                <div class="row">
                 <div class="col">                    
                     <asp:Button ID="Button1" runat="server" Text="Reduct" OnClick="Button1_Click1" class="btn btn-primary btn-lg"/>
                 </div>
                    </div>
    </div>
    </div>
        </div>   
        </ContentTemplate></asp:UpdatePanel>
</asp:Content>
