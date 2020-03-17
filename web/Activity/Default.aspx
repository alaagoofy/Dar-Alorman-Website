<%@ Page Title="الأنشطة الموسمية" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Activity_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
    <script type="text/javascript">
        var menuGroup = 'm1'
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="Server">
    <!-- Top Page Nav -->
    <section class="top-page-nav">
        <div class="center cf">

            <h2>الأنشطة الموسمية</h2>

            <div class="navi">

                <a href="/home">الرئيسية</a>
                <span></span>
                <a class="active" href="/Activity/">الأنشطة الموسمية </a>


            </div>

        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="Server">
    <div class="center cf">



        <!-- Aside Blog -->
        <aside class="col-4 blog cf" style="width: 100%; display: block !important">



            <!-- ASIDE DYNAMIC -->
            <div id="aside-dynamic">

                <div class="menu cf">
                    <div class="active" data-attr="m1">بطاطين الشتاء</div>
                    <div data-attr="m2">كراتين رمضان</div>
                    <div data-attr="m3">لحوم الأضاحي</div>
                </div>

                <div class="content m1">
                    <img src="/css/images/bataten.jpg" style="display: block; margin: auto; float: left; width: 55%" alt="Alternate Text" />

                    <div style="float: right; width: 44%">
                        <h2>بطاطين الشتاء</h2>

                        <p>
                            بجانب الأنشطة الخيرية الممتدة تقدم الاورمان أنشطة خيرية موسمية تستهدف مساعدة 
                            الأسر الأكثر احتياجا على مواجهة اعبائهم اليومية وادخال الفرحة عليهم في المناسبات  <br /> <br />
واهم هذه الأنشطة : <br />
بطاطين الشتاء للفئات الاكثر احتياجا في القرى بهدف مساعدة الأسر الأكثر فقرا في مواجهة برد الشتاء ويتم توزيعها مع بداية فصل الشتاء 
تتراوح الكمية من 200 – الى 250 ألف بطانية سنوياً. 



                    </div>
                    <div class="clear"></div>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </div>

                <div class="content m2" style="display: none">
                    <img src="/css/images/ramdan.jpg" style="display: block; margin: auto; float: left; width: 55%" alt="Alternate Text" />

                    <div style="float: right; width: 44%">
                        <h2>كراتين رمضان</h2>

                        <p>
                        لادخال السرور على الأسر المحتاجة في شهر رمضان الفضيل 
                            وبهدف مساعدتهم في توفير احتياجاتهم من السلع التموينية الأساسية خلال الشهر الكريم <br /><br />
 ويتم توزيعها أثناء شهر رمضان المبارك .<br /><br />
تتراوح من 200 – الى 250 ألف كرتونة وزن من 20 الى 25 كيلو جرام للكرتونة . 

                        </p>
                    



                    </div>
                    <div class="clear"></div>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </div>


                <div class="content m3" style="display: none">
                    <img src="/css/images/meat.jpg" style="display: block; margin: auto;" alt="Alternate Text" />

                    <div style="float: right; width: 44%">
                        <h2>لحوم الأضاحي</h2>

                        <p>
                     (ا) اللحوم البلدية :      <br />
يتم الذبح خلال أيام التشريق فقط ويتم توزيعها أثناء أيام عيد الأضحى .     <br />     <br />
(ب) اللحوم المجمدة :      <br />
يتم الذبح خلال أيام التشريق فقط بالبرازيل بسفر لجنة من الجمعية لحضور عملية الذبح وحسب الشريعة 
                            الإسلامية ويتم توزيعها بعد تمام وصولها ودخولها الثلاجات بإجمالى أوزان تتراوح 2500 طن سنوياً . 

                        </p>
                     




                    </div>
                    <div class="clear"></div>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </div>


            </div>





        </aside>

    </div>
</asp:Content>

