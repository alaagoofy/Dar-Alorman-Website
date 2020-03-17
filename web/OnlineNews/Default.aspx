<%@ Page Title="أخبار أون لاين" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="News_Default" %>
   <%@ Register Namespace="ASPnetControls" Assembly="ASPnetPagerV2_8" TagPrefix="cc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
           <script type="text/javascript">
               var menuGroup = 'm4'
</script>
    <link href="/css/LightStyle.css" rel="stylesheet" />
    <style>
        .item img {width:80px !important;float:right !important}
        .col-3{width:10% !important}
        .col-9 {width:90% !important}
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
       <!-- Top Page Nav -->
    <section class="top-page-nav">
        <div class="center cf">

            <h2>أخبار أون لاين</h2>

            <div class="navi">
               
                <a href="/home">الرئيسية</a>
                <span></span>
                <a  class="active" href="/News">أخبار أون لاين </a>
               
              
            </div>

        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
      <div class="center cf">

       
          <section class="col-8  blog cf " style="width:100%;float:none">
        <!-- Aside Blog -->
<section class="news" style="margin:0;padding:0;background-size:98% 600px;background-position:top center">
        <aside class="col-4 blog cf" style="width:100%;float:none;display:block">

             <div id="aside-dynamic">
             <div class="menu cf" style="margin:2px 0 0 0">
                    <div class="active" data-attr="m1"> أخبار أون لاين</div>
                 
                </div>
                 </div>
            <div class="recent-events">



          <asp:Repeater ID="Repeater1" runat="server">
              <ItemTemplate>
                   <div class="item cf">
                    <div class="col-3">
                        <img src='<%#Eval("Thumb") %>' runat="server" alt=""/>
                    </div>
                    <div class="col-9">
                        <a class="title" href='<%#Eval("Url") %>' target="_blank" runat="server"><%#Eval("Title") %></a>
                        <div class="info">
                            <div class="calendar">بتاريخ : <%#Eval("DateNews") %></div>
                        </div>
                    </div>
                </div>
              </ItemTemplate>
          </asp:Repeater>




               

             




            </div>
             <div style="direction:ltr">
    <cc:pagerv2_8 id="pager1" runat="server" oncommand="pager_Command" generategotosection="true"
        pagesize="10" />
        </div>
            

        </aside>
    </section>
              </section>
    </div>
</asp:Content>

