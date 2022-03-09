<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="QCfinalReport.aspx.cs" Inherits="TCPStockManagementSystem.QCfinalReport" %>
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
    <div class="container"  style="margin-top:5px">
    <asp:GridView ID="GridView1" CssClass ="table table bordered table-hover table-responsive" runat="server" AutoGenerateColumns="False"  BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="voucherId" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"  AllowSorting="True" EnablePersistedSelection="True" HorizontalAlign="Justify" Font-Bold="False" Font-Overline="False" ShowHeaderWhenEmpty="True">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="billId" HeaderText="BillId" SortExpression="billId" />
            <asp:BoundField DataField="voucherId" HeaderText="VoucherId" ReadOnly="True" SortExpression="voucherId" />
            <asp:BoundField DataField="supplierName" HeaderText="SupplierName" SortExpression="supplierName" />
            <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
            <asp:BoundField DataField="vehicalNumber" HeaderText="VehicalNumber" SortExpression="vehicalNumber" />
            <asp:BoundField DataField="material" HeaderText="Material" SortExpression="material" />
            <asp:BoundField DataField="washStatus" HeaderText="WashStatus" SortExpression="washStatus" />
            <asp:BoundField DataField="netWeight" HeaderText="NetWeight" SortExpression="netWeight" />
            <asp:BoundField DataField="paidStatus" HeaderText="PaidStatus" SortExpression="paidStatus" />
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" HorizontalAlign="Justify"  CssClass="table"/>
    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#FFF1D4" />
    <SortedAscendingHeaderStyle BackColor="#B95C30" />
    <SortedDescendingCellStyle BackColor="#F1E5CE" />
    <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TCPStockManagementSystemConnectionString %>" SelectCommand="SELECT [billId], [voucherId], [supplierName], [date], [vehicalNumber], [material], [washStatus], [netWeight], [paidStatus] FROM [asst] WHERE ([loadStatus] = @loadStatus)">
        <SelectParameters>
            <asp:Parameter DefaultValue="false" Name="loadStatus" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</div>
</asp:Content>
