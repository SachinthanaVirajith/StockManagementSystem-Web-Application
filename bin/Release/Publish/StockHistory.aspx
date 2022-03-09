<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="StockHistory.aspx.cs" Inherits="TCPStockManagementSystem.StockHistory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="container">
        <div class="card">
            <div class="row">
                <center><h2 class="card-header" style="width:auto; background:#800000; color:#ffffff">Stock History</h2></center>
            </div>
            <br />
            <div class="row">
                <div class="col-sm-4">                    
                    <center><asp:Label ID="Label2" runat="server" Text="Label">Material</asp:Label><br />
                    <asp:dropdownlist id = "materialtxt" runat="server" class="custom-select mr-sm-2" AutoPostBack="true" required OnSelectedIndexChanged="materialtxt_SelectedIndexChanged1">
                    </asp:dropdownlist></center>               
                </div>
                <div class="col-sm-4">                    
                    <center><asp:Label ID="Label1" runat="server" Text="Label">Wash Status</asp:Label><br />
                    <asp:dropdownlist id = "washStatustxt" runat="server" class="custom-select mr-sm-2" AutoPostBack="true" required OnSelectedIndexChanged="washStatustxt_SelectedIndexChanged">
                        <asp:ListItem>Wash</asp:ListItem>
                        <asp:ListItem>Non-Wash</asp:ListItem>
                    </asp:dropdownlist></center>               
                </div>
                <div class="col-sm-4">
                    <asp:Button ID="Button1" runat="server" Text="Button" class="btn btn-primary" OnClick="Button1_Click"/>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4">
                    <center><asp:TextBox ID="startDatetxt" runat="server" required></asp:TextBox></center>
                </div>
                <div class="col-sm-4">
                    <center><asp:TextBox ID="endDatetxt" runat="server" required></asp:TextBox></center>
                </div>

            </div>
            <br />
            <div class="row">
                <div class="col">
                    <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
