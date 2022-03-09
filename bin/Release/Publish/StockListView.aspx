<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="StockListView.aspx.cs" Inherits="TCPStockManagementSystem.StockListView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">





   <center><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TCPStockManagementSystemConnectionString %>" SelectCommand="SELECT [billId], [date], [vehicalNumber], [sellerName], [material], [statusCheck] FROM [material] WHERE ([submitStatus] = @submitStatus) ORDER BY [date] DESC">
       <SelectParameters>
           <asp:Parameter DefaultValue="false" Name="submitStatus" Type="String" />
       </SelectParameters>
       </asp:SqlDataSource>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="billId" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="649px">
    <Columns>
        <asp:CommandField ShowSelectButton="True" />
        <asp:BoundField DataField="billId" HeaderText="billId" ReadOnly="True" SortExpression="billId" InsertVisible="False" />
        <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
        <asp:BoundField DataField="vehicalNumber" HeaderText="vehicalNumber" SortExpression="vehicalNumber" />
        <asp:BoundField DataField="sellerName" HeaderText="sellerName" SortExpression="sellerName" />
        <asp:BoundField DataField="material" HeaderText="material" SortExpression="material" />
        <asp:BoundField DataField="statusCheck" HeaderText="statusCheck" SortExpression="statusCheck" />
    </Columns>
    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F7F7F7" />
    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
    <SortedDescendingCellStyle BackColor="#E5E5E5" />
    <SortedDescendingHeaderStyle BackColor="#242121" />
</asp:GridView></center>

    



</asp:Content>
