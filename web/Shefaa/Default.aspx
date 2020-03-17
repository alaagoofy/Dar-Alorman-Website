<%@ Page Title="مستشفى شفاء - الاقصر" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Branches_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
     <script type="text/javascript">
         var menuGroup = 'm3'
</script>
    <style>
        .bran p {padding:15px 0;border-bottom:1px solid #ccc}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
       <!-- Top Page Nav -->
    <section class="top-page-nav">
        <div class="center cf">

            <h2>فروعنا</h2>

            <div class="navi">
               
                <a href="/home">الرئيسية</a>
                <span></span>
                <a  class="active" href="/Branches">فروعنا </a>
               
              
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
                    <a class="active" href="#">فروعنا</a>
                   
                </div>
              <iframe src="https://mapsengine.google.com/map/embed?mid=zddvkQ35L-dM.k8gv-62tCXBI" style="width:100%" height="482"></iframe>
             <br /><br />
                <div class="rule" style="width:100%"></div>
             
<div class="bran">

           <h1>     وجه بحرى : </h1>
<p>
مكتب الجيزة : 
المقر الرئيسي : الهرم – 7 ش الحاج موسى متفرع من ش يحيى  شاهين من ش الهرم الرئيسى- أمام مطعم  تكا التعاون .
الإدارة - ت:33831185 ،  33831189
    </p>
<p>
فرع المنوفية :  شبين الكوم  - ش السوق - بجوار عمر أفندى – أعلى فرن الحسن والحسين – ت: 
01144508478
0482221983 
    </p>

    <p>
فرع الشرقية : :  الزقازيق - ش أبوبكرالصديق - أمام نقابة المحامين - أمام مستشفى الدكتور حازم سعد – ت: 0552324060
01144508424
 
        </p>
        <p>
فرع الغربية :طنطا - سيبرباى - محطة الورش الثانية - بجوار جامع النور. ت: 0403450685
01144508430
            </p>
            <p>
مكتب الدقهلية:  المنصورة – 1 ش أبو العز متفرع من ش عبد السلام عارف –أمام سنترال السلكاوى 
ت : 01144508433

</p>
                <p>
فرع كفرالشيخ :  تقسيم السلام ـ عمارة 3 ـ شقة 2 ـ خلف مباحث الكهرباء ـ أمام المعهد الأزهرى  ـ ت: 0473258651
01144508428
</p>

                    <p>
فرع البحيرة : دمنهور - شارع سوق القصب - بجوار مسجد التوبة - مدخل صيدلية الشريف. ت: 0453334943
01144508430
</p>

                        <p>
مطروح : 
التليفون : 01149615990

</p>






<h1>وجه قبلى :</h1>


 


                            <p>
فرع الفيوم :  الفيوم – كيمان فارس – عمارات المهندسين – عمارة 18 شقة 4 – خلف مدرسة كيمان فارس للتعليم الابتدائى|. ـ ت: 0846380227
01144508421
01144508476
</p>

                                <p>
فرع بنى سويف : شارع عبدالسلام عارف ـ الشرطة العسكرية خلف مكتب تصديقات وزارة الخارجية ـ ت: 0822363045
01144508453
01144508475
</p>


                                    <p>
فرع المنيا :  عزبة شاهين ـ ش الؤسسة ـ خلف مسجد فاطمة الزهراء ـ بجوار الشئون  الجديدة ـ ت: 0862329070
01144508422

</p>
                                        <p>
فرع أسيوط :  أسيوط ـ أبراج النصر برج د1 ـ أمام مديرية الصحة ـ ت: 0882375668
01144508425

</p>

                                            <p>
فرع سوهاج : المحافظة ـ عمارة 34 ـ مساكن ناصر ـ بجوار مكتب السجلات العسكرية ـ         ت: 0934611085
01126760511

</p>


                                                <p>
فرع الأقصر :الاقصر – شارع محو الامية – بجوار نادى الشعب – ت: 01144508477

</p>

                                                    <p>
فرع قنا :    4عزبة سعد – بجوار مدرسة الشهيد عبدالمنعم رياض – الدور الارضى . 
           ت: 01096288451 

</p>

                                                        <p>
فرع أسوان : أسوان - أطلس - شارع عثمان أحمد عثمان - أمام التأمينات.
ت: 01112370360
01144503110
</p>


                                                            <p>
الوادى الجديد – البحر الاحمر – (جنوب وشمال سيناء ) : 
التواصل مع :  العميد راتب / 01113272779

</p>
               
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

