<%@ Page Title="دور الأيتام" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Orphanages_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
     <script type="text/javascript">
         var menuGroup = 'm2'
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
       <!-- Top Page Nav -->
    <section class="top-page-nav">
        <div class="center cf">

            <h2>دور الأيتام</h2>

            <div class="navi">
               
                <a href="/home">الرئيسية</a>
                <span></span>
                <a  class="active" href="/Orphanages">دور الأيتام </a>
               
              
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
                    <a class="active" href="#">دور الأيتام</a>
                   
                </div>
                <img src="/css/images/orphange.jpg" style="width:100%;display:block" alt="Alternate Text" />
              <p>
             تقوم جمعية الأورمان برعاية الأيتام الأسوياء والأيتام المعاقين من خلال ثمانية دور أيتام فى القاهرة الكبرى والأسكندرية ، ويقوم على رعايتهم أمهات بديلات 
                  ومجموعة متكاملة من المشرفين والأخصائيين النفسيين والاجتماعيين لتقديم الرعايا المتكاملة للأطفال
                   . كما تهتم الجمعية إهتماماً كبيراً بمشروع الأسر البديلة وذلك تحت رعاية وزارة التضامن الإجتماعى .
              </p>
               
               
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

