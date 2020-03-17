<%@ Page Title="بث ذبح الاضاحى بث مباشر" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Gallery_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
         <script type="text/javascript">
             var menuGroup = 'm0'
</script>
  
    <style>
        /*.col-6 {width:25% !important}*/
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
      <!-- Top Page Nav -->
    <section class="top-page-nav">
        <div class="center cf">

            <h2>البث المباشر</h2>

            <div class="navi">
               
                <a href="/home">الرئيسية</a>
                <span></span>
                <a  class="active" href="/Online">البث المباشر لذبح الاضاحى </a>
               
              
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
                    <a class="active" href="#">البث المباشر لذبح الاضاحى</a>
                   
                </div>

                <div class="photos cf">


        
              
          
                        <div class="col-6" style="float:right">
                        <a href='/Online/Gharbia.aspx'>
                           <em> <img id="Img3" src='/css/images/magzr2.jpg' style="height:200px !important" runat="server" alt=""/></em>
                            <span class="mask" style="background-image:none"><em>مجزر الجعفرية محافظة الغربية</em></span>
                            
                        </a>
                    </div>
                     <div class="col-6" style="float:right">
                        <a href='/Online/Giza.aspx'>
                           <em> <img id="Img2" src='/css/images/magzr5.jpg' style="height:200px !important" runat="server" alt=""/></em>
                            <span class="mask" style="background-image:none"><em>مجزر العياط محافظة الجيزة</em></span>
                            
                        </a>
                    </div>


                           <div class="col-6" style="float:right">
                        <a href='/Online/Brazil.aspx'>
                           <em> <img id="Img6" src='/css/images/magzr4.jpg' style="height:200px !important" runat="server" alt=""/></em>
                            <span class="mask" style="background-image:none"><em>بث مباشر من البرازيل</em></span>
                            
                        </a>
                    </div>
                 



                     <div class="col-6" style="float:right">
                        <a href='/Online/Mansora.aspx'>
                           <em> <img id="Img4" src='/css/images/magzr3.jpg' style="height:200px !important" runat="server" alt=""/></em>
                            <span class="mask" style="background-image:none"><em>مجزر المنصورة</em></span>
                            
                        </a>
                    </div>



                     <div class="col-6" style="float:right">
                        <a href='/Online/Fayom.aspx'>
                           <em> <img id="Img5" src='/css/images/magzr1.jpg' style="height:200px !important" runat="server" alt=""/></em>
                            <span class="mask" style="background-image:none"><em>مجزر الفيوم</em></span>
                            
                        </a>
                    </div>



            

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

