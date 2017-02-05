<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="addProduct.aspx.cs" Inherits="Product_Sales.addProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <li class="active">New Product</li>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="account">
        <form id="formEditProduct" runat="server">
            <div class="container">
                <div class="account-top heading">
                    <h2>New Products</h2>
                </div>
                <div class="account-main">
                    <div class="col-md-6 account-left">
                        <asp:SqlDataSource ID="SqlDataSourceInsertProduct" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:tproductSalesConnectionLocalhost %>" InsertCommand="INSERT INTO [products] ([name], [price], [discount], [color], [size], [catogory], [brand], [description], [infomation], [rate], [numOfRate], [reviews], [tag], [sku], [picture]) VALUES (@name, @price, @discount, @color, @size, @catogory, @brand, @description, @infomation, @rate, @numOfRate, @reviews, @tag, @sku, @picture)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [products]">
                            <InsertParameters>
                                <asp:ControlParameter Name="name" ControlID="Insertname" Type="String" />
                                <asp:ControlParameter Name="price" ControlID="Insertprice" Type="Int32" />
                                <asp:ControlParameter Name="discount" ControlID="Insertdiscount" Type="Int32" />
                                <asp:ControlParameter Name="color" ControlID="Insertcolor" Type="String" />
                                <asp:ControlParameter Name="size" ControlID="Insertsize" Type="String" />
                                <asp:ControlParameter Name="catogory" ControlID="Insertcatogory" Type="String" />
                                <asp:ControlParameter Name="brand" ControlID="Insertbrand" Type="String" />
                                <asp:ControlParameter Name="description" ControlID="Insertdescription" Type="String" />
                                <asp:ControlParameter Name="infomation" ControlID="Insertinfomation" Type="String" />
                                <asp:ControlParameter Name="rate" ControlID="Insertrate" Type="Int32" />
                                <asp:ControlParameter Name="numOfRate" ControlID="InsertnumOfRate" Type="Int32" />
                                <asp:ControlParameter Name="reviews" ControlID="Insertreviews" Type="String" />
                                <asp:ControlParameter Name="tag" ControlID="Inserttag" Type="String" />
                                <asp:ControlParameter Name="sku" ControlID="Insertsku" Type="String" />
                                <asp:ControlParameter Name="picture" ControlID="Insertpicture" Type="String" />
                                
                            </InsertParameters>
                        </asp:SqlDataSource>

                        <asp:TextBox ID="Insertname" runat="server"></asp:TextBox>
                        <asp:TextBox ID="Insertprice" runat="server"></asp:TextBox>
                        <asp:TextBox ID="Insertdiscount" runat="server"></asp:TextBox>
                        <asp:TextBox ID="Insertcolor" runat="server"></asp:TextBox>
                        <asp:TextBox ID="Insertsize" runat="server"></asp:TextBox>
                        <asp:TextBox ID="Insertcatogory" runat="server"></asp:TextBox>
                        <asp:TextBox ID="Insertbrand" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-md-6 account-left">

                        <asp:TextBox ID="Insertdescription" runat="server"></asp:TextBox>
                        <asp:TextBox ID="Insertinfomation" runat="server"></asp:TextBox>
                        <asp:TextBox ID="Insertrate" runat="server"></asp:TextBox>
                        <asp:TextBox ID="InsertnumOfRate" runat="server"></asp:TextBox>
                        <asp:TextBox ID="Insertreviews" runat="server"></asp:TextBox>
                        <asp:TextBox ID="Inserttag" runat="server"></asp:TextBox>
                        <asp:TextBox ID="Insertsku" runat="server"></asp:TextBox>
                        <asp:TextBox ID="Insertpicture" runat="server"></asp:TextBox>

                    </div>
                    <div class="address submit">
                        <asp:Button ID="BinsertProduct" runat="server" OnClick="Binsert_Click" Text="Insert" />
                    </div>
                </div>
            </div>
        </form>
    </div>

</asp:Content>
