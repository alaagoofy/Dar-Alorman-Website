<%@ Page Title="فتاوى صك الاضحية" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Gallery_ShowImages" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
   <%--  <script type="text/javascript">
         var menuGroup = 'm5'
</script>--%>
  
    <style>
        .col-6 {width:25% !important;float:right}
        .mask {height:130px;display:block}
            .col-6 em {display:block;height:90px;overflow:hidden}
                .col-6 em img {}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
        <!-- Top Page Nav -->
    <section class="top-page-nav">
        <div class="center cf">

            <h2>فتاوى صك الاضحية</h2>

            <div class="navi">
               
                <a href="/home">الرئيسية</a>
                <span></span>
                <a href="#" class="active">فتاوى صك الاضحية</a>
            
             
               
              
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
                    <a class="active" href="#">فتاوى صك الاضحية</a>
                   
                </div>

                <div class="photos cf">


         
                     <div class="col-6">
                        <a href='/css/images/sak1.jpg' data-fancybox-group="gallery" class="fancybox">
                           <em> <img  src='/css/images/sak1.jpg'  alt=""/></em>
                            <span class="mask"></span>
                            
                        </a>
                    </div>
          
                      <div class="col-6">
                        <a href='/css/images/sak2.jpg' data-fancybox-group="gallery" class="fancybox">
                           <em> <img src='/css/images/sak2.jpg'  alt=""/></em>
                            <span class="mask"></span>
                            
                        </a>
                    </div>

                      <div class="col-6">
                        <a href='/css/images/sak3.jpg' data-fancybox-group="gallery" class="fancybox">
                           <em> <img  src='/css/images/sak3.jpg'  alt=""/></em>
                            <span class="mask"></span>
                            
                        </a>
                    </div>



            

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
                        <a id="A1" class="title fancybox" href='<%#Eval("Img") %>' runat="server" data-fancybox-group="gallery"><%#Eval("Title") %></a>
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

