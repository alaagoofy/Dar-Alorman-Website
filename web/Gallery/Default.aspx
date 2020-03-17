<%@ Page Title="معرض الصور" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Gallery_Default" %>
 <%@ Register Namespace="ASPnetControls" Assembly="ASPnetPagerV2_8" TagPrefix="cc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
      <link href="/css/LightStyle.css" rel="stylesheet" />
         <script type="text/javascript">
             var menuGroup = 'm5'
</script>
  
    <style>
        /*.col-6 {width:25% !important}*/
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
      <!-- Top Page Nav -->
    <section class="top-page-nav">
        <div class="center cf">

            <h2>معرض الصور</h2>

            <div class="navi">
               
                <a href="/home">الرئيسية</a>
                <span></span>
                <a  class="active" href="/Gallery">معرض الصور </a>
               
              
            </div>

        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
       <div class="center cf">

        <!-- Gallery -->
        <section class="col-8 blog cf">

           <div class="gallery">

                <div class="menu cf">
                    <a class="active" href="#">معرض الصور</a>
                   
                </div>

                <div class="photos cf">


           <asp:Repeater ID="Repeater1" runat="server">
               <ItemTemplate>
                     <div class="col-6" style="float:right">
                        <a href='<%# "ShowImages.aspx?ID=" + Eval("ID") %>'>
                           <em> <img src='<%#Eval("Thumb") %>' style="height:200px;" runat="server" alt=""/></em>
                            <span style="font-size:14px;background:#72A248;background-image:none;display:block;height:35px;line-height:35px;text-align:center;color:#fff"><em><%#Eval("Title") %></em></span>
                            
                        </a>
                    </div>
               </ItemTemplate>
           </asp:Repeater>





            

                </div>
                   <div style="direction:ltr">
    <cc:pagerv2_8 id="pager1" runat="server" oncommand="pager_Command" generategotosection="true"
        pagesize="14" />
        </div>
            </div>

          <%--  <div class="pagination cf">
              
                <a class="active" style="width:200px;height:40px;line-height:35px;font-size:14px" href="https://www.facebook.com/OrmanCharityAssociation/photos_stream?tab=photos_albums" target="_blank">مشاهدة المزيد من معرض الصور</a>
             
            </div>--%>

           
        </section>

        <!-- Aside Blog -->
        <aside class="col-4 blog cf">

             <div id="aside-dynamic">
             <div class="menu cf" style="margin:2px 0 0 0">
                    <div class="active" data-attr="m1">اخر الأخبار</div>
                 
                </div>
                 </div>
            <div class="recent-events">

               <asp:Repeater ID="Repeater2" runat="server">
              <ItemTemplate>
                   <div class="item cf">
                    <div class="col-3">
                        <img id="Img1" src='<%#Eval("Thumb") %>' runat="server" alt=""/>
                    </div>
                    <div class="col-9">
                        <a id="A1" class="title fancybox" href='<%#Eval("Img") %>' data-fancybox-group="gallery"><%#Eval("Title") %></a>
                        <div class="info">
                            <div class="calendar">بتاريخ : <%#Eval("DateNews") %></div>
                        </div>
                    </div>
                </div>
              </ItemTemplate>
          </asp:Repeater>

            </div>



        </aside>

    </div>
</asp:Content>

