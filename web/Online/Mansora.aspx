<%@ Page Title="بث مباشر من مجزر المنصورة" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Mansora.aspx.cs" Inherits="Gallery_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
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

            <h2>بث مباشر من مجزر المنصورة</h2>

            <div class="navi">
               
                <a href="/home">الرئيسية</a>
                <span></span>
                <a  class="active" href="/Online/Mansora.aspx">بث مباشر من مجزر المنصورة </a>
               
              
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
                    <a class="active" href="#">بث مباشر من مجزر المنصورة</a>
                   
                </div>

                <div class="photos cf">

<iframe src="http://new.livestream.com/accounts/10175353/events/3452095/player?width=560&height=315&autoPlay=true&mute=false" width="660" height="415" frameborder="0" scrolling="no"> </iframe>

                </div>


                <div class="pagination cf">
              
                <a class="active" style="width:120px;height:40px;line-height:35px;font-size:14px" 
                    href="/Online"> العودة</a>
             
            </div>
            </div>

         

           
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

