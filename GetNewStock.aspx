<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="GetNewStock.aspx.cs" Inherits="TCPStockManagementSystem.GetNewStock" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="panel1" runat="server"><ContentTemplate>
        <div class="container">
      <div class="row">
         <div class="col-md-4"></div>
            <div class="col-md-4">
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button5" runat="server" Text="Home" CausesValidation="false" class="btn btn-primary" Width="74px" OnClick="Button5_Click"/>
            </div>
            </div>
            </div>
    <div class="container"  style="margin-top:5px">
        <div class="card">
                    <div class="row">
                            <center><h2 class="card-header" style="width:auto; background:#800000; color:#ffffff">New Stock</h2></center>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center><hr /></center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-4">
                                <asp:Label ID="Label1" runat="server" Text="Label">Supplier Name</asp:Label>    
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12">
                                <asp:TextBox ID="sellerNametxt" runat="server" class="form-control" BorderColor="Maroon" autocomplete="off"></asp:TextBox>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-sm-3">
                                <asp:Label ID="vehicleNumlbl" runat="server" Text="Label">Vahicle Number</asp:Label>   
                            </div>
                            <div class="col-sm-3">
                                <asp:Label ID="materiallbl" runat="server" Text="Label">Material</asp:Label>   
                            </div>
                            <div class="col-sm-3">
                                <asp:Label ID="washStatuslbl" runat="server" Text="Label">Wash Status</asp:Label>   
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-3">
                                <asp:TextBox ID="vehicleNumtxt" runat="server" class="form-control" BorderColor="Maroon" AutoComplete="off" ></asp:TextBox>
                            </div>
                            <div class="col-sm-3">
                                <asp:DropDownList ID="materialddl" runat="server" class="form-select" BorderColor="Maroon">
                                    <asp:ListItem>7c</asp:ListItem>
                                    <asp:ListItem>10c</asp:ListItem>
                                    <asp:ListItem>Coco-Peat</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="col-sm-3">
                                <asp:DropDownList ID="washStatusddl" runat="server" class="form-select" BorderColor="Maroon">
                                    <asp:ListItem>Wash</asp:ListItem>
                                    <asp:ListItem>Low-EC(ec<500)</asp:ListItem>
                                    <asp:ListItem>Low-EC(500-1500)</asp:ListItem>
                                    <asp:ListItem>Non-Wash/High-EC</asp:ListItem>
                                    <asp:ListItem>Super-Wash</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <br />
                        <div class="container">
                            <div class="card" style="background-color: #C0C0C0">
                                <div class="card-body">
                                    <div class="row">
                                        <h5>Wastage Calculator</h5>
                                    </div>
                                    <br />
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <asp:Label ID="Label2" runat="server" Text="Label">Full Weight (Kg)</asp:Label>    
                                        </div>
                                        <div class="col-sm-3">
                                            <asp:Label ID="Label3" runat="server" Text="Label">Sample Weight (Kg)</asp:Label>   
                                        </div>
                                        <div class="col-sm-3">
                                            <asp:Label ID="Label4" runat="server" Text="Label">Sample Wastage (Kg)</asp:Label>   
                                        </div>
                                        <div class="col-sm-3">
                                            <asp:Label ID="Label5" runat="server" Text="Sand Weight  (Kg)"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <asp:TextBox ID="fullWeighttxt" runat="server" class="form-control form-control-sm" BorderColor="Maroon" autocomplete="off" ></asp:TextBox>
                                        </div>
                                        <div class="col-sm-3">
                                            <asp:TextBox ID="sampleWeighttxt" runat="server" class="form-control form-control-sm" BorderColor="Maroon" autocomplete="off" ></asp:TextBox>
                                        </div>
                                        <div class="col-sm-3">
                                            <asp:TextBox ID="sampleWastagetxt" runat="server" class="form-control form-control-sm" BorderColor="Maroon" autocomplete="off" ></asp:TextBox>
                                        </div>
                                        <div class="col-sm-3">
                                            <asp:TextBox ID="sandWeighttxt" runat="server" class="form-control form-control-sm" BorderColor="Maroon" autocomplete="off" ></asp:TextBox>
                                        </div>                  
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-4">
                                            Bag Weight
                                        </div>
                                        <div class="col-sm-4">
                                            Net Weight
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <asp:TextBox ID="bagWeighttxt" runat="server" class="form-control" BorderColor="Maroon" autocomplete="off"></asp:TextBox>
                                        </div>
                                        <div class="col-sm-4">
                                            <asp:TextBox ID="netWeighttxt" runat="server" class="form-control" Font-Bold="true" ReadOnly="true" BorderColor="Maroon" autocomplete="off"></asp:TextBox>
                                        </div>
                                        <div class="d-grid col-sm-4 mx-auto">
                                            <asp:Button ID="Button1" runat="server" class="btn btn-primary" Text="Calculate" OnClick="Button1_Click" />
                                        </div>
                                    </div>
                            </div>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                         <div class="col-sm-3">
                            <asp:Label ID="Label10" runat="server" Text="Volume (1 Kg)"></asp:Label>
                        </div>
                        
                        <div class="col-sm-3">
                            <asp:Label ID="Label6" runat="server" Text="Average Moisture"></asp:Label>
                        </div>
                        <div class="col-sm-3">
                            <asp:Label ID="Label7" runat="server" Text="Coir Weight  (Kg)"></asp:Label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-3">
                            <asp:TextBox ID="volumetxt" runat="server" class="form-control" BorderColor="Maroon" autocomplete="off"></asp:TextBox>
                        </div>
                        
                        <div class="col-sm-3">
                            <asp:TextBox ID="averageMoisturetxt" runat="server" class="form-control" BorderColor="Maroon" autocomplete="off"></asp:TextBox>
                        </div>
                        <div class="col-sm-3">
                            <asp:TextBox ID="coirWeighttxt" runat="server" class="form-control" BorderColor="Maroon" autocomplete="off"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-sm-3">
                            <asp:Label ID="Label11" runat="server" Text="Average EC"></asp:Label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-3">
                            <asp:TextBox ID="averageEctxt" runat="server" class="form-control" BorderColor="Maroon" autocomplete="off"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-sm-6">
                            <asp:Label ID="Label8" runat="server" Text="Checked Bags"></asp:Label>
                        </div>
                        <div class="col-sm-6">
                            <asp:Label ID="Label9" runat="server" Text="Rejected Bags"></asp:Label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6">
                            <asp:TextBox ID="checkedBagtxt" runat="server" class="form-control" BorderColor="Maroon" autocomplete="off"></asp:TextBox>
                        </div>
                        <div class="col-sm-6">
                            <asp:TextBox ID="rejectedBagtxt" runat="server" class="form-control" BorderColor="Maroon" autocomplete="off"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="d-grid col-sm mx-auto">
                            <asp:Button ID="Button2" runat="server" Text="Send to Manager" class="btn btn-primary" OnClick="Button2_Click" />
                        </div>
                    </div>
            </div>
        </div>
    </div>
    <br />
    <br />
    <br />
  </ContentTemplate></asp:UpdatePanel>
</asp:Content>
