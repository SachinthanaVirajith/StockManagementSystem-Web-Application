<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ProductReduction.aspx.cs" Inherits="TCPStockManagementSystem.ProductReduction" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
      <div class="row">
         <div class="col-md-4"></div>
            <div class="col-md-4">
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button5" runat="server" Text="Home" CausesValidation="false" class="btn btn-primary" Width="74px" OnClick="Button5_Click"/>
            </div>
            </div>
            </div>
    <link href="Css/reduction.css" rel="stylesheet" />
    <section id="facilities" style="margin-top:5px">
        <div class="container">
            <div class="title">
                <h1>Daily Product Reduction</h1>
                <p>Please select the item you want to Reduct from the stock</p>
            </div>
                <div class="row">
                    <div  class="col-md-4">
                    <div class="card text-center">
                        <div class="card-body">
                            <h5 class="card-title">7C</h5>
                            <p class="card-text">Press Enter to Reduct 7C from Stock</p>
                            <asp:Button ID="Button1" runat="server" Text="Enter" class="btn btn-success" OnClick="Button1_Click"/>
                        </div>
                    </div>
                </div>

                    <div  class="col-md-4">
                    <div class="card text-center">
                        <div class="card-body">
                            <h5 class="card-title">10C</h5>
                            <p class="card-text">Press Enter to Reduct 10C from Stock</p>
                            <asp:Button ID="Button2" runat="server" Text="Enter" class="btn btn-primary" OnClick="Button2_Click"/>
                        </div>
                    </div>
                </div>

                    <div  class="col-md-4">
                    <div class="card text-center">
                        <div class="card-body">
                            <h5 class="card-title">Coco Peat</h5>
                            <p class="card-text">Press Enter to Reduct Coco Peat from Stock</p>
                            <asp:Button ID="Button3" runat="server" Text="Enter" class="btn btn-danger" OnClick="Button3_Click"/>
                        </div>
                    </div>
                </div>
                </div>
        </div>
    </section>

</asp:Content>
