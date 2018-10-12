<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdmin.master" AutoEventWireup="true" CodeFile="Admin-HoaDon.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- page content -->
        <div class="right_col" role="main">
          <!-- top tiles -->
          <!-- /top tiles -->     
         <h2>Quản lý hóa đơn</h2>
        <asp:ListView ID="ListView1" runat="server" DataSourceID="HoaDon" DataKeyNames="MaHD" InsertItemPosition="LastItem">
            <AlternatingItemTemplate>
                <tr style="background-color: #FFFFFF; color: #284775;">
                    <td>
                        <asp:Button runat="server" CommandName="Delete" Text="Delete" ID="DeleteButton" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Label Text='<%# Eval("MaHD") %>' runat="server" ID="MaHDLabel" /></td>
                    <td>
                        <asp:Label Text='<%# Eval("NgayBan") %>' runat="server" ID="NgayBanLabel" /></td>
                    <td>
                        <asp:Label Text='<%# Eval("NhanVien_MaNV") %>' runat="server" ID="NhanVien_MaNVLabel" /></td>
                    <td>
                        <asp:Label Text='<%# Eval("KhachHang_MaKH") %>' runat="server" ID="KhachHang_MaKHLabel" /></td>
                    <td>
                        <asp:Label Text='<%# Eval("TongTien") %>' runat="server" ID="TongTienLabel" /></td>
                    <td>
                        <asp:Label Text='<%# Eval("TrangThai") %>' runat="server" ID="TrangThaiLabel" /></td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="background-color: #999999;">
                    <td>
                        <asp:Button runat="server" CommandName="Update" Text="Update" ID="UpdateButton" />
                        <asp:Button runat="server" CommandName="Cancel" Text="Cancel" ID="CancelButton" />
                    </td>
                    <td>
                        <asp:Label Text='<%# Eval("MaHD") %>' runat="server" ID="MaHDLabel1" /></td>
                    <td>
                        <asp:TextBox Text='<%# Bind("NgayBan") %>' runat="server" ID="NgayBanTextBox" /></td>
                    <td>
                        <asp:TextBox Text='<%# Bind("NhanVien_MaNV") %>' runat="server" ID="NhanVien_MaNVTextBox" /></td>
                    <td>
                        <asp:TextBox Text='<%# Bind("KhachHang_MaKH") %>' runat="server" ID="KhachHang_MaKHTextBox" /></td>
                    <td>
                        <asp:TextBox Text='<%# Bind("TongTien") %>' runat="server" ID="TongTienTextBox" /></td>
                    <td>
                        <asp:TextBox Text='<%# Bind("TrangThai") %>' runat="server" ID="TrangThaiTextBox" /></td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px;">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button runat="server" CommandName="Insert" Text="Insert" ID="InsertButton" />
                        <asp:Button runat="server" CommandName="Cancel" Text="Clear" ID="CancelButton" />
                    </td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:TextBox Text='<%# Bind("NgayBan") %>' runat="server" ID="NgayBanTextBox" /></td>
                    <td>
                        <asp:TextBox Text='<%# Bind("NhanVien_MaNV") %>' runat="server" ID="NhanVien_MaNVTextBox" /></td>
                    <td>
                        <asp:TextBox Text='<%# Bind("KhachHang_MaKH") %>' runat="server" ID="KhachHang_MaKHTextBox" /></td>
                    <td>
                        <asp:TextBox Text='<%# Bind("TongTien") %>' runat="server" ID="TongTienTextBox" /></td>
                    <td>
                        <asp:TextBox Text='<%# Bind("TrangThai") %>' runat="server" ID="TrangThaiTextBox" /></td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="background-color: #E0FFFF; color: #333333;">
                    <td>
                        <asp:Button runat="server" CommandName="Delete" Text="Delete" ID="DeleteButton" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Label Text='<%# Eval("MaHD") %>' runat="server" ID="MaHDLabel" /></td>
                    <td>
                        <asp:Label Text='<%# Eval("NgayBan") %>' runat="server" ID="NgayBanLabel" /></td>
                    <td>
                        <asp:Label Text='<%# Eval("NhanVien_MaNV") %>' runat="server" ID="NhanVien_MaNVLabel" /></td>
                    <td>
                        <asp:Label Text='<%# Eval("KhachHang_MaKH") %>' runat="server" ID="KhachHang_MaKHLabel" /></td>
                    <td>
                        <asp:Label Text='<%# Eval("TongTien") %>' runat="server" ID="TongTienLabel" /></td>
                    <td>
                        <asp:Label Text='<%# Eval("TrangThai") %>' runat="server" ID="TrangThaiLabel" /></td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table runat="server" id="itemPlaceholderContainer" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px; font-family: Verdana, Arial, Helvetica, sans-serif;" border="1">
                                <tr runat="server" style="background-color: #E0FFFF; color: #333333;">
                                    <th runat="server"></th>
                                    <th runat="server">MaHD</th>
                                    <th runat="server">NgayBan</th>
                                    <th runat="server">NhanVien_MaNV</th>
                                    <th runat="server">KhachHang_MaKH</th>
                                    <th runat="server">TongTien</th>
                                    <th runat="server">TrangThai</th>
                                </tr>
                                <tr runat="server" id="itemPlaceholder"></tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center; background-color: #5D7B9D; font-family: Verdana, Arial, Helvetica, sans-serif; color: #FFFFFF">
                            <asp:DataPager runat="server" ID="DataPager1">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False"></asp:NextPreviousPagerField>
                                    <asp:NumericPagerField></asp:NumericPagerField>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False"></asp:NextPreviousPagerField>
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="background-color: #E2DED6; font-weight: bold; color: #333333;">
                    <td>
                        <asp:Button runat="server" CommandName="Delete" Text="Delete" ID="DeleteButton" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Label Text='<%# Eval("MaHD") %>' runat="server" ID="MaHDLabel" /></td>
                    <td>
                        <asp:Label Text='<%# Eval("NgayBan") %>' runat="server" ID="NgayBanLabel" /></td>
                    <td>
                        <asp:Label Text='<%# Eval("NhanVien_MaNV") %>' runat="server" ID="NhanVien_MaNVLabel" /></td>
                    <td>
                        <asp:Label Text='<%# Eval("KhachHang_MaKH") %>' runat="server" ID="KhachHang_MaKHLabel" /></td>
                    <td>
                        <asp:Label Text='<%# Eval("TongTien") %>' runat="server" ID="TongTienLabel" /></td>
                    <td>
                        <asp:Label Text='<%# Eval("TrangThai") %>' runat="server" ID="TrangThaiLabel" /></td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource runat="server" ID="HoaDon" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\QLBanHangNhom2.mdf;Integrated Security=True;Connect Timeout=30" DeleteCommand="DELETE FROM [HoaDon] WHERE [MaHD] = @MaHD" InsertCommand="INSERT INTO [HoaDon] ([NgayBan], [NhanVien_MaNV], [KhachHang_MaKH], [TongTien], [TrangThai]) VALUES (@NgayBan, @NhanVien_MaNV, @KhachHang_MaKH, @TongTien, @TrangThai)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [MaHD], [NgayBan], [NhanVien_MaNV], [KhachHang_MaKH], [TongTien], [TrangThai] FROM [HoaDon]" UpdateCommand="UPDATE [HoaDon] SET [NgayBan] = @NgayBan, [NhanVien_MaNV] = @NhanVien_MaNV, [KhachHang_MaKH] = @KhachHang_MaKH, [TongTien] = @TongTien, [TrangThai] = @TrangThai WHERE [MaHD] = @MaHD">
            <DeleteParameters>
                <asp:Parameter Name="MaHD" Type="Int32"></asp:Parameter>
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter DbType="Date" Name="NgayBan"></asp:Parameter>
                <asp:Parameter Name="NhanVien_MaNV" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="KhachHang_MaKH" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="TongTien" Type="Decimal"></asp:Parameter>
                <asp:Parameter Name="TrangThai" Type="Int32"></asp:Parameter>
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter DbType="Date" Name="NgayBan"></asp:Parameter>
                <asp:Parameter Name="NhanVien_MaNV" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="KhachHang_MaKH" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="TongTien" Type="Decimal"></asp:Parameter>
                <asp:Parameter Name="TrangThai" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="MaHD" Type="Int32"></asp:Parameter>
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>

