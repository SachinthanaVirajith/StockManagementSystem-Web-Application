<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Qcdash.aspx.cs" Inherits="TCPStockManagementSystem.Qcdash" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="Css/reduction.css" rel="stylesheet" />
    <section id="facilities">
        <div class="container">
           <div class="row">
                 <div class="col-md-4" style="font-weight:bold">
                  &nbsp;&nbsp;<a>Welocme </a><asp:Label ID="Label1" runat="server"></asp:Label><a> !!</a></div>
            <div class="col-md-4">
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Text="Home" class="btn btn-primary" Width="74px" OnClick="Button1_Click"/>
                <asp:Button ID="Button3" runat="server" Text="Log Out" class="btn btn-danger" Width="77px" OnClick="Button3_Click1"/>
            </div>
            </div>
            </div>
            <div class="title">
                <h1>QC DASHBOARD</h1>
            </div>                 
                <div class="row">
                    <div  class="col-md-4">
                        <div class="card text-center">
                        <div class="card-body">
                            <h5 class="card-title">Add New Item</h5>
                            <p class="card-text">(Press Enter to Add New Item to Stock)</p>
                            <asp:Button ID="Button4" runat="server" Text="Enter" class="btn btn-primary" OnClick="Button4_Click1"/>
                        </div>
                    </div>
                        </div>

                    <div  class="col-md-4">
                    <div class="card text-center">
                        <div class="card-body">
                            <h5 class="card-title">Product Reduction</h5>
                            <p class="card-text">(Press Enter to Reduct Daily Using Items from Stock)</p>
                            <asp:Button ID="Button2" runat="server" Text="Enter" class="btn btn-secondary" OnClick="Button2_Click1"/>
                        </div>
                    </div>
                </div>

                    <div  class="col-md-4">
                        <div class="card text-center">
                        <div class="card-body">
                            <h5 class="card-title">Paid Out Pool</h5>
                            <p class="card-text">(Press Enter to Check Paid Status and Release a Lorry)</p>
                            <asp:Button ID="Button5" runat="server" Text="Enter" class="btn btn-info" OnClick="Button5_Click1"/>
                        </div>
                    </div>
                        </div>
                </div>
    </section>
</asp:Content>
