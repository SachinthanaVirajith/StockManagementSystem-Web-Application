<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="StockListView.aspx.cs" Inherits="TCPStockManagementSystem.StockListView" %>
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
    <div class="container" style="margin-top:5px">
    <asp:GridView ID="GridView1" CssClass ="table table bordered table-hover table-responsive" runat="server" AutoGenerateColumns="False"  BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="billId" DataSourceID="SqlDataSource1" GridLines="Horizontal" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AllowSorting="True" EnablePersistedSelection="True" HorizontalAlign="Justify" Font-Bold="False" Font-Overline="False" ShowHeaderWhenEmpty="True">
    <Columns>
        <asp:CommandField ShowSelectButton="True" />
        <asp:BoundField DataField="billId" HeaderText="billId" ReadOnly="True" SortExpression="billId" InsertVisible="False" />
        <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
        <asp:BoundField DataField="vehicalNumber" HeaderText="vehicalNumber" SortExpression="vehicalNumber" />
        <asp:BoundField DataField="sellerName" HeaderText="sellerName" SortExpression="sellerName" />
        <asp:BoundField DataField="material" HeaderText="material" SortExpression="material" />
        <asp:BoundField DataField="statusCheck" HeaderText="statusCheck" SortExpression="statusCheck" />
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
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TCPStockManagementSystemConnectionString %>" SelectCommand="SELECT [billId], [date], [vehicalNumber], [sellerName], [material], [statusCheck] FROM [material] WHERE ([submitStatus] = @submitStatus) ORDER BY [date] DESC">
       <SelectParameters>
           <asp:Parameter DefaultValue="false" Name="submitStatus" Type="String" />
      </SelectParameters>
      </asp:SqlDataSource>
    </div>
</asp:Content>
