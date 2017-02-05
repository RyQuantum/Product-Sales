<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminPage.aspx.cs" Inherits="Product_Sales.adminPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <li class="active">Admin Page</li>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="account">
        <div class="container">
            <div class="account-top heading">
                <h2>Admin Page</h2>
            </div>
            <div class="account-main">
                <div class="col-md-6 account-left">
                    <h3>Available Tasks</h3>
                        <ul>
                            <div>
                            <li><a href="addUser.aspx">Users (Add new)</a></li>
                            </div><div>
                            <li><a href="editUser.aspx">Users (Edit/Remove)</a></li>
                            </div><div>
                            <li><a href="addProduct.aspx">Products (Add new)</a></li>
                            </div><div>
                            <li><a href="editProduct.aspx">Products (Edit/Remove)</a></li>
                            </div>
                        </ul>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
