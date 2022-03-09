<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="StockStatus.aspx.cs" Inherits="TCPStockManagementSystem.StockStatus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
      <div class="row">
         <div class="col-md-4"></div>
            <div class="col-md-4">
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Text="Home" class="btn btn-primary" Width="74px" OnClick="Button1_Click"/>
            </div>
            </div>
            </div>  
    <div class="container"  style="margin-top:5px">
        <div class="card">
            <div class="row">
                <center><h2 class="card-header" style="width:auto; background:#800000; color:#ffffff">Stock Availability</h2></center>
            </div>
            <br />

           <div class="card text-white bg-dark mb-3" style="max-width: 80%; margin-left:125px">
               <div class="card-header" style="font-weight:bolder;font-size:35px; text-align: center">COCO-PEAT</div>
               <div class="card-body">
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <div class="card border-danger mb-3" style="max-width: 18rem; margin-left:-200px">
                        <div class="card-header" style="color:black; font-weight:bold">Low EC (EC < 500)</div>
                        <div class="card-body text-danger">
                            <h5 class="card-title" style="font-weight:bold"><asp:Label ID="cocoPeatLowEc1" runat="server" Text="L"></asp:Label></h5>
                            <p class="card-text">Available in the Stock</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card border-danger mb-3" style="max-width: 18rem; margin-left:-200px">
                        <div class="card-header" style="color:black; font-weight:bold">Low EC (500 - 1500)</div>
                        <div class="card-body text-danger">
                            <h5 class="card-title" style="font-weight:bold"><asp:Label ID="cocoPeatLowEc2" runat="server" Text="L"></asp:Label></h5>
                            <p class="card-text">Available in the Stock</p>
                        </div>
                    </div>
                </div>
                </div>
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <div class="card border-danger mb-3" style="max-width: 18rem; margin-left:-200px">
                        <div class="card-header"  style="color:black; font-weight:bold">Non Wash/High-EC</div>
                        <div class="card-body text-danger">
                            <h5 class="card-title"  style="font-weight:bold"><asp:Label ID="cocoPeatUnWashlbl" runat="server" Text="L"></asp:Label></h5>
                            <p class="card-text">Available in the Stock</p>
                        </div>
                    </div>
                    </div>
                <div class="col-md-4">
                    <div class="card border-danger mb-3" style="max-width: 18rem; margin-left:-200px">
                        <div class="card-header" style="color:black; font-weight:bold">Super Wash</div>
                        <div class="card-body text-danger">
                            <h5 class="card-title" style="font-weight:bold"><asp:Label ID="superWashlbl" runat="server" Text="L"></asp:Label></h5>
                            <p class="card-text">Available in the Stock</p>
                        </div>
                    </div>
                </div>
                </div>
                <div class="col-md-4"></div>
            </div>
                </div>
            <br />
            <br />
            <div class="card text-white bg-secondary mb-3" style="max-width: 80%; margin-left:125px">
               <div class="card-header" style="font-weight:bolder;font-size:35px; text-align: center">10C</div>
               <div class="card-body">
           <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <div class="card border-danger mb-3" style="max-width: 18rem; margin-left:-200px">
                        <div class="card-header" style="color:black; font-weight:bold">Wash</div>
                        <div class="card-body text-danger">
                            <h5 class="card-title"  style="font-weight:bold"><asp:Label ID="Wash10clbl" runat="server" Text="L"></asp:Label></h5>
                            <p class="card-text">Available in the Stock</p>
                        </div>
                    </div>
                </div>
                  <div class="col-md-4">
                    <div class="card border-danger mb-3" style="max-width: 18rem; margin-left:-102px">
                        <div class="card-header"  style="color:black; font-weight:bold">Non-Wash</div>
                        <div class="card-body text-danger">
                            <h5 class="card-title"  style="font-weight:bold"><asp:Label ID="UnWash10clbl" runat="server" Text="L"></asp:Label></h5>
                            <p class="card-text">Available in the Stock</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4"></div>
            </div>
                   </div>
                </div>
            <br />
            <br />
            <div class="card text-white bg-dark mb-3" style="max-width: 80%; margin-left:125px">
               <div class="card-header" style="font-weight:bolder;font-size:35px; text-align: center">7C</div>
               <div class="card-body">
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <div class="card border-danger mb-3" style="max-width: 18rem; margin-left:-200px">
                        <div class="card-header" style="color:black; font-weight:bold">Wash</div>
                        <div class="card-body text-danger">
                            <h5 class="card-title" style="font-weight:bold"><asp:Label ID="Wash7clbl" runat="server" Text="L">Kg</asp:Label></h5>
                            <p class="card-text">Available in the Stock</p>
                           </div>
                    </div>
                </div>
                  <div class="col-md-4">
                    <div class="card border-danger mb-3" style="max-width: 18rem; margin-left:-102px">
                        <div class="card-header"  style="color:black; font-weight:bold">Non-Wash</div>
                        <div class="card-body text-danger">
                            <h5 class="card-title" style="font-weight:bold"><asp:Label ID="UnWash7clbl" runat="server" Text="L"></asp:Label></h5>
                            <p class="card-text">Available in the Stock</p>
                       </div>
                    </div>
                </div>
                <div class="col-md-4"></div>
            </div>
                   </div>
                </div>
    </div>
        </div>
    <br />
    <br />
    <br />
    <br />
</asp:Content>
