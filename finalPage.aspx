<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="finalPage.aspx.cs" Inherits="TCPStockManagementSystem.finalPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="card">
            <div class="card-body">
                <div class="card text-center">
                        <div class="card-header">
                             End of the process
                        </div>
                            <div class="card-body">
                                <h5 class="card-title">Unload Materials</h5>
                                <p class="card-text">Press OK to unload materials</p>
                                <asp:Button ID="Button1" runat="server" Text="OK" class="btn-primary btn-lg" OnClick="Button1_Click" style="height: 50px" />
                        </div>
               </div>
            </div>
        </div>
    </div>









    

</asp:Content>
