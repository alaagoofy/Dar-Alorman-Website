<%@ Page Title="Log in" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Account_Login" %>
<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>




<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
       <script type="text/javascript">
           var menuGroup = 'm4'
</script>
    <style>
        .menu a {color:#fff}
            .menu a:hover {color:#000}
        .form {direction:rtl}
        tr, th, td {padding:10px;text-align:center;border:1px solid #ccc}
        table {margin-top:30px}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
      <!-- Top Page Nav -->
    <section class="top-page-nav">
        <div class="center cf">

            <h2>تسجيل الدخول</h2>

            <div class="navi">
               
                <a href="/home">الرئيسية</a>
                <span></span>
                <a  class="active" href="/News">نسجيل الدخول </a>
               
              
            </div>

        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
       <div class="center cf">

        <!-- Gallery -->
        <section class="col-8 blog cf">
     
    
    <section id="loginForm">
      
        <asp:Login ID="Login1" runat="server" ViewStateMode="Disabled" RenderOuterTable="false">
            <LayoutTemplate>
                <p class="validation-summary-errors">
                    <asp:Literal runat="server" ID="FailureText" />
                </p>
               
                   
                    <ol>
                        <li>
                            <asp:Label ID="Label1" runat="server" AssociatedControlID="UserName">User name</asp:Label>
                            <asp:TextBox runat="server" ID="UserName" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UserName" CssClass="field-validation-error" ErrorMessage="The user name field is required." />
                        </li>
                        <li>
                            <asp:Label ID="Label2" runat="server" AssociatedControlID="Password">Password</asp:Label>
                            <asp:TextBox runat="server" ID="Password" TextMode="Password" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Password" CssClass="field-validation-error" ErrorMessage="The password field is required." />
                        </li>
                       
                    </ol>
                    <asp:Button ID="Button1" CssClass="more" runat="server" CommandName="Login" Text="Log in" />
              
            </LayoutTemplate>
        </asp:Login>
     
    </section>

   
           
        </section>

        <!-- Aside Blog -->
        <aside class="col-4 blog cf">

             <div id="aside-dynamic">
                 <div class="menu cf" style="margin:2px 0 0 0">
                    <div class="active">
                    <a href="Articles.aspx">     المقالات
                        </a>
                    </div>
                 
                </div>
             <div class="menu cf" style="margin:2px 0 0 0">
                    <div class="active">
                    <a href="News.aspx">     الأخبار
                        </a>
                    </div>
                 
                </div>
                  <div class="menu cf" style="margin:2px 0 0 0">
                    <div class="active"><a href="Gallery.aspx"> ألبومات الصور</a></div>

                 
                </div>

                  <div class="menu cf" style="margin:2px 0 0 0">
                    <div class="active"><a href="GalleryImages.aspx">  الصور</a></div>

                 
                </div>
                 </div>
         


        </aside>

    </div>
</asp:Content>
