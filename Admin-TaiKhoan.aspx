<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdmin.master" AutoEventWireup="true" CodeFile="Admin-TaiKhoan.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

       <!-- page content -->
        <div class="right_col" role="main">
            <h2>Quản lý tài khoản</h2>
          <!-- top tiles -->
          <!-- /top tiles -->
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="TenTaiKhoan" DataSourceID="TaiKhoan" InsertItemPosition="LastItem">
            <AlternatingItemTemplate>
                <tr style="background-color: #FFFFFF;color: #284775;">
                  
                    <td>
                        <asp:Label ID="TenTaiKhoanLabel" runat="server" Text='<%# Eval("TenTaiKhoan") %>' />
                    </td>
                    <td>
                        <asp:Label ID="MatKhauLabel" runat="server" Text='<%# Eval("MatKhau") %>' />
                    </td>
                    <td>
                        <asp:Label ID="VaiTroLabel" runat="server" Text='<%# Eval("VaiTro") %>' />
                    </td>
                      <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="background-color: #999999;">
                   
                    <td>
                        <asp:Label ID="TenTaiKhoanLabel1" runat="server" Text='<%# Eval("TenTaiKhoan") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="MatKhauTextBox" runat="server" Text='<%# Bind("MatKhau") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="VaiTroTextBox" runat="server" Text='<%# Bind("VaiTro") %>' />
                    </td>
                     <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="">
                   
                    <td>
                        <asp:TextBox ID="TenTaiKhoanTextBox" runat="server" Text='<%# Bind("TenTaiKhoan") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="MatKhauTextBox" runat="server" Text='<%# Bind("MatKhau") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="VaiTroTextBox" runat="server" Text='<%# Bind("VaiTro") %>' />
                    </td>
                     <td>
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="background-color: #E0FFFF;color: #333333;">
                    
                    <td>
                        <asp:Label ID="TenTaiKhoanLabel" runat="server" Text='<%# Eval("TenTaiKhoan") %>' />
                    </td>
                    <td>
                        <asp:Label ID="MatKhauLabel" runat="server" Text='<%# Eval("MatKhau") %>' />
                    </td>
                    <td>
                        <asp:Label ID="VaiTroLabel" runat="server" Text='<%# Eval("VaiTro") %>' />
                    </td>
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr runat="server" style="background-color: #E0FFFF;color: #333333;">
                        
                                    <th runat="server">Tên Tài Khoản</th>
                                    <th runat="server">Mật Khẩu</th>
                                    <th runat="server">Vai Trò</th>
                                    <th runat="server"></th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF">
                            <asp:DataPager ID="DataPager1" runat="server">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                    <asp:NumericPagerField />
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="background-color: #E2DED6;font-weight: bold;color: #333333;">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Label ID="TenTaiKhoanLabel" runat="server" Text='<%# Eval("TenTaiKhoan") %>' />
                    </td>
                    <td>
                        <asp:Label ID="MatKhauLabel" runat="server" Text='<%# Eval("MatKhau") %>' />
                    </td>
                    <td>
                        <asp:Label ID="VaiTroLabel" runat="server" Text='<%# Eval("VaiTro") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
            </asp:ListView>

            <asp:SqlDataSource ID="TaiKhoan" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\QLBanHangNhom2.mdf;Integrated Security=True" DeleteCommand="DELETE FROM [TaiKhoan] WHERE [TenTaiKhoan] = @TenTaiKhoan" InsertCommand="INSERT INTO [TaiKhoan] ([TenTaiKhoan], [MatKhau], [VaiTro]) VALUES (@TenTaiKhoan, @MatKhau, @VaiTro)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [TenTaiKhoan], [MatKhau], [VaiTro] FROM [TaiKhoan]" UpdateCommand="UPDATE [TaiKhoan] SET [MatKhau] = @MatKhau, [VaiTro] = @VaiTro WHERE [TenTaiKhoan] = @TenTaiKhoan">
                <DeleteParameters>
                    <asp:Parameter Name="TenTaiKhoan" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="TenTaiKhoan" Type="String" />
                    <asp:Parameter Name="MatKhau" Type="String" />
                    <asp:Parameter Name="VaiTro" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="MatKhau" Type="String" />
                    <asp:Parameter Name="VaiTro" Type="Int32" />
                    <asp:Parameter Name="TenTaiKhoan" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>

           </div>
        
</asp:Content>

