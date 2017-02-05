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
                        <asp:SqlDataSource ID="SqlDataSourceInsertProduct" runat="server" ConflictDetection="CompareAllValues"
                            ConnectionString="<%$ ConnectionStrings:tproductSalesConnectionLocalhost %>"
                            InsertCommand="INSERT INTO products(name, price, discount, color, size, catogory, brand, description, infomation, rate, numOfRate, reviews, tag, sku) VALUES (@name, @price, @discount, @color, @size, @catogory, @brand, @description, @infomation, @rate, @numOfRate, @reviews, @tag, @sku)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [products]">
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

                            </InsertParameters>
                        </asp:SqlDataSource>

                        <asp:TextBox ID="Insertname" placeholder="Product Name" TabIndex="1" runat="server"></asp:TextBox>
                        <asp:TextBox ID="Insertprice" placeholder="Price" TabIndex="2" runat="server"></asp:TextBox>
                        <asp:TextBox ID="Insertdiscount" placeholder="Discount" TabIndex="3" runat="server"></asp:TextBox>
                        <asp:TextBox ID="Insertcolor" placeholder="Color" TabIndex="4" runat="server"></asp:TextBox>
                        <asp:TextBox ID="Insertsize" placeholder="Size" TabIndex="5" runat="server"></asp:TextBox>
                        <asp:TextBox ID="Insertcatogory" placeholder="Category" TabIndex="6" runat="server"></asp:TextBox>
                        <asp:TextBox ID="Insertbrand" placeholder="Brand" TabIndex="7" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-md-6 account-left">

                        <asp:TextBox ID="Insertdescription" placeholder="Description" TabIndex="8" runat="server"></asp:TextBox>
                        <asp:TextBox ID="Insertinfomation" placeholder="Information" TabIndex="9" runat="server"></asp:TextBox>
                        <asp:TextBox ID="Insertrate" placeholder="Rate" TabIndex="10" runat="server"></asp:TextBox>
                        <asp:TextBox ID="InsertnumOfRate" placeholder="Num of Rate" TabIndex="10" runat="server"></asp:TextBox>
                        <asp:TextBox ID="Insertreviews" placeholder="Review" TabIndex="11" runat="server"></asp:TextBox>
                        <asp:TextBox ID="Inserttag" placeholder="Tag" TabIndex="12" runat="server"></asp:TextBox>
                        <asp:TextBox ID="Insertsku" placeholder="SKU" TabIndex="13" runat="server"></asp:TextBox>

                    </div>
                    <div class="address submit">
                        <asp:Button ID="BinsertProduct" runat="server" OnClick="Binsert_Click" Text="Insert" />
                    </div>
                </div>
            </div>
        </form>
    </div>

</asp:Content>
