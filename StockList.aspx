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
                     <div class="row">
                            <center><h2 class="card-header" style="width:auto; background:#800000; color:#ffffff">New Stock Details</h2></center>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-sm-4">
                                <asp:Label ID="Label3" runat="server" Text="Label" Font-Bold>Bill Number</asp:Label>    
                            </div>
                            <div class="col-sm-4">
                                <asp:Label ID="datelbl" runat="server" Text="Date" Font-Bold></asp:Label>   
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-4">
                                <asp:TextBox ID="billNumtxt" runat="server" class="form-control" BorderColor="Maroon" ReadOnly="true"></asp:TextBox>
                            </div>
                            <div class="col-sm-4">
                                <asp:TextBox ID="datetxt" runat="server" class="form-control" BorderColor="Maroon" ReadOnly="true"></asp:TextBox>
                            </div>
                        </div>
                        <br />
                       <div class="row">
                            <div class="col-sm-8">
                                <asp:Label ID="Label2" runat="server" Text="Label" Font-Bold>Seller Name</asp:Label>    
                            </div>
                            <div class="col-sm-4">
                                <asp:Label ID="Label5" runat="server" Text="Label" Font-Bold>Vehicle Number</asp:Label>    
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-8">
                                <asp:TextBox ID="sellerNametxt" runat="server" class="form-control" BorderColor="Maroon" ReadOnly="true"></asp:TextBox>
                            </div>
                            <div class="col-sm-4">
                                <asp:TextBox ID="vehicleNumbertxt" runat="server" class="form-control" BorderColor="Maroon" ReadOnly="true"></asp:TextBox>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-sm-3">
                                <asp:Label ID="materiallbl" runat="server" Text="Label" Font-Bold>Material</asp:Label>   
                            </div>
                            <div class="col-sm-3">
                                <asp:Label ID="washStatuslbl" runat="server" Text="Label" Font-Bold>Wash Status</asp:Label>   
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-3">
                                <asp:TextBox ID="materialtxt" runat="server" class="form-control" BorderColor="Maroon" ReadOnly="true"></asp:TextBox>
                            </div>
                            <div class="col-sm-3">
                                <asp:TextBox ID="washStatustxt" runat="server" class="form-control" BorderColor="Maroon" ReadOnly="true"></asp:TextBox>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-sm-3">
                                <asp:Label ID="Label6" runat="server" Text="Label" Font-Bold>Full Weight</asp:Label>    
                            </div>
                            <div class="col-sm-3">
                                <asp:Label ID="Label7" runat="server" Text="Label" Font-Bold>Sample Weight</asp:Label>    
                            </div>
                            <div class="col-sm-3">
                                <asp:Label ID="Label8" runat="server" Text="Date" Font-Bold>Sample Wastage Weight</asp:Label>   
                            </div>
                            <div class="col-sm-3">
                                <asp:Label ID="Label9" runat="server" Text="Date" Font-Bold>Total Wastage Weight</asp:Label>   
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-3">
                                <asp:TextBox ID="fullWeighttxt" runat="server" class="form-control" BorderColor="Maroon" ReadOnly="true"></asp:TextBox>
                            </div>
                            <div class="col-sm-3">
                                <asp:TextBox ID="sampleWeighttxt" runat="server" class="form-control" BorderColor="Maroon" ReadOnly="true"></asp:TextBox>
                            </div>
                            <div class="col-sm-3">
                                <asp:TextBox ID="sampleWastagetxt" runat="server" class="form-control" BorderColor="Maroon" ReadOnly="true"></asp:TextBox>
                            </div>
                            <div class="col-sm-3">
                                <asp:TextBox ID="wastageWeighttxt" runat="server" class="form-control" BorderColor="Maroon" ReadOnly="true"></asp:TextBox>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-sm-3">
                                <asp:Label ID="Label10" runat="server" Text="Label" Font-Bold>Sand Weight</asp:Label>    
                            </div>
                            <div class="col-sm-3">
                                <asp:Label ID="Label11" runat="server" Text="Label" Font-Bold>Net Weight</asp:Label>    
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-3">
                                <asp:TextBox ID="sandWeighttxt" runat="server" class="form-control" BorderColor="Maroon" ReadOnly="true"></asp:TextBox>
                            </div>
                            <div class="col-sm-3">
                                <asp:TextBox ID="netWeighttxt" runat="server" class="form-control" BorderColor="Maroon" ReadOnly="true" Font-Bold BackColor="#99CCFF"></asp:TextBox>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-sm-3">
                                <asp:Label ID="Label12" runat="server" Text="Label" Font-Bold>Average Moisture</asp:Label>    
                            </div>
                            <div class="col-sm-3">
                                <asp:Label ID="Label13" runat="server" Text="Label" Font-Bold>Coir Weight</asp:Label>    
                            </div>
                            <div class="col-sm-3">
                                <asp:Label ID="Label14" runat="server" Text="Label" Font-Bold>Volume (1 Kg)</asp:Label>    
                            </div>
                            <div class="col-sm-3">
                                <asp:Label ID="Label15" runat="server" Text="Label" Font-Bold>Average EC</asp:Label>    
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-3">
                                <asp:TextBox ID="averageMoisturetxt" runat="server" class="form-control" BorderColor="Maroon" ReadOnly="true"></asp:TextBox>
                            </div>
                            <div class="col-sm-3">
                                <asp:TextBox ID="coirWeighttxt" runat="server" class="form-control" BorderColor="Maroon" ReadOnly="true"></asp:TextBox>
                            </div>
                            <div class="col-sm-3">
                                <asp:TextBox ID="volumetxt" runat="server" class="form-control" BorderColor="Maroon" ReadOnly="true"></asp:TextBox>
                            </div>
                            <div class="col-sm-3">
                                <asp:TextBox ID="averageEctxt" runat="server" class="form-control" BorderColor="Maroon" ReadOnly="true"></asp:TextBox>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-sm-3">
                                <asp:Label ID="Label16" runat="server" Text="Label" Font-Bold>Number of Checked Bag</asp:Label> 
                            </div>
                            <div class="col-sm-3">
                                <asp:Label ID="Label17" runat="server" Text="Label" Font-Bold>Number of Rejected Bag</asp:Label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-3">
                                <asp:TextBox ID="checkedBagtxt" runat="server" class="form-control" BorderColor="Maroon" ReadOnly="true"></asp:TextBox>
                            </div>
                            <div class="col-sm-3">
                                <asp:TextBox ID="rejectedBagtxt" runat="server" class="form-control" BorderColor="Maroon" ReadOnly="true"></asp:TextBox>
                            </div>
                        </div>
                        <br />
                        <div class="container">
                            <div class="card" style="background-color: #C0C0C0">
                                <div class="card-body">
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
                                    <div class="row">
                                        <div class="col-sm">
                                            <asp:Label ID="Label4" runat="server" Text="Label"><h5>Weight Decesion</h5></asp:Label>
                                        </div>
                                        <div class="col-sm-4">
                                            <asp:DropDownList ID="DropDownList1" runat="server" class="form-select" BorderColor="Maroon">
                                                <asp:ListItem>For-NetWeight</asp:ListItem>
                                                <asp:ListItem>Customize-Weight</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                        <div class="col-sm-4">
                                            <asp:TextBox ID="custWeighttxt" runat="server" class="form-control" AutoComplete="off" BorderColor="Maroon" placeholder="Give Customize Wastage Weight..."></asp:TextBox>
                                        </div>
                                    </div>
                                    <br />
                                    <div class="row g-3">
                                        <div class="col-sm">
                                            <asp:Label ID="Label1" runat="server" Text="Label"><h5>Rate</h5></asp:Label>
                                        </div>
                                        <div class="col-sm-7">
                                            <asp:TextBox ID="ratetxt" class="form-control" runat="server" BorderColor="Maroon" AutoComplete="off" required></asp:TextBox>
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
                                    </div>
                                 </div>
                            </div>
                        </div>
                        <br />
                        <div class="col-sm-12 d-grid mx-auto">
                                <asp:Button ID="Button2" class="btn btn-primary" runat="server" Text="Send to Assistant" OnClick="Button2_Click" />
                        </div>
                        <div class="row">
                            <center><a href="StockListView.aspx"><p>List</p></a></center>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br />
    <br />

</asp:Content>
