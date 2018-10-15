<%@ Page Title="Log in" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Account_Login" Async="true" %>

<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
   


   
           
              <h1>Đăng nhập</h1>
                
                    <asp:PlaceHolder runat="server" ID="PlaceHolder1" Visible="false">
                        <p class="text-danger">
                            <asp:Literal runat="server" ID="Literal1" />
                        </p>
                    </asp:PlaceHolder>
              <div>

                     <asp:TextBox  runat="server" ID="UserName" CssClass="form-control"  placeholder="Tên tài khoản" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName"
                                CssClass="text-danger" ErrorMessage="Không được để trống tài khoản" />

              </div>
              <div>

                   <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control"  placeholder="Mật khẩu" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="text-danger" ErrorMessage="Không được để trống mật khẩu" />
              </div> 
               <div hidden="hidden" >
                                <asp:CheckBox runat="server" ID="RememberMe" />
                                <asp:Label runat="server" AssociatedControlID="RememberMe">Ghi nhớ ?</asp:Label>
               </div>
              <div>
                <asp:Button runat="server" OnClick="LogIn" Text="Đăng nhập" CssClass="btn btn-default" />
                <a class="reset_pass" href="#">Quên mật khẩu ?</a>
              </div>

              <div class="clearfix"></div>

              <div class="separator">
                <p class="change_link">
                      <asp:HyperLink runat="server" ID="RegisterHyperLink" ViewStateMode="Disabled">Đăng ký</asp:HyperLink> nếu bạn chưa có tài khoản
                    
                </p>

                <div class="clearfix"></div>
                <br />
                
                
              </div>
            
         









  
                    <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                        <p class="text-danger">
                            <asp:Literal runat="server" ID="FailureText" />
                        </p>
                    </asp:PlaceHolder>
                    
                       
                       
                         
                      
                    
                    
                    
                    
               

      
            <section id="socialLoginForm">
                <uc:openauthproviders runat="server" id="OpenAuthLogin" />
            </section>
       
</asp:Content>

