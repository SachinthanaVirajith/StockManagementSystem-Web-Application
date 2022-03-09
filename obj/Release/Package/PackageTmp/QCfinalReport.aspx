<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="QCfinalReport.aspx.cs" Inherits="TCPStockManagementSystem.QCfinalReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="voucherId" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="billId" HeaderText="billId" SortExpression="billId" />
            <asp:BoundField DataField="voucherId" HeaderText="voucherId" ReadOnly="True" SortExpression="voucherId" />
            <asp:BoundField DataField="supplierName" HeaderText="supplierName" SortExpression="supplierName" />
            <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
            <asp:BoundField DataField="vehicalNumber" HeaderText="vehicalNumber" SortExpression="vehicalNumber" />
            <asp:BoundField DataField="material" HeaderText="material" SortExpression="material" />
            <asp:BoundField DataField="washStatus" HeaderText="washStatus" SortExpression="washStatus" />
            <asp:BoundField DataField="netWeight" HeaderText="netWeight" SortExpression="netWeight" />
            <asp:BoundField DataField="paidStatus" HeaderText="paidStatus" SortExpression="paidStatus" />
        </Columns>
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TCPStockManagementSystemConnectionString %>" SelectCommand="SELECT [billId], [voucherId], [supplierName], [date], [vehicalNumber], [material], [washStatus], [netWeight], [paidStatus] FROM [asst] WHERE ([loadStatus] = @loadStatus)">
        <SelectParameters>
            <asp:Parameter DefaultValue="false" Name="loadStatus" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

</asp:Content>
