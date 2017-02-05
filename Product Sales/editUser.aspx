<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="editUser.aspx.cs" Inherits="Product_Sales.editUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <li class="active">Edit User</li>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="formEditUser" runat="server">
        <div class="account">
        <div class="container">
            <div class="account-top heading">
                <h2>Edit Users</h2>
            </div>
            <div class="account-main">
                <div class="col-md-6 account-left">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="userTableEdit" AllowPaging="True" AllowSorting="True">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                            <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                            <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                            <asp:BoundField DataField="lastName" HeaderText="lastName" SortExpression="lastName" />
                            <asp:BoundField DataField="firstName" HeaderText="firstName" SortExpression="firstName" />
                            <asp:CheckBoxField DataField="sex" HeaderText="sex" SortExpression="sex" />
                            <asp:BoundField DataField="mobile" HeaderText="mobile" SortExpression="mobile" />
                            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                            <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                            <asp:CheckBoxField DataField="admin" HeaderText="admin" SortExpression="admin" />
                        </Columns>

                    </asp:GridView>
                    <asp:SqlDataSource ID="userTableEdit" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:tproductSalesConnectionLocalhost %>" DeleteCommand="DELETE FROM [userlogin] WHERE [id] = @original_id AND [username] = @original_username AND [password] = @original_password AND [lastName] = @original_lastName AND [firstName] = @original_firstName AND [sex] = @original_sex AND (([mobile] = @original_mobile) OR ([mobile] IS NULL AND @original_mobile IS NULL)) AND (([email] = @original_email) OR ([email] IS NULL AND @original_email IS NULL)) AND (([address] = @original_address) OR ([address] IS NULL AND @original_address IS NULL)) AND [admin] = @original_admin" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [userlogin]" UpdateCommand="UPDATE [userlogin] SET [username] = @username, [password] = @password, [lastName] = @lastName, [firstName] = @firstName, [sex] = @sex, [mobile] = @mobile, [email] = @email, [address] = @address, [admin] = @admin WHERE [id] = @original_id AND [username] = @original_username AND [password] = @original_password AND [lastName] = @original_lastName AND [firstName] = @original_firstName AND [sex] = @original_sex AND (([mobile] = @original_mobile) OR ([mobile] IS NULL AND @original_mobile IS NULL)) AND (([email] = @original_email) OR ([email] IS NULL AND @original_email IS NULL)) AND (([address] = @original_address) OR ([address] IS NULL AND @original_address IS NULL)) AND [admin] = @original_admin">
                        <DeleteParameters>
                            <asp:Parameter Name="original_id" Type="Int32" />
                            <asp:Parameter Name="original_username" Type="String" />
                            <asp:Parameter Name="original_password" Type="String" />
                            <asp:Parameter Name="original_lastName" Type="String" />
                            <asp:Parameter Name="original_firstName" Type="String" />
                            <asp:Parameter Name="original_sex" Type="Boolean" />
                            <asp:Parameter Name="original_mobile" Type="String" />
                            <asp:Parameter Name="original_email" Type="String" />
                            <asp:Parameter Name="original_address" Type="String" />
                            <asp:Parameter Name="original_admin" Type="Boolean" />
                        </DeleteParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="username" Type="String" />
                            <asp:Parameter Name="password" Type="String" />
                            <asp:Parameter Name="lastName" Type="String" />
                            <asp:Parameter Name="firstName" Type="String" />
                            <asp:Parameter Name="sex" Type="Boolean" />
                            <asp:Parameter Name="mobile" Type="String" />
                            <asp:Parameter Name="email" Type="String" />
                            <asp:Parameter Name="address" Type="String" />
                            <asp:Parameter Name="admin" Type="Boolean" />
                            <asp:Parameter Name="original_id" Type="Int32" />
                            <asp:Parameter Name="original_username" Type="String" />
                            <asp:Parameter Name="original_password" Type="String" />
                            <asp:Parameter Name="original_lastName" Type="String" />
                            <asp:Parameter Name="original_firstName" Type="String" />
                            <asp:Parameter Name="original_sex" Type="Boolean" />
                            <asp:Parameter Name="original_mobile" Type="String" />
                            <asp:Parameter Name="original_email" Type="String" />
                            <asp:Parameter Name="original_address" Type="String" />
                            <asp:Parameter Name="original_admin" Type="Boolean" />
                        </UpdateParameters>
                    </asp:SqlDataSource>

                    <asp:Panel ID="PanelInsertUser" runat="server" Visible="true">
                        <asp:Table ID="insertUsrTable" runat="server" >
                            <asp:TableRow>
                                <asp:TableCell>
                                    <asp:TextBox ID="insUname" runat="server"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell>
                                    <asp:TextBox ID="insUpawd" runat="server"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell>
                                    <asp:TextBox ID="InsFn" runat="server"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell>
                                    <asp:TextBox ID="InsLname" runat="server"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell>
                                    <asp:TextBox ID="InsSex" runat="server"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell>
                                    <asp:TextBox ID="InsMobile" runat="server"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell>
                                    <asp:TextBox ID="InsEmail" runat="server"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell>
                                    <asp:TextBox ID="InsAdd" runat="server"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell>
                                    <asp:TextBox ID="InsAdmin" runat="server"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell>
                                    <asp:Button ID="BinsertUser" runat="server" OnClick="Binsert_Click" Text="Insert" />
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                    </asp:Panel>
                </div>
            </div>
        </div>
    </div>
    </form>
</asp:Content>
