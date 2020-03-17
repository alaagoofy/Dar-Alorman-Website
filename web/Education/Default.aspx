<%@ Page Title="الجانب التعليمى" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Education_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
      <script type="text/javascript">
          var menuGroup = 'm1'
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
      <!-- Top Page Nav -->
    <section class="top-page-nav">
        <div class="center cf">

            <h2>الجانب التعليمى</h2>

            <div class="navi">
               
                <a href="/home/">الرئيسية</a>
                <span></span>
                <a  class="active" href="/Education/">الجانب التعليمى </a>
               
              
            </div>

        </div>
    </section>

  
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
     <div class="center cf">

  

        <!-- Aside Blog -->
        <aside class="col-4 blog cf" style="width:100%;display:block !important">

           

            <!-- ASIDE DYNAMIC -->
            <div id="aside-dynamic">

                <div class="menu cf">
                  
                    <div data-attr="m2">المساهمة فى بناء المساجد والمدارس</div>
                 
                </div>

               

                <div class="content">
                   <img src="/css/images/6.jpg" style="display:block;margin:auto;float:left;width:55%" alt="Alternate Text" />
                   
                    <div style="float:right;width:44%">
                    <h2>المساهمة فى بناء المساجد والمدارس</h2>
                        <p>نشاط خيرى عظيم قامت به الاورمان ضمن أنشطتها الخيرية استهدفت من خلاله بناء المساجد في المناطق الفقيرة فقامت حتى الآن ببناء  35 مسجد بتكلفة  1.475.000 جنيه.</p>
                    <p>كما قامت الأورمان بالمساهمة بمبلغ قدره 3 مليون جنيه لوزارة التعليم والمساهمة في المبنى الأزهري بالبحر الأحمر.</p>    
                    </div>
                    <div class="clear"></div>
                    <br /><br /><br /><br /><br />
                </div>

               
            </div>

         

         

        </aside>

    </div>
</asp:Content>

