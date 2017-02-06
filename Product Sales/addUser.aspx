<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="addUser.aspx.cs" Inherits="Product_Sales.addUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <li class="active">New User</li>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="account">
        <form id="formEditProduct" runat="server">
            <div class="container">
                <div class="account-top heading">
                    <h2>New User</h2>
                </div>
                <div class="account-main">
                    <div class="col-md-6 account-left">
                        <asp:SqlDataSource ID="SqlDataSourceInsertUser" runat="server" ConflictDetection="CompareAllValues"
                            ConnectionString="<%$ ConnectionStrings:tproductSalesConnectionLocalhost %>"
                            InsertCommand="INSERT INTO [userlogin] ([username], [password], [lastName], [firstName], [sex], [mobile], [email], [address], [admin]) VALUES (@username, @password, @lastName, @firstName, @sex, @mobile, @email, @address, @admin)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [userlogin]">
                            <InsertParameters>
                                <asp:ControlParameter Name="username" ControlID="ins_Username" Type="String" />
                                <asp:ControlParameter Name="password" ControlID="ins_Password" Type="String" />
                                <asp:ControlParameter Name="lastName" ControlID="ins_LastName" Type="String" />
                                <asp:ControlParameter Name="firstName" ControlID="ins_FirstName" Type="String" />
                                <asp:ControlParameter Name="sex" ControlID="ins_sex" Type="Boolean" />
                                <asp:ControlParameter Name="mobile" ControlID="ins_Mobile" Type="String" />
                                <asp:ControlParameter Name="email" ControlID="ins_Email" Type="String" />
                                <asp:ControlParameter Name="address" ControlID="ins_Address" Type="String" />
                                <asp:ControlParameter Name="admin" ControlID="ins_admin" Type="Boolean" />
                            </InsertParameters>
                        </asp:SqlDataSource>

                        <asp:TextBox ID="ins_Username" placeholder="Username" TabIndex="1" runat="server" required></asp:TextBox>
                        <asp:TextBox ID="ins_Password" placeholder="Password" type="password" TabIndex="2" runat="server" required></asp:TextBox>
                        <asp:TextBox ID="ins_Email" placeholder="Email" TabIndex="3" runat="server" required></asp:TextBox>
                        <asp:DropDownList ID="ins_sex" TabIndex="4" runat="server">
                            <asp:ListItem Text="Male" Value="M" Selected="False"></asp:ListItem>
                            <asp:ListItem Text="Female" Value="F"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-md-6 account-left">
                        <asp:TextBox ID="ins_FirstName" placeholder="First name" TabIndex="5" runat="server" required></asp:TextBox>
                        <asp:TextBox ID="ins_LastName" placeholder="Last name" TabIndex="6" runat="server" required></asp:TextBox>
                        <asp:TextBox ID="ins_Address" placeholder="Address" TabIndex="7" runat="server" required></asp:TextBox>
                        <asp:TextBox ID="ins_Mobile" placeholder="Mobile" TabIndex="8" runat="server" required></asp:TextBox>
                        <asp:DropDownList ID="ins_admin" TabIndex="9" runat="server">
                            <asp:ListItem Text="User" Value="N" Selected="False"></asp:ListItem>
                            <asp:ListItem Text="Admin" Value="Y"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="address submit">
                        <asp:Button ID="BinsertProduct" runat="server" OnClick="Binsert_Click" Text="Insert" />
                    </div>
                </div>
            </div>
        </form>
    </div>

</asp:Content>
