<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdmin.master" AutoEventWireup="true" CodeFile="Admin-Sanpham.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

        <!-- page content -->
        <div class="right_col" role="main">
          <!-- top tiles -->
          <!-- /top tiles -->
             <h2>Quản lý sản phẩm</h2>

<asp:ListView ID="ListView1" runat="server" DataSourceID="SanPham" DataKeyNames="ID">
        <AlternatingItemTemplate>
            <tr style="background-color: #FFFFFF; color: #284775;">
                <td>
                    <asp:Button runat="server" CommandName="Delete" Text="Delete" ID="DeleteButton" />
                    <asp:Button runat="server" CommandName="Edit" Text="Edit" ID="EditButton" />
                </td>
                <td>
                    <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                </td>
                <td>
                    <asp:Label ID="MaSPLabel" runat="server" Text='<%# Eval("MaSP") %>' />
                </td>
                <td>
                    <asp:Label ID="TenSPLabel" runat="server" Text='<%# Eval("TenSP") %>' />
                </td>
                <td>
                    <asp:Label ID="KichCoLabel" runat="server" Text='<%# Eval("KichCo") %>' />
                </td>
                <td>
                    <asp:Label ID="SoLuongLabel" runat="server" Text='<%# Eval("SoLuong") %>' />
                </td>
                <td>
                    <asp:Label ID="ViTriKhoLabel" runat="server" Text='<%# Eval("ViTriKho") %>' />
                </td>
                <td>
                    <asp:Image Width="80px" ID="HinhAnhLabel" runat="server" ImageUrl='<%# Eval("HinhAnh") %>' />
                </td>
                <td>
                    <asp:Label ID="GhiChuLabel" runat="server" Text='<%# Eval("GhiChu") %>' />
                </td>
                <td>
                    <asp:CheckBox ID="TrangThaiCheckBox" runat="server" Checked='<%# Eval("TrangThai") %>' Enabled="false" />
                </td>
                <td>
                    <asp:Label ID="GiaBanLabel" runat="server" Text='<%# Eval("GiaBan") %>' />
                </td>
                <td>
                    <asp:Label ID="LoaiSanPham_MaLoaiSPLabel" runat="server" Text='<%# Eval("LoaiSanPham_MaLoaiSP") %>' />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <tr style="background-color: #999999;">
                <td>
                    <asp:Button runat="server" CommandName="Update" Text="Update" ID="UpdateButton" />
                    <asp:Button runat="server" CommandName="Cancel" Text="Cancel" ID="CancelButton" />
                </td>
                <td>
                    <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
                </td>
                <td>
                    <asp:TextBox ID="MaSPTextBox" runat="server" Text='<%# Bind("MaSP") %>' />
                </td>
                <td>
                    <asp:TextBox ID="TenSPTextBox" runat="server" Text='<%# Bind("TenSP") %>' />
                </td>
                <td>
                    <asp:TextBox ID="KichCoTextBox" runat="server" Text='<%# Bind("KichCo") %>' />
                </td>
                <td>
                    <asp:TextBox ID="SoLuongTextBox" runat="server" Text='<%# Bind("SoLuong") %>' />
                </td>
                <td>
                    <asp:TextBox ID="ViTriKhoTextBox" runat="server" Text='<%# Bind("ViTriKho") %>' />
                </td>
                <td>
                    <asp:TextBox ID="HinhAnhTextBox" runat="server" Text='<%# Bind("HinhAnh") %>' />
                </td>
                <td>
                    <asp:TextBox ID="GhiChuTextBox" runat="server" Text='<%# Bind("GhiChu") %>' />
                </td>
                <td>
                    <asp:CheckBox ID="TrangThaiCheckBox" runat="server" Checked='<%# Bind("TrangThai") %>' />
                </td>
                <td>
                    <asp:TextBox ID="GiaBanTextBox" runat="server" Text='<%# Bind("GiaBan") %>' />
                </td>
                <td>
                    <asp:TextBox ID="LoaiSanPham_MaLoaiSPTextBox" runat="server" Text='<%# Bind("LoaiSanPham_MaLoaiSP") %>' />
                </td>
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
                <td>
                    &nbsp;</td>
                <td>
                    <asp:TextBox ID="MaSPTextBox" runat="server" Text='<%# Bind("MaSP") %>' />
                </td>
                <td>
                    <asp:TextBox ID="TenSPTextBox" runat="server" Text='<%# Bind("TenSP") %>' />
                </td>
                <td>
                    <asp:TextBox ID="KichCoTextBox" runat="server" Text='<%# Bind("KichCo") %>' />
                </td>
                <td>
                    <asp:TextBox ID="SoLuongTextBox" runat="server" Text='<%# Bind("SoLuong") %>' />
                </td>
                <td>
                    <asp:TextBox ID="ViTriKhoTextBox" runat="server" Text='<%# Bind("ViTriKho") %>' />
                </td>
                <td>
                    <asp:TextBox ID="HinhAnhTextBox" runat="server" Text='<%# Bind("HinhAnh") %>' />
                </td>
                <td>
                    <asp:TextBox ID="GhiChuTextBox" runat="server" Text='<%# Bind("GhiChu") %>' />
                </td>
                <td>
                    <asp:CheckBox ID="TrangThaiCheckBox" runat="server" Checked='<%# Bind("TrangThai") %>' />
                </td>
                <td>
                    <asp:TextBox ID="GiaBanTextBox" runat="server" Text='<%# Bind("GiaBan") %>' />
                </td>
                <td>
                    <asp:TextBox ID="LoaiSanPham_MaLoaiSPTextBox" runat="server" Text='<%# Bind("LoaiSanPham_MaLoaiSP") %>' />
                </td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="background-color: #E0FFFF; color: #333333;">
                <td>
                    <asp:Button runat="server" CommandName="Delete" Text="Delete" ID="DeleteButton" />
                    <asp:Button runat="server" CommandName="Edit" Text="Edit" ID="EditButton" />
                </td>
                <td>
                    <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                </td>
                <td>
                    <asp:Label ID="MaSPLabel" runat="server" Text='<%# Eval("MaSP") %>' />
                </td>
                <td>
                    <asp:Label ID="TenSPLabel" runat="server" Text='<%# Eval("TenSP") %>' />
                </td>
                <td>
                    <asp:Label ID="KichCoLabel" runat="server" Text='<%# Eval("KichCo") %>' />
                </td>
                <td>
                    <asp:Label ID="SoLuongLabel" runat="server" Text='<%# Eval("SoLuong") %>' />
                </td>
                <td>
                    <asp:Label ID="ViTriKhoLabel" runat="server" Text='<%# Eval("ViTriKho") %>' />
                </td>
                <td>
                    <asp:Image  Width="80px" ID="HinhAnhLabel" runat="server" ImageUrl='<%# Eval("HinhAnh") %>' />
                </td>
                <td>
                    <asp:Label ID="GhiChuLabel" runat="server" Text='<%# Eval("GhiChu") %>' />
                </td>
                <td>
                    <asp:CheckBox ID="TrangThaiCheckBox" runat="server" Checked='<%# Eval("TrangThai") %>' Enabled="false" />
                </td>
                <td>
                    <asp:Label ID="GiaBanLabel" runat="server" Text='<%# Eval("GiaBan") %>' />
                </td>
                <td>
                    <asp:Label ID="LoaiSanPham_MaLoaiSPLabel" runat="server" Text='<%# Eval("LoaiSanPham_MaLoaiSP") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table runat="server" id="itemPlaceholderContainer" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px; font-family: Verdana, Arial, Helvetica, sans-serif;" border="1">
                            <tr runat="server" style="background-color: #E0FFFF; color: #333333;">
                                <th runat="server"></th>
                                <th runat="server">ID</th>
                                <th runat="server">MaSP</th>
                                <th runat="server">TenSP</th>
                                <th runat="server">KichCo</th>
                                <th runat="server">SoLuong</th>
                                <th runat="server">ViTriKho</th>
                                <th runat="server">HinhAnh</th>
                                <th runat="server">GhiChu</th>
                                <th runat="server">TrangThai</th>
                                <th runat="server">GiaBan</th>
                                <th runat="server">LoaiSanPham_MaLoaiSP</th>
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
                    <asp:Button runat="server" CommandName="Edit" Text="Edit" ID="EditButton" />
                </td>
                <td>
                    <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                </td>
                <td>
                    <asp:Label ID="MaSPLabel" runat="server" Text='<%# Eval("MaSP") %>' />
                </td>
                <td>
                    <asp:Label ID="TenSPLabel" runat="server" Text='<%# Eval("TenSP") %>' />
                </td>
                <td>
                    <asp:Label ID="KichCoLabel" runat="server" Text='<%# Eval("KichCo") %>' />
                </td>
                <td>
                    <asp:Label ID="SoLuongLabel" runat="server" Text='<%# Eval("SoLuong") %>' />
                </td>
                <td>
                    <asp:Label ID="ViTriKhoLabel" runat="server" Text='<%# Eval("ViTriKho") %>' />
                </td>
                <td>
                    <asp:Label ID="HinhAnhLabel" runat="server" Text='<%# Eval("HinhAnh") %>' />
                </td>
                <td>
                    <asp:Label ID="GhiChuLabel" runat="server" Text='<%# Eval("GhiChu") %>' />
                </td>
                <td>
                    <asp:CheckBox ID="TrangThaiCheckBox" runat="server" Checked='<%# Eval("TrangThai") %>' Enabled="false" />
                </td>
                <td>
                    <asp:Label ID="GiaBanLabel" runat="server" Text='<%# Eval("GiaBan") %>' />
                </td>
                <td>
                    <asp:Label ID="LoaiSanPham_MaLoaiSPLabel" runat="server" Text='<%# Eval("LoaiSanPham_MaLoaiSP") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>

    <asp:SqlDataSource runat="server" ID="SanPham" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\QLBanHangNhom2.mdf;Integrated Security=True" DeleteCommand="DELETE FROM [SanPham] WHERE [ID] = @ID" InsertCommand="INSERT INTO [SanPham] ([MaSP], [TenSP], [KichCo], [SoLuong], [ViTriKho], [HinhAnh], [GhiChu], [TrangThai], [GiaBan], [LoaiSanPham_MaLoaiSP]) VALUES (@MaSP, @TenSP, @KichCo, @SoLuong, @ViTriKho, @HinhAnh, @GhiChu, @TrangThai, @GiaBan, @LoaiSanPham_MaLoaiSP)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [SanPham]" UpdateCommand="UPDATE [SanPham] SET [MaSP] = @MaSP, [TenSP] = @TenSP, [KichCo] = @KichCo, [SoLuong] = @SoLuong, [ViTriKho] = @ViTriKho, [HinhAnh] = @HinhAnh, [GhiChu] = @GhiChu, [TrangThai] = @TrangThai, [GiaBan] = @GiaBan, [LoaiSanPham_MaLoaiSP] = @LoaiSanPham_MaLoaiSP WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MaSP" Type="String"></asp:Parameter>
            <asp:Parameter Name="TenSP" Type="String"></asp:Parameter>
            <asp:Parameter Name="KichCo" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="SoLuong" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="ViTriKho" Type="String" />
            <asp:Parameter Name="HinhAnh" Type="String"></asp:Parameter>
            <asp:Parameter Name="GhiChu" Type="String"></asp:Parameter>
            <asp:Parameter Name="TrangThai" Type="Boolean"></asp:Parameter>
            <asp:Parameter Name="GiaBan" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="LoaiSanPham_MaLoaiSP" Type="Int32"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="MaSP" Type="String"></asp:Parameter>
            <asp:Parameter Name="TenSP" Type="String"></asp:Parameter>
            <asp:Parameter Name="KichCo" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="SoLuong" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="ViTriKho" Type="String" />
            <asp:Parameter Name="HinhAnh" Type="String"></asp:Parameter>
            <asp:Parameter Name="GhiChu" Type="String"></asp:Parameter>
            <asp:Parameter Name="TrangThai" Type="Boolean"></asp:Parameter>
            <asp:Parameter Name="GiaBan" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="LoaiSanPham_MaLoaiSP" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="ID" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
</div>
</asp:Content>

