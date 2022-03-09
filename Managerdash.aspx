<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Managerdash.aspx.cs" Inherits="TCPStockManagementSystem.Managerdash" %>
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
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Text="Home" class="btn btn-primary" Width="74px" OnClick="Button1_Click" />
                <asp:Button ID="Button3" runat="server" Text="Log Out" class="btn btn-danger" Width="77px" OnClick="Button3_Click"/>
            </div>
            </div>
            </div>
            <div class="title">
                <h1>MANAGER DASHBOARD</h1>
            </div>                 
                <div class="row">
                    <div  class="col-md-4">
                        <div class="card text-center">
                        <div class="card-body">
                            <h5 class="card-title">Give a Rate</h5>
                            <p class="card-text">(Press Enter to Give a Rate for Newly Arrival Stock)</p>
                            <asp:Button ID="Button4" runat="server" Text="Enter" class="btn btn-primary" OnClick="Button4_Click"/>
                        </div>
                    </div>
                        </div>

                    <div  class="col-md-4">
                    <div class="card text-center">
                        <div class="card-body">
                            <h5 class="card-title">View Stock</h5>
                            <p class="card-text">(Press Enter to View Avaiable Items in the Stock)</p>
                            <asp:Button ID="Button2" runat="server" Text="Enter" class="btn btn-secondary" OnClick="Button2_Click"/>
                        </div>
                    </div>
                </div>

                    <div  class="col-md-4">
                        <div class="card text-center">
                        <div class="card-body">
                            <h5 class="card-title">Check Arrival History</h5>
                            <p class="card-text">(Press Enter to Check Arrival Items by Date)</p>
                            <asp:Button ID="Button5" runat="server" Text="Enter" class="btn btn-info" OnClick="Button5_Click"/>
                        </div>
                    </div>
                        </div>
                </div>

                <div class="row">
                    <div  class="col-md-4">
                        <div class="card text-center">
                        <div class="card-body">
                            <h5 class="card-title">View Usage History</h5>
                            <p class="card-text">(Press Enter to View Usage History by Date)</p>
                            <asp:Button ID="Button6" runat="server" Text="Enter" class="btn btn-primary" OnClick="Button6_Click"/>
                        </div>
                    </div>
                        </div>

                    <div  class="col-md-4">
                    <div class="card text-center">
                        <div class="card-body">
                            <h5 class="card-title">Search a Bill</h5>
                            <p class="card-text">(Press Enter to Search Old Bills)</p>
                            <asp:Button ID="Button7" runat="server" Text="Enter" class="btn btn-secondary" OnClick="Button7_Click"/>
                        </div>
                    </div>
                </div>

                    <div  class="col-md-4">
                        <div class="card text-center">
                        <div class="card-body">
                            <h5 class="card-title">Correction Control</h5>
                            <p class="card-text">(Press Enter to Do Any Correction Throught the System)</p>
                            <asp:Button ID="Button8" runat="server" Text="Enter" class="btn btn-warning" OnClick="Button8_Click"/>
                        </div>
                    </div>
                        </div>
                </div>
    </section>
</asp:Content>
