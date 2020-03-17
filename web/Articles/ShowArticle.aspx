<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ShowArticle.aspx.cs" Inherits="Articles_ShowArticle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
     <script type="text/javascript">
         var menuGroup = 'm0'
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
     <!-- Top Page Nav -->
    <section class="top-page-nav">
        <div class="center cf">

            <h2>المقالات</h2>

            <div class="navi">
               
                <a href="/home">الرئيسية</a>
                <span></span>
              
                <a  class="active">
            <asp:Literal ID="txt_title" runat="server"></asp:Literal>
                </a>
               
              
            </div>

        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
        <div class="center cf">

     <section class="col-8 blog">

    <!-- -->
    <article class="big">
        <div class="img-big">
            <asp:Image ID="Image1" runat="server" />
          
           <%-- <div class="like"><p>37</p></div>--%>
            <div class="logo"></div>
        </div>
        <a class="title" style="direction:rtl;text-align:right">
                <asp:Literal ID="txt_title1" runat="server"></asp:Literal></a>
      
       <div style="direction:rtl;text-align:right;line-height:25px">

                    <asp:Literal ID="txt_body" runat="server"></asp:Literal>
       </div>
    </article>

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

