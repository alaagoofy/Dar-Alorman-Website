<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CS_VPC_3Party_DR.aspx.cs" Inherits="CS_VPC_3Party_DR" DEBUG="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    

<meta http-equiv='Content-Type' content='text/html; charset=iso-8859-1'>
<style type='text/css'>
    <!--
    h1       { font-family:Arial,sans-serif; font-size:20pt; font-weight:600; margin-bottom:0.1em; color:#08185A;}
    h2       { font-family:Arial,sans-serif; font-size:14pt; font-weight:100; margin-top:0.1em; color:#08185A;}
    h2.co    { font-family:Arial,sans-serif; font-size:24pt; font-weight:100; margin-top:0.1em; margin-bottom:0.1em; color:#08185A}
    h3       { font-family:Arial,sans-serif; font-size:16pt; font-weight:100; margin-top:0.1em; margin-bottom:0.1em; color:#08185A}
    h3.co    { font-family:Arial,sans-serif; font-size:16pt; font-weight:100; margin-top:0.1em; margin-bottom:0.1em; color:#FFFFFF}
    body     { font-family:Verdana,Arial,sans-serif; font-size:10pt; background-color:#FFFFFF; color:#08185A}
    th       { font-family:Verdana,Arial,sans-serif; font-size:8pt; font-weight:bold; background-color:#CED7EF; padding-top:0.5em; padding-bottom:0.5em;  color:#08185A}
    tr       { height:25px; }
    .shade   { height:25px; background-color:#CED7EF }
    .title   { height:25px; background-color:#0074C4 }
    td       { font-family:Verdana,Arial,sans-serif; font-size:8pt;  color:#08185A }
    td.red   { font-family:Verdana,Arial,sans-serif; font-size:8pt;  color:#FF0066 }
    td.green { font-family:Verdana,Arial,sans-serif; font-size:8pt;  color:#008800 }
    p        { font-family:Verdana,Arial,sans-serif; font-size:10pt; color:#FFFFFF }
    p.blue   { font-family:Verdana,Arial,sans-serif; font-size:7pt;  color:#08185A }
    p.red    { font-family:Verdana,Arial,sans-serif; font-size:7pt;  color:#FF0066 }
    p.green  { font-family:Verdana,Arial,sans-serif; font-size:7pt;  color:#008800 }
    div.bl   { font-family:Verdana,Arial,sans-serif; font-size:7pt;  color:#0074C4 }
    div.red  { font-family:Verdana,Arial,sans-serif; font-size:7pt;  color:#FF0066 }
    li       { font-family:Verdana,Arial,sans-serif; font-size:8pt;  color:#FF0066 }
    input    { font-family:Verdana,Arial,sans-serif; font-size:8pt;  color:#08185A; background-color:#CED7EF; font-weight:bold }
    select   { font-family:Verdana,Arial,sans-serif; font-size:8pt;  color:#08185A; background-color:#CED7EF; font-weight:bold; }
    textarea { font-family:Verdana,Arial,sans-serif; font-size:8pt;  color:#08185A; background-color:#CED7EF; font-weight:normal; scrollbar-arrow-color:#08185A; scrollbar-base-color:#CED7EF }
    -->
</style>
   <meta charset="utf-8" />
  <title>تبرع أون لاين الان</title>
    <meta name="description" content="جمعية الاورمان الخيرية | بوابتك للخير"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    
      <script src="/js/libs/jquery-1.10.2.min.js"></script>
    <!-- Styles -->
    <link rel="stylesheet" href="/css/general.css">

    <!-- Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=PT+Sans:400,700' rel='stylesheet' type='text/css'>

    <!-- Semantic HTML5 Support on old IE -->
    <!--[if IE]>
    <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <!-- Add jQuery library -->
	

	<!-- Add mousewheel plugin (this is optional) -->
      <script type="text/javascript" src="/lib/jquery-1.7.2.min.js"></script>

    	<script type="text/javascript" src="/lib/jquery.mousewheel-3.0.6.pack.js"></script>

	<!-- Add fancyBox main JS and CSS files -->
	<script type="text/javascript" src="/source/jquery.fancybox.js?v=2.0.6"></script>
	<link rel="stylesheet" type="text/css" href="/source/jquery.fancybox.css?v=2.0.6" media="screen" />

	<!-- Add Button helper (this is optional) -->
	<link rel="stylesheet" type="text/css" href="/source/helpers/jquery.fancybox-buttons.css?v=1.0.2" />
	<script type="text/javascript" src="/source/helpers/jquery.fancybox-buttons.js?v=1.0.2"></script>

	<!-- Add Thumbnail helper (this is optional) -->
	<link rel="stylesheet" type="text/css" href="/source/helpers/jquery.fancybox-thumbs.css?v=1.0.2" />
	<script type="text/javascript" src="/source/helpers/jquery.fancybox-thumbs.js?v=1.0.2"></script>

</head>
<body>

    

 <header class="top cf">
        <div class="center">
           

            <div class="right"> 
               


               <div class="block email">
                    <a href="/Complain">صندوق الشكاوى</a>
                </div>
                 <div class="block email" style="background:none">
                    <a href="/BankAccounts" style="background:none;padding:0">حسابات البنوك</a>
                </div>
                <div class="block donate">
                    <a href="/aaibusd/" target="_blank">للتبرع أون لاين اضغط هنا</a>
                </div>
                <div class="block email" style="background:none">
               <a href="/About" style="background:none;padding:0">    عن المؤسسة</a>
                </div>
                <div class="block search">
                    <div class="form">
                        <input type="search"/>
                        <input type="submit" value=""/>
                    </div>

                </div>
            </div>

        </div>
    </header>

    <!-- Header Main -->
    <header class="main">
        <div class="center">
            <div class="logo"><a href="/home">
    <img src="/css/images/logo.png"  width="210" alt="Alternate Text" />
                              </a></div>

            <!-- Navigation -->
            <nav>
                <ul>
                    <li><a href="/home" id="m0">الرئيسية</a></li>
                    <li>
                        <a href="/Projects" id="m1">أنشطة الجمعية</a>
                        <ul>
                            <li><a href="/Projects">المشروعات التنموية</a></li>
                            <li><a href="/PoorFamilies">كفالة الأسر الفقيرة</a></li>
                            <li><a href="/Education">الجانب التعليمى</a></li>
                            <li><a href="/Health">الرعاية الصحية</a></li>
                            <li><a href="/Activity">الأنشطة الموسمية</a></li>
                           
                        </ul>
                    </li>
                    <li><a href="#" id="m2">الأيتام</a>
                         <ul>
                          <li><a href="/OrphanDay" title="">يوم اليتيم</a></li>
						<li><a href="/MarriageOrphans" title="">تزويج اليتيمات</a></li>
						<li><a href="/Orphanages" title="">دور الأيتام</a></li>
                           
                        </ul>
                    </li>
                     <li><a href="/Branches" id="m3">فروعنا</a></li>
                    <li><a href="/News" id="m4">أخبارنا</a></li>
                    <li><a href="/Gallery" id="m5">ألبوم الصور</a></li>
                    <li><a href="https://www.youtube.com/user/ormanassociation/videos" id="m6">الفديو</a></li>
                    <li><a href="/FAQ" id="m7">أسئلة شائعة</a></li>
                </ul>
            </nav>

            <div id="mobile-button"></div>
            <div id="mobile-menu">
                <ul>
                    <li><a href="/home/">الرئيسية</a></li>
                     <li>
                        <a href="/Projects/">أنشطة الجمعية</a>
                        <ul>
                            <li><a href="/Projects/">المشروعات التنموية</a></li>
                            <li><a href="/PoorFamilies/">كفالة الأسر الفقيرة</a></li>
                            <li><a href="/Education/">الجانب التعليمى</a></li>
                            <li><a href="/Health/">الرعاية الصحية</a></li>
                            <li><a href="/Activity/">الأنشطة الموسمية</a></li>
                           
                        </ul>
                    </li>
                   <li><a href="#">الأيتام</a>
                         <ul>
                          <li><a href="/OrphanDay" title="">يوم اليتيم</a></li>
						<li><a href="/MarriageOrphans" title="">تزويج اليتيمات</a></li>
						<li><a href="/Orphanages" title="">دور الأيتام</a></li>
                           
                        </ul>
                    </li>
                     <li><a href="/Branches">فروعنا</a></li>
                    <li><a href="/News">أخبارنا</a></li>
                    <li><a href="/Gallery">ألبوم الصور</a></li>
                    <li><a href="https://www.youtube.com/user/ormanassociation/videos">الفديو</a></li>
                    <li><a href="/FAQ">أسئلة شائعة</a></li>
                </ul>
            </div>
        </div>
    </header>

  

    <section class="top-page-nav">
        <div class="center cf">

            <h2>تبرع أون لاين</h2>

            <div class="navi">
               
                <a href="/home">الرئيسية</a>
                <span></span>
                <a  class="active" href="/donate">تبرع أون لاين </a>
               
              
            </div>

        </div>
    </section>

      <div class="center cf">

       
          <section class="col-8  blog cf " style="width:100%;float:none">
        <!-- Aside Blog -->
<section class="news" style="margin:0;padding:0;background-size:98% 600px;background-position:top center">
        <aside class="col-4 blog cf" style="width:100%;float:none">

             <div id="aside-dynamic">
             <div class="menu cf" style="margin:2px 0 0 0">
                    <div class="active" data-attr="m1"> تبرع أون لاين الان</div>
                 
                </div>
                 </div>
            <div class="recent-events">



        <img src="/css/images/donate1.png" style="width:884px;margin:0 auto 20px;display:block" alt="" />
		<img src="aaib.jpg" style="width:884px;margin:0 auto 20px;display:block" alt="" />
               



<asp:Panel id="Panel_Debug" runat=server>
<!-- only display these next fields if debug enabled -->
<table>
    <tr>
        <td><asp:Label id=Label_Debug runat="server"/></td>
    </tr>
    <tr>
        <td><asp:Label id=Label_DigitalOrder runat="server"/></td>
    </tr>
</table>
</asp:Panel>

<h1 align="center" style="display:none"><asp:Label id=Label_Title runat="server"/></h1>

    <form id="form1" runat="server">
   <table align="center" border="0" width="70%">
    
   
    <tr style="display:none">
        <td align="right"><strong><i>VPC API Version: </i></strong></td>
        <td><asp:Label id=Label_Version runat="server"/></td>
    </tr>
    <tr class='shade' style="display:none">
        <td align="right"><strong><i>Command: </i></strong></td>
        <td><asp:Label id=Label_Command runat="server"/></td>
    </tr>
    <tr>
        <td align="right"><strong><em>MerchTxnRef: </em></strong></td>
        <td><asp:Label id=Label_MerchTxnRef runat="server"/></td>
    </tr>
    <tr class="shade" style="display:none">
        <td align="right"><strong><em>Merchant ID: </em></strong></td>
        <td><asp:Label id=Label_MerchantID runat="server"/></td>
    </tr>
    <tr>
        <td align="right"><strong><em>OrderInfo: </em></strong></td>
        <td><asp:Label id=Label_OrderInfo runat="server"/></td>
    </tr>
    <tr class="shade">
        <td align="right"><strong><em>Transaction Amount: </em></strong></td>
        <td><asp:Label id=Label_Amount runat="server"/></td>
    </tr>
   
    <tr class="shade" style="display:none">
        <td align="right"><strong><em>Transaction Response Code: </em></strong></td>
        <td><asp:Label id=Label_TxnResponseCode runat="server"/></td>
    </tr>
    <tr>
        <td align="right"><strong><em>QSI Response Code Description: </em></strong></td>
        <td><asp:Label id=Label_TxnResponseCodeDesc runat="server"/></td>
    </tr>
    <tr class='shade'>
        <td align="right"><strong><i>Message: </i></strong></td>
        <td><asp:Label id=Label_Message runat="server"/></td>
    </tr>
<asp:Panel id="Panel_Receipt" runat=server>
<!-- only display these next fields if not an error -->
    <tr>
        <td align="right"><strong><em>Shopping Transaction Number: </em></strong></td>
        <td><asp:Label id=Label_TransactionNo runat="server"/></td>
    </tr>
    <tr class="shade">
        <td align="right"><strong><em>Batch Number for this transaction: </em></strong></td>
        <td><asp:Label id=Label_BatchNo runat="server"/></td>
    </tr>
    <tr style="display:none">
        <td align="right"><strong><em>Acquirer Response Code: </em></strong></td>
        <td><asp:Label id=Label_AcqResponseCode runat="server"/></td>
    </tr>
    <tr class="shade">
        <td align="right"><strong><em>Receipt Number: </em></strong></td>
        <td><asp:Label id=Label_ReceiptNo runat="server"/></td>
    </tr>
    <tr>
        <td align="right"><strong><em>Authorization ID: </em></strong></td>
        <td><asp:Label id=Label_AuthorizeID runat="server"/></td>
    </tr>
    <tr class="shade">
        <td align="right"><strong><em>Card Type: </em></strong></td>
        <td><asp:Label id=Label_CardType runat="server"/></td>
    </tr>
</asp:Panel>
    <tr>
        <td colspan="2"><hr/></td>
    </tr>
    <tr class="title">
        <td colspan="2" height="25"><p><strong>&nbsp;Hash Validation</strong></p></td>
    </tr>
    <tr>
        <td align="right"><strong><em>Hash Validated Correctly: </em></strong></td>
        <td><asp:Label id=Label_HashValidation runat="server"/></td>
    </tr>
<asp:Panel id="Panel_StackTrace" runat="server" style="display:none">
<!-- only display these next fields if an stacktrace output exists-->
    <tr style="display:none">
        <td colspan="2">&nbsp;</td>
    </tr>
    <tr class="title" style="display:none">
        <td colspan="2"><p><strong>&nbsp;Exception Stack Trace</strong></p></td>
    </tr>
    <tr style="display:none">
        <td colspan="2"><asp:Label id=Label_StackTrace runat="server"/></td>
    </tr>
</asp:Panel>
    <tr style="display:none">
        <td width="50%">&nbsp;</td>
        <td width="50%">&nbsp;</td>
    </tr>
    <tr style="display:none">
        <td colspan="2" align="center"><asp:Label id=Label_AgainLink runat="server"/></td>
    </tr>

</table>
    </form>


   <br /><br />


            </div>
           
            

        </aside>
    </section>
              </section>
    </div>



    <!-- How can you help -->
    <section class="donate" dir="rtl">

        <div class="cf">
            <div class="col-6 text">
                <h3>تصفح اخر إصدار  </h3>
                <h4 style="text-indent:39px">من مجلة الأورمان </h4>
                <h5 style="text-indent:110px"><span>2014</span> </h5>
            </div>
            <div class="col-6 but">
                <a href="/ormanmagazin.pdf" target="_blank">
                <img src="../css/images/logoS.png" alt="جمعية الأورمان - بوابتك للخير" /></a>
            </div>
        </div>

        


    </section>

  

    <!-- Section Bottom -->
    <section class="bottom" style="background:#fff">

        <div class="center cf">
            
        </div>

    </section>

    <!-- Section Bottom -->
  <footer>
        <div class="line">
            <div class="center cf">
                <div class="links">
                    <a href="/home">الرئيسية</a>
                    <a href="#">قالوا عن الجمعية</a>
                    <a href="/Volunteer">إستمارة التطوع</a>
                    <a href="/BankAccounts">حسابات البنوك</a>
                    <a href="/Compalin">صندوق الشكاوى</a>
                   
                    <a href="/Branches">إتصل بنا</a>
                </div>
                <div class="copy">© 2014  جميع الحقوق محفوظة. <span>جمعية الأورمان - بوابتك للخير</span> </div>
            </div>
        </div>

      
    </footer>

    <!-- Libs -->
  
    <script src="/js/libs/jquery.flexslider-min.js"></script>
    
    <!-- Custom -->
    <script src="/js/scripts.js"></script>
      <script>
          InitBlog();
    </script>

     <script>
         (function (i, s, o, g, r, a, m) {
             i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                 (i[r].q = i[r].q || []).push(arguments)
             }, i[r].l = 1 * new Date(); a = s.createElement(o),
             m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
         })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

         ga('create', 'UA-54552126-1', 'auto');
         ga('send', 'pageview');

</script>
</body>
</html>
