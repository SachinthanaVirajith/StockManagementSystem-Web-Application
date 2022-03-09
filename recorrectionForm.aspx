<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="recorrectionForm.aspx.cs" Inherits="TCPStockManagementSystem.recorrectionForm" %>
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
                <asp:Button ID="Button5" runat="server" Text="Home" CausesValidation="false" class="btn btn-primary" Width="74px" OnClick="Button5_Click1"/>
            </div>
            </div>
            </div>
   <div class="container"  style="margin-top:5px">
        <div class="card">
            <div class="row">
                <center><h2 class="card-header" style="width:auto; background:#800000; color:#ffffff">Correction Control</h2></center>
            </div>
            <br />
             <div class="card text-white bg-secondary mb-3" style="max-width: 100%; margin-left:0px">
               <div class="card-header" style="font-weight:bolder;font-size:25px; text-align: center">Delete Bill</div>
                 <div class="card-title" style="text-align:center; color:white">Please Enter Bill Number and Press Delete Bill Button to Delete Any Bill You Want!</div>
               <div class="card-body">
                <div class="row">
                    <div class="col-sm-5">
                        <asp:TextBox ID="billNotxt" runat="server" class="form-control" AutoComplete="off" content placeholder="Bill Number"></asp:TextBox>
                    </div>
                    <div class="d-grid col-sm-3 mx-auto">
                        <asp:Button ID="Button1" runat="server" class="btn btn-danger" Text="Delete Bill" OnClick="Button1_Click" />
                    </div>
                </div> 
                    </div>
                 </div>
                <br />
            <div class="card text-white bg-secondary mb-3" style="max-width: 100%; margin-left:0px">
               <div class="card-header" style="font-weight:bolder;font-size:25px; text-align: center">Add/Reduct Item Manually</div>
                <div class="card-title" style="text-align:center; color:white">Please Enter Quantity You Want and Press (+)/(-) to Correct Wrong Added Quantity</div>
               <div class="card-body">
                <div class="row">
                    <div class="col-sm-5">
                        <asp:TextBox ID="TextBox3" runat="server" AutoComplete="off" class="form-control" content placeholder="Quantity(Kg)"></asp:TextBox>
                    </div>
                    <div class="col-sm-2">
                        <asp:DropDownList ID="DropDownList2" runat="server" class="form-select">
                            <asp:ListItem>Coco-Peat</asp:ListItem>
                            <asp:ListItem>10c</asp:ListItem>
                            <asp:ListItem>7c</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-sm-2">
                        <asp:DropDownList ID="DropDownList1" runat="server" class="form-select">
                            <asp:ListItem>Wash</asp:ListItem>
                            <asp:ListItem>Low-EC(ec<500)</asp:ListItem>
                            <asp:ListItem>Low-EC(500-1500)</asp:ListItem>
                            <asp:ListItem>Non-Wash/High-EC</asp:ListItem>
                            <asp:ListItem>Super-Wash</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="d-grid col-sm-1">
                        <asp:Button ID="Button2" runat="server" Text="+" class="btn btn-danger" OnClick="Button2_Click" />
                    </div>
                    <div class="d-grid col-sm-1">
                        <asp:Button ID="Button3" runat="server" Text="-" class="btn btn-danger" OnClick="Button3_Click" />
                    </div>
                </div> 
                   </div>
                </div>
                <br />
             <div class="card text-white bg-secondary mb-3" style="max-width: 100%; margin-left:0px">
               <div class="card-header" style="font-weight:bolder;font-size:25px; text-align: center">Reset Production History</div>
                <div class="card-title" style="text-align:center; color:white">Please Enter Given Keyword and Press Enter to Reset Production History</div>
                  <div class="card-title" style="text-align:center; color:red">This Button Will Delete Your All Production History!!!!!</div>
               <div class="card-body">
                <div class="row">
                    <div class="col-sm-5">
                        <asp:TextBox ID="keywordtxt" runat="server" class="form-control" AutoComplete="off" placeHolder="Enter keyword to Reset Production History..."></asp:TextBox>
                    </div>
                    <div class="d-grid col-sm-3 mx-auto">
                        <asp:Button ID="Button4" runat="server" Text="Reset" class="btn btn-danger" OnClick="Button4_Click1" />
                    </div>
                </div>
            </div>
                 </div>
        </div>
    </div> 
     </ContentTemplate></asp:UpdatePanel>
</asp:Content>
