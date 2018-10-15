<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Account_Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2>Tạo tài khoản</h2>
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>

              <div>
                  <asp:TextBox runat="server" ID="UserName" CssClass="form-control" placeholder="Tên tài khoản" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName"
                    CssClass="text-danger" ErrorMessage="The user name field is required." />
                
              </div>
              <div>
                <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control"  placeholder="Mật khẩu"/>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                    CssClass="text-danger" ErrorMessage="The password field is required." />
              </div>
              <div>
                 <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control"  placeholder="Nhập lại mật khẩu" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
              </div>
              <div>
                   <asp:Button runat="server" OnClick="CreateUser_Click" Text="Tạo tài khoản" CssClass="btn btn-default submit" />
                
              </div>

              <div class="clearfix"></div>

              <div class="separator">
                <p class="change_link">Bạn đã có tài khoản ?
                  <a href="/Index.aspx" class="to_register"> Đăng nhập </a>
                </p>

                <div class="clearfix"></div>
                <br />

               
              </div>
            
      




   
        <asp:ValidationSummary runat="server" CssClass="text-danger" />
   
</asp:Content>

