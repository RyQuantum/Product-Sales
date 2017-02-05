<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminLogin.aspx.cs" Inherits="Product_Sales.adminLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <li class="active">Admin Login</li>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="account">
        <div class="container">
            <div class="account-top heading">
                <h2>Admin Login</h2>
            </div>
            <div class="account-main">
                <div class="col-md-6 account-left">
                    <h3>Existing User</h3>
                    <form runat="server" class="account-bottom">
                        <asp:TextBox ID="AdminUser" placeholder="Email" TabIndex="3" runat="server"></asp:TextBox>
                        <asp:TextBox ID="AdminPassword" placeholder="Password" TabIndex="4" runat="server" TextMode="Password"></asp:TextBox>
                        &nbsp;<div class="address">
                            <a class="forgot" href="#">Forgot Your Password?</a>
                            <asp:Button ID="AdminLogin" runat="server" Text="Login" OnClick="Button1_Click" />
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
