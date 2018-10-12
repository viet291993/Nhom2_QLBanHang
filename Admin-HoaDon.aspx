<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdmin.master" AutoEventWireup="true" CodeFile="Admin-HoaDon.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="right_col" role="main">
         <h2>Quản lý hóa đơn</h2>

            <asp:ListView ID="ListView1" runat="server" DataKeyNames="MaHD" DataSourceID="HoaDon" InsertItemPosition="LastItem">
                <AlternatingItemTemplate>
                    <tr style="background-color: #FFFFFF;color: #284775;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        </td>
                        <td>
                            <asp:Label ID="MaHDLabel" runat="server" Text='<%# Eval("MaHD") %>' />
                        </td>
                        <td>
                            <asp:Label ID="NgayBanLabel" runat="server" Text='<%# Eval("NgayBan") %>' />
                        </td>
                        <td>
                            <asp:Label ID="NhanVien_MaNVLabel" runat="server" Text='<%# Eval("NhanVien_MaNV") %>' />
                        </td>
                        <td>
                            <asp:Label ID="KhachHang_MaKHLabel" runat="server" Text='<%# Eval("KhachHang_MaKH") %>' />
                        </td>
                        <td>
                            <asp:Label ID="TongTienLabel" runat="server" Text='<%# Eval("TongTien") %>' />
                        </td>
                        <td>
                            <asp:Label ID="TrangThaiLabel" runat="server" Text='<%# Eval("TrangThai") %>' />
                        </td>
                    </tr>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <tr style="background-color: #999999;">
                        <td>
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                        </td>
                        <td>
                            <asp:Label ID="MaHDLabel1" runat="server" Text='<%# Eval("MaHD") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="NgayBanTextBox" runat="server" Text='<%# Bind("NgayBan") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="NhanVien_MaNVTextBox" runat="server" Text='<%# Bind("NhanVien_MaNV") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="KhachHang_MaKHTextBox" runat="server" Text='<%# Bind("KhachHang_MaKH") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="TongTienTextBox" runat="server" Text='<%# Bind("TongTien") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="TrangThaiTextBox" runat="server" Text='<%# Bind("TrangThai") %>' />
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
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                        </td>
                        <td>&nbsp;</td>
                        <td>
                            <asp:TextBox ID="NgayBanTextBox" runat="server" Text='<%# Bind("NgayBan") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="NhanVien_MaNVTextBox" runat="server" Text='<%# Bind("NhanVien_MaNV") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="KhachHang_MaKHTextBox" runat="server" Text='<%# Bind("KhachHang_MaKH") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="TongTienTextBox" runat="server" Text='<%# Bind("TongTien") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="TrangThaiTextBox" runat="server" Text='<%# Bind("TrangThai") %>' />
                        </td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="background-color: #E0FFFF;color: #333333;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        </td>
                        <td>
                            <asp:Label ID="MaHDLabel" runat="server" Text='<%# Eval("MaHD") %>' />
                        </td>
                        <td>
                            <asp:Label ID="NgayBanLabel" runat="server" Text='<%# Eval("NgayBan") %>' />
                        </td>
                        <td>
                            <asp:Label ID="NhanVien_MaNVLabel" runat="server" Text='<%# Eval("NhanVien_MaNV") %>' />
                        </td>
                        <td>
                            <asp:Label ID="KhachHang_MaKHLabel" runat="server" Text='<%# Eval("KhachHang_MaKH") %>' />
                        </td>
                        <td>
                            <asp:Label ID="TongTienLabel" runat="server" Text='<%# Eval("TongTien") %>' />
                        </td>
                        <td>
                            <asp:Label ID="TrangThaiLabel" runat="server" Text='<%# Eval("TrangThai") %>' />
                        </td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                    <tr runat="server" style="background-color: #E0FFFF;color: #333333;">
                                        <th runat="server"></th>
                                        <th runat="server">MaHD</th>
                                        <th runat="server">NgayBan</th>
                                        <th runat="server">NhanVien_MaNV</th>
                                        <th runat="server">KhachHang_MaKH</th>
                                        <th runat="server">TongTien</th>
                                        <th runat="server">TrangThai</th>
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
                            <asp:Label ID="MaHDLabel" runat="server" Text='<%# Eval("MaHD") %>' />
                        </td>
                        <td>
                            <asp:Label ID="NgayBanLabel" runat="server" Text='<%# Eval("NgayBan") %>' />
                        </td>
                        <td>
                            <asp:Label ID="NhanVien_MaNVLabel" runat="server" Text='<%# Eval("NhanVien_MaNV") %>' />
                        </td>
                        <td>
                            <asp:Label ID="KhachHang_MaKHLabel" runat="server" Text='<%# Eval("KhachHang_MaKH") %>' />
                        </td>
                        <td>
                            <asp:Label ID="TongTienLabel" runat="server" Text='<%# Eval("TongTien") %>' />
                        </td>
                        <td>
                            <asp:Label ID="TrangThaiLabel" runat="server" Text='<%# Eval("TrangThai") %>' />
                        </td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>

            <asp:SqlDataSource ID="HoaDon" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\QLBanHangNhom2.mdf;Integrated Security=True" DeleteCommand="DELETE FROM [HoaDon] WHERE [MaHD] = @MaHD" InsertCommand="INSERT INTO [HoaDon] ([NgayBan], [NhanVien_MaNV], [KhachHang_MaKH], [TongTien], [TrangThai]) VALUES (@NgayBan, @NhanVien_MaNV, @KhachHang_MaKH, @TongTien, @TrangThai)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [HoaDon]" UpdateCommand="UPDATE [HoaDon] SET [NgayBan] = @NgayBan, [NhanVien_MaNV] = @NhanVien_MaNV, [KhachHang_MaKH] = @KhachHang_MaKH, [TongTien] = @TongTien, [TrangThai] = @TrangThai WHERE [MaHD] = @MaHD">
                <DeleteParameters>
                    <asp:Parameter Name="MaHD" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter DbType="Date" Name="NgayBan" />
                    <asp:Parameter Name="NhanVien_MaNV" Type="Int32" />
                    <asp:Parameter Name="KhachHang_MaKH" Type="Int32" />
                    <asp:Parameter Name="TongTien" Type="Decimal" />
                    <asp:Parameter Name="TrangThai" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter DbType="Date" Name="NgayBan" />
                    <asp:Parameter Name="NhanVien_MaNV" Type="Int32" />
                    <asp:Parameter Name="KhachHang_MaKH" Type="Int32" />
                    <asp:Parameter Name="TongTien" Type="Decimal" />
                    <asp:Parameter Name="TrangThai" Type="Int32" />
                    <asp:Parameter Name="MaHD" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>

           </div>
</asp:Content>

