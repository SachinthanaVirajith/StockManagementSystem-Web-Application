<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="voucher.aspx.cs" Inherits="TCPStockManagementSystem.voucher" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
    <div class="card">
    <center>
    <h2 class="card-header" style="background-color:#C48A05;color:white">PAYMENT VOUCHER</h2>
    </center>
    <div class="card-body">
    <div class="row">
    <div class="col-sm-4">
        <asp:Label ID="lblVoucherNo" runat="server" Text="Voucher Number:"></asp:Label>
    </div>
    <div class="col-sm-4">
        <asp:Label ID="Label1" runat="server" Text="Bill Number:"></asp:Label>
    </div>
    </div>
    <div class="row">
    <div class="col-sm-4">
        <asp:TextBox ID="VoucherNo" runat="server" ReadOnly="true" class="form-control" BorderColor="#C48A05" BorderWidth="2px"></asp:TextBox>
    </div>
    <div class="col-sm-4">
        <asp:TextBox ID="billNotxt" runat="server" ReadOnly="true" class="form-control" BorderColor="#C48A05" BorderWidth="2px"></asp:TextBox>
    </div>
    </div>
    <br />
    <div class="row">
    <div class="col-sm-3">
        <asp:Label ID="lblDate" runat="server" Text="Date:"></asp:Label>
    </div>
    <div class="col-sm-9">
        <asp:Label ID="lblSupName" runat="server" Text="SupplierName:"></asp:Label>
    </div>
    </div>
    <div class="row">
    <div class="col-sm-3">
        <asp:TextBox ID="Date" runat="server" class="form-control" ReadOnly="true" BorderColor="#C48A05" BorderWidth="2px"></asp:TextBox>
    </div>
    <div class="col-sm-9">
        <asp:TextBox ID="SupName" runat="server" ReadOnly="true" Width="900px" class="form-control" BorderColor="#C48A05" BorderWidth="2px"></asp:TextBox>
    </div>
    </div>
    <br />
    <div class="row">
    <div class="col-sm-4">
        <asp:Label ID="lblVehNo" runat="server" Text="VehicleNo:"></asp:Label>
    </div>
    <div class="col-sm-4">
        <asp:Label ID="lblMaterial" runat="server" Text="Material:"></asp:Label>
    </div>
    <div class="col-sm-4">
        <asp:Label ID="lblStatus" runat="server" Text="Status:"></asp:Label>
    </div>
    </div>
    <div class="row">
    <div class="col-sm-4">
        <asp:TextBox ID="VehicleNo" runat="server" ReadOnly="true" class="form-control" BorderColor="#C48A05" BorderWidth="2px"></asp:TextBox>
    </div>
    <div class="col-sm-4">
        <asp:TextBox ID="Material" runat="server" ReadOnly="true" Width="362px" class="form-control" BorderColor="#C48A05" BorderWidth="2px"></asp:TextBox>
    </div>
    <div class="col-sm-4">
        <asp:TextBox ID="Status" runat="server" ReadOnly="true" Width="362px" class="form-control" BorderColor="#C48A05" BorderWidth="2px"></asp:TextBox>
    </div>
    </div>
    <br />
    <div class="row">
    <div class="col-sm-4">
        <asp:Label ID="lblUnits" runat="server" Text="Units (Number of Accepted bags):"></asp:Label>
    </div>
     <div class="col-sm-4">
         <asp:Label ID="lblQuantity" runat="server" Text="Quantity (Net Weight):"></asp:Label>
    </div>
     <div class="col-sm-4">
         <asp:Label ID="lblRate" runat="server" Text="Rate:"></asp:Label>
    </div>
    </div>
    <div class="row">
    <div class="col-sm-4">
        <asp:TextBox ID="Unit" runat="server" ReadOnly="true" class="form-control" BorderColor="#C48A05" BorderWidth="2px"></asp:TextBox>
    </div>
     <div class="col-sm-4">
        <asp:TextBox ID="Quantity" runat="server" ReadOnly="true" Width="360px" class="form-control" BorderColor="#C48A05" BorderWidth="2px"></asp:TextBox>
    </div>
     <div class="col-sm-4">
        <asp:TextBox ID="Rate" runat="server" ReadOnly="true" Width="360px" class="form-control" BorderColor="#C48A05" BorderWidth="2px"></asp:TextBox>
    </div>
    </div>
    <br />
    <br />
    <div class="row">
    <div class="col-sm-4">
     <asp:Label ID="lblPayMethod" runat="server" Text="PaymentMethod:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblCash" runat="server" Text="Cash:"></asp:Label>
        <asp:CheckBox ID="CheckBox1" runat="server" />
    </div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <div class="col-sm-4">
      <asp:Label ID="lblChq" runat="server" Text="Cheque:"></asp:Label>
        <asp:CheckBox ID="CheckBox2" runat="server" OnCheckedChanged="CheckBox2_CheckedChanged" AutoPostBack="true" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <asp:TextBox ID="txtChqNo" runat="server"  class="form-control" BorderColor="#C48A05" BorderWidth="2px" Placeholder="Cheque No" Width="259px"></asp:TextBox>
    </div>
    </div>
    <br />
    <br />
    <br />
    <br />
    <br />
     <div class="row">
     <div class="col-sm-9"></div>
     <div class="col-3">
         <asp:Label ID="lblGrossAmt" runat="server" Text="Gross Amount:(Rs.)"></asp:Label>
         <asp:TextBox ID="GrossAmt" runat="server" Width="250px" ReadOnly="true" class="form-control" BorderColor="#C48A05" BorderWidth="2px"></asp:TextBox>
     </div>
     </div>
     <br />
     <div class="row">
     <div class="col-sm-9"></div>
     <div class="col-3">
         <asp:Label ID="lblAdvance" runat="server" Text="Advance Payment:(Rs.)"></asp:Label>
         <asp:TextBox ID="AdvancePay" runat="server" Width="246px" class="form-control" BorderColor="#C48A05" BorderWidth="2px"></asp:TextBox>
     </div>
     </div>
     <br />
     <div class="row">
     <div class="col-sm-9"></div>
     <div class="col-3">
         <asp:Label ID="lblTax" runat="server" Text="Tax/Others:(Rs.)"></asp:Label>
         <asp:TextBox ID="txtTax" runat="server" Width="248px" class="form-control" BorderColor="#C48A05" BorderWidth="2px"></asp:TextBox>
     </div>
     </div>
     <br />
     <div class="row">
     <div class="col-sm-9"></div>
     <div class="col-3">
         <asp:Label ID="lblNetAmt" runat="server" Text="Net Amount:"></asp:Label>
         <asp:TextBox ID="NetAmt" runat="server" Width="248px" class="form-control" BorderColor="#C48A05" BorderWidth="2px" ReadOnly="true"></asp:TextBox>
     </div>
     </div>
     <br />
     <br />
    <div class="row">
    <div class="col-sm-5"></div>
    <div class="col-sm-5"></div>
    <div class="col-sm-2">
        <asp:Button ID="BtnPrint" runat="server" Text="Print" class="btn-primary btn-lg" OnClick="BtnPrint_Click"/>
    </div>
    </div>
    <br />
    <br />
    <div class="row">
    <div class="col-sm-5">
        <h5>----------------</h5>
    </div>
    <div class="col-sm-5">
        <h5>----------------</h5>
    </div>
    <div class="col-sm-2">
        <h5>----------------</h5>
    </div>
    </div>
    <div class="row">
    <div class="col-sm-5">
            <asp:Label ID="lblprepared" runat="server" Text="Prepared by"></asp:Label>
    </div>
    <div class="col-sm-5">
         <asp:Label ID="lblchecked" runat="server" Text="Checked by"></asp:Label>
    </div>
    <div class="col-sm-2">
         <asp:Label ID="lblApproved" runat="server" Text="Approved by"></asp:Label>
    </div>
    </div>
    </div>
    </div>
    </div>
</asp:Content>
