<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin-Sanpham.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="icon" href="images/favicon.ico" type="image/ico" />

    <title>Admin giày store</title>

    <!-- Bootstrap -->
    <link href="../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="../vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- iCheck -->
    <link href="../vendors/iCheck/skins/flat/green.css" rel="stylesheet">
	
    <!-- bootstrap-progressbar -->
    <link href="../vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet">
    <!-- JQVMap -->
    <link href="../vendors/jqvmap/dist/jqvmap.min.css" rel="stylesheet"/>
    <!-- bootstrap-daterangepicker -->
    <link href="../vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="../build/css/custom.min.css" rel="stylesheet">
  </head>

  <body class="nav-md">
      <form id="form1" runat="server">
    <div class="container body">
      <div class="main_container">
        <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a href="Admin-Home.aspx" class="site_title"><i class="fa fa-paw"></i> <span>Giày store</span></a>
            </div>

            <div class="clearfix"></div>

            <!-- menu profile quick info -->
            <div class="profile clearfix">
              <div class="profile_pic">
                <img src="images/img.jpg" alt="..." class="img-circle profile_img">
              </div>
              <div class="profile_info">
                <span>Xin chào,</span>
                <h2>Admin</h2>
              </div>
            </div>
            <!-- /menu profile quick info -->

            <br />

            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                <h3>Menu</h3>
                <ul class="nav side-menu">
                   <li><a href="Admin-LoaiSP.aspx">LOẠI SẢN PHẨM</a>
                  </li>
                    <li><a href="Admin-SanPham.aspx">SẢN PHẨM</a>
                  </li>
                    <li><a href="Admin-HoaDon.aspx">HÓA ĐƠN</a>
                  </li>              
                    <li><a href="Admin-TaiKhoan.aspx">TÀI KHOẢN</a></li>
                </ul>
              </div>

            </div>
            <!-- /sidebar menu -->

            <!-- /menu footer buttons -->
            <div class="sidebar-footer hidden-small">
              <a data-toggle="tooltip" data-placement="top" title="Settings">
                <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="FullScreen">
                <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Lock">
                <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Logout" href="login.html">
                <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
              </a>
            </div>
            <!-- /menu footer buttons -->
          </div>
        </div>

        <!-- top navigation -->
        <div class="top_nav">
          <div class="nav_menu">
            <nav>
              <div class="nav toggle">
                <a id="menu_toggle"><i class="fa fa-bars"></i></a>
              </div>

              <ul class="nav navbar-nav navbar-right">
                <li class="">
                  <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                    <img src="images/img.jpg" alt="">Admin
                    <span class=" fa fa-angle-down"></span>
                  </a>
                  <ul class="dropdown-menu dropdown-usermenu pull-right">
                    <li><a href="javascript:;"> Profile</a></li>
                 
                    <li><a href="javascript:;">Help</a></li>
                    <li><a href="login.html"><i class="fa fa-sign-out pull-right"></i> Log Out</a></li>
                  </ul>
                </li>

              </ul>
            </nav>
          </div>
        </div>
        <!-- /top navigation -->

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
            
        <!-- footer content -->
        <footer>
          <div class="pull-right">
            Gentelella - Bootstrap Admin Template by <a href="https://colorlib.com">Colorlib</a>
          </div>
          <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->
      </div>
    </div>

    <!-- jQuery -->
    <script src="../vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="../vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="../vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="../vendors/nprogress/nprogress.js"></script>
    <!-- Chart.js -->
    <script src="../vendors/Chart.js/dist/Chart.min.js"></script>
    <!-- gauge.js -->
    <script src="../vendors/gauge.js/dist/gauge.min.js"></script>
    <!-- bootstrap-progressbar -->
    <script src="../vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
    <!-- iCheck -->
    <script src="../vendors/iCheck/icheck.min.js"></script>
    <!-- Skycons -->
    <script src="../vendors/skycons/skycons.js"></script>
    <!-- Flot -->
    <script src="../vendors/Flot/jquery.flot.js"></script>
    <script src="../vendors/Flot/jquery.flot.pie.js"></script>
    <script src="../vendors/Flot/jquery.flot.time.js"></script>
    <script src="../vendors/Flot/jquery.flot.stack.js"></script>
    <script src="../vendors/Flot/jquery.flot.resize.js"></script>
    <!-- Flot plugins -->
    <script src="../vendors/flot.orderbars/js/jquery.flot.orderBars.js"></script>
    <script src="../vendors/flot-spline/js/jquery.flot.spline.min.js"></script>
    <script src="../vendors/flot.curvedlines/curvedLines.js"></script>
    <!-- DateJS -->
    <script src="../vendors/DateJS/build/date.js"></script>
    <!-- JQVMap -->
    <script src="../vendors/jqvmap/dist/jquery.vmap.js"></script>
    <script src="../vendors/jqvmap/dist/maps/jquery.vmap.world.js"></script>
    <script src="../vendors/jqvmap/examples/js/jquery.vmap.sampledata.js"></script>
    <!-- bootstrap-daterangepicker -->
    <script src="../vendors/moment/min/moment.min.js"></script>
    <script src="../vendors/bootstrap-daterangepicker/daterangepicker.js"></script>

    <!-- Custom Theme Scripts -->
    <script src="../build/js/custom.min.js"></script>
	
      </form>
	
  </body>
</html>

	