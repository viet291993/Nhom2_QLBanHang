<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin-HoaDon.aspx.cs" Inherits="Default2" %>

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

	