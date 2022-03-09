<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="StockList.aspx.cs" Inherits="TCPStockManagementSystem.StockList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="container">
        <div class="row">
            <div class="col-md-12 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center><h3><b>New Arrival Stock</b></h3></center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center><asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder></center>
                            </div>
                        </div>

                        <asp:Table ID="Table1" runat="server" CssClass="auto-style1" Width="530px" Height="309px">
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server"><h5>Date : </h5></asp:TableCell>
                                <asp:TableCell runat="server"><h5>:</h5></asp:TableCell>
                                <asp:TableCell runat="server"><asp:Label ID="lblDate" runat="server" Text="Label"></asp:Label></asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server"><h5>Vehicle Number : </h5></asp:TableCell>
                                <asp:TableCell runat="server"><h5>:</h5></asp:TableCell>
                                <asp:TableCell runat="server"><asp:Label ID="lblVehNum" runat="server" Text="Label"></asp:Label></asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server"><h5>Supplier Name : </h5></asp:TableCell>
                                <asp:TableCell runat="server"><h5>:</h5></asp:TableCell>
                                <asp:TableCell runat="server"><asp:Label ID="lblSupplierName" runat="server" Text="Label"></asp:Label></asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server"><h5>Material : </h5></asp:TableCell>
                                <asp:TableCell runat="server"><h5>:</h5></asp:TableCell>
                                <asp:TableCell runat="server"><asp:Label ID="lblMaterial" runat="server" Text="Label"></asp:Label></asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server"><h5>Status : </h5></asp:TableCell>
                                <asp:TableCell runat="server"><h5>:</h5></asp:TableCell>
                                <asp:TableCell runat="server"><asp:Label ID="lblStatus" runat="server" Text="Label"></asp:Label></asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server"><h5>Full Weight : </h5></asp:TableCell>
                                <asp:TableCell runat="server"><h5>:</h5></asp:TableCell>
                                <asp:TableCell runat="server"><asp:Label ID="lblFullWeight" runat="server" Text="Label"></asp:Label></asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server"><h5>Sample Weight : </h5></asp:TableCell>
                                <asp:TableCell runat="server"><h5>:</h5></asp:TableCell>
                                <asp:TableCell runat="server"><asp:Label ID="lblSampleWeight" runat="server" Text="Label"></asp:Label></asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server"><h5>Wastage Weight : </h5></asp:TableCell>
                                <asp:TableCell runat="server"><h5>:</h5></asp:TableCell>
                                <asp:TableCell runat="server"><asp:Label ID="lblWastageWeight" runat="server" Text="Label"></asp:Label></asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server"><h5>Net Weight : </h5></asp:TableCell>
                                <asp:TableCell runat="server"><h5>:</h5></asp:TableCell>
                                <asp:TableCell runat="server"><asp:Label ID="lblNetWeight" runat="server" Text="Label"></asp:Label></asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server"><h5>Volume : </h5></asp:TableCell>
                                <asp:TableCell runat="server"><h5>:</h5></asp:TableCell>
                                <asp:TableCell runat="server"><asp:Label ID="lblVolume" runat="server" Text="Label"></asp:Label></asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server"><h5>Sand Weight : </h5></asp:TableCell>
                                <asp:TableCell runat="server"><h5>:</h5></asp:TableCell>
                                <asp:TableCell runat="server"><asp:Label ID="lblSandWeight" runat="server" Text="Label"></asp:Label></asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server"><h5>Average Moisture : </h5></asp:TableCell>
                                <asp:TableCell runat="server"><h5>:</h5></asp:TableCell>
                                <asp:TableCell runat="server"><asp:Label ID="lblAverageMoisture" runat="server" Text="Label"></asp:Label></asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server"><h5>Kohu Weight : </h5></asp:TableCell>
                                <asp:TableCell runat="server"><h5>:</h5></asp:TableCell>
                                <asp:TableCell runat="server"><asp:Label ID="lblKohuWeight" runat="server" Text="Label"></asp:Label></asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server"><h5>Others : </h5></asp:TableCell>
                                <asp:TableCell runat="server"><h5>:</h5></asp:TableCell>
                                <asp:TableCell runat="server"><asp:Label ID="lblOthers" runat="server" Text="Label"></asp:Label></asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server"><h5>Checked Bags : </h5></asp:TableCell>
                                <asp:TableCell runat="server"><h5>:</h5></asp:TableCell>
                                <asp:TableCell runat="server"><asp:Label ID="lblCheckedBags" runat="server" Text="Label"></asp:Label></asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server"><h5>Rejected Bags : </h5></asp:TableCell>
                                <asp:TableCell runat="server"><h5>:</h5></asp:TableCell>
                                <asp:TableCell runat="server"><asp:Label ID="lblRejectedBags" runat="server" Text="Label"></asp:Label></asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server"><h5>Sample Wastage : </h5></asp:TableCell>
                                <asp:TableCell runat="server"><h5>:</h5></asp:TableCell>
                                <asp:TableCell runat="server"><asp:Label ID="lblSampleWastage" runat="server" Text="Label"></asp:Label></asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server"><h5>Wastage Presentage : </h5></asp:TableCell>
                                <asp:TableCell runat="server"><h5>:</h5></asp:TableCell>
                                <asp:TableCell runat="server"><asp:Label ID="lblWastagePresentage" runat="server" Text="Label"></asp:Label></asp:TableCell>
                            </asp:TableRow>
                            
                        </asp:Table>

                        <div class="row">
                            <div class="col">
                                <center><h4>Add Unit Prize</h4></center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center><hr /></center>
                            </div>
                        </div>
                        <div class="row g-3">

                            <div class="col-sm">
                                <asp:Label ID="Label1" runat="server" Text="Label"><h5>Rate</h5></asp:Label>
                            </div>
                            <div class="col-sm-7">
                                <asp:TextBox ID="ratetxt" class="form-control" runat="server" BorderColor="Maroon" required></asp:TextBox>
                            </div>
                            <div class="d-grid col-sm mx-auto">
                                <asp:Button ID="Button1" runat="server" class="btn btn-primary" Text="Calculate" OnClick="Button1_Click" />
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-sm-4">
                                <asp:Label ID="billMateriallbl2" runat="server" Text="Label">Material</asp:Label>    
                            </div>
                            <div class="col-sm-4">
                                <asp:Label ID="washStatuslbl2" runat="server" Text="Label">Wash Status</asp:Label>
                                
                            </div>
                             <div class="col-sm-4">
                                <asp:Label ID="acceptBaglbl2" runat="server" Text="Label">Accepted Bag</asp:Label>
                                
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-4">
                                <asp:TextBox ID="materialtxt2" runat="server" class="form-control" ReadOnly="true" BorderColor="Maroon"></asp:TextBox>
                            </div>
                            <div class="col-sm-4">
                                <asp:TextBox ID="washStatustxt2" runat="server" class="form-control" ReadOnly="true" BorderColor="Maroon"></asp:TextBox>
                            </div>
                            <div class="col-sm-4">
                                <asp:TextBox ID="acceptBagtxt2" runat="server" class="form-control" ReadOnly="true" BorderColor="Maroon"></asp:TextBox>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-sm-4">
                                <asp:Label ID="netWeightlbl2" runat="server" Text="Label">Net Weight</asp:Label>
                            </div>
                            <div class="col-sm-4">
                            </div>
                            <div class="col-sm-4">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-4">
                                <asp:TextBox ID="netWeighttxt2" runat="server" class="form-control" ReadOnly="true" BorderColor="Maroon"></asp:TextBox>
                            </div>
                            <div class="col-sm-4">
                                <asp:TextBox ID="ratetxt2" runat="server" class="form-control" ReadOnly="true" BorderColor="Maroon"></asp:TextBox>
                            </div>
                            <div class="col-sm-4"> 
                                <asp:Label ID="amountlbl2" runat="server" Text="Label"><h4>Amount</h4></asp:Label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-4">
                            </div>
                            <div class="col-sm-4">    
                            </div>
                            <div class="col-sm-4">
                                <asp:TextBox ID="amounttxt" runat="server" class="form-control form-control-lg" ReadOnly="true" BorderColor="Maroon"></asp:TextBox>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-sm-4">
                            </div>
                            <div class="col-sm-4">
                            </div>
                            <div class="col-sm-4 d-grid mx-auto">
                                <asp:Button ID="Button2" class="btn btn-primary" runat="server" Text="Submit" OnClick="Button2_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


</asp:Content>
