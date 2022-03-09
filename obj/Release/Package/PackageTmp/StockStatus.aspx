<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="StockStatus.aspx.cs" Inherits="TCPStockManagementSystem.StockStatus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <div class="container">
        <div class="card">
            <div class="row">
                <center><h2 class="card-header" style="width:auto; background:#800000; color:#ffffff">Stock Availability</h2></center>
            </div>
            <br />
            <div class="row">
                <center><h4>Coco Peat</h4></center>
            </div>
            <br />
            <div class="row">
                <div class="col-sm-6">
                    <center><div class="card border-danger mb-3" style="max-width: 18rem;">
                        <div class="card-header">Wash</div>
                        <div class="card-body text-danger">
                            <h5 class="card-title"><asp:Label ID="cocoPeatWashlbl" runat="server" Text="L"></asp:Label></h5>
                            <p class="card-text">Available in the Stock</p>
                        </div>
                    </div></center>
                </div>
                <div class="col-sm-6">
                    <center><div class="card border-danger mb-3" style="max-width: 18rem;">
                        <div class="card-header">Un Wash</div>
                        <div class="card-body text-danger">
                            <h5 class="card-title"><asp:Label ID="cocoPeatUnWashlbl" runat="server" Text="L"></asp:Label></h5>
                            <p class="card-text">Available in the Stock</p>
                        </div>
                    </div></center>
                </div>
            </div>
            <br />
            <br />
            <div class="row">
                <center><h4>10c</h4></center>
            </div>
            <div class="row">
                <div class="col-sm-6">
                    <center><div class="card border-danger mb-3" style="max-width: 18rem;">
                        <div class="card-header">Wash</div>
                        <div class="card-body text-danger">
                            <h5 class="card-title"><asp:Label ID="Wash10clbl" runat="server" Text="L"></asp:Label></h5>
                            <p class="card-text">Available in the Stock</p>
                        </div>
                    </div></center>
                </div>
                <div class="col-sm-6">
                    <center><div class="card border-danger mb-3" style="max-width: 18rem;">
                        <div class="card-header">Un Wash</div>
                        <div class="card-body text-danger">
                            <h5 class="card-title"><asp:Label ID="UnWash10clbl" runat="server" Text="L"></asp:Label></h5>
                            <p class="card-text">Available in the Stock</p>
                        </div>
                    </div></center>
                </div>
            </div>
            <br />
            <br />
            <div class="row">
                <center><h4>7c</h4></center>
            </div>
            <div class="row">
                <div class="col-sm-6">
                    <center><div class="card border-danger mb-3" style="max-width: 18rem;">
                        <div class="card-header">Wash</div>
                        <div class="card-body text-danger">
                            <h5 class="card-title"<asp:Label ID="Wash7clbl" runat="server" Text="L">Kg</asp:Label></h5>
                            <p class="card-text">Available in the Stock</p>
                        </div>
                    </div></center>
                </div>
                <div class="col-sm-6">
                    <center><div class="card border-danger mb-3" style="max-width: 18rem;">
                        <div class="card-header">Un Wash</div>
                        <div class="card-body text-danger">
                            <h5 class="card-title"><asp:Label ID="UnWash7clbl" runat="server" Text="L"></asp:Label></h5>
                            <p class="card-text">Available in the Stock</p>
                        </div>
                    </div></center>
                </div>
            </div>
        </div>
    </div>
    
    







</asp:Content>
