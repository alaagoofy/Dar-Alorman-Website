<%@ Page Language="C#" AutoEventWireup="true" CodeFile="3Party_Receipt.aspx.cs" Inherits="_TNS._ThreePartyReceipt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    

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
               



        <asp:Panel ID="pnlResponse" runat="server" width="719px">
            <table style="margin-right: auto; margin-left:auto; border-width: 0; padding: 5px; width: 719px;direction:ltr">
                <tbody>
                    <tr class="title">
                        <td colspan="2" style="text-align: left"><p><strong>&nbsp;Transaction Receipt Fields</strong></p></td>
                    </tr>
                    <tr>
                        <td style="text-align: right"><strong><em>MerchTxnRef: </em></strong></td>
                        <td style="text-align: left"><asp:Label id="Label_vpc_MerchTxnRef" runat="server"/></td>
                    </tr>
                    <tr class="shade" style="display:none">
                        <td style="text-align: right"><strong><em>Merchant ID: </em></strong></td>
                        <td style="text-align: left"><asp:Label id="Label_vpc_Merchant" runat="server"/></td>
                    </tr>
                    <tr>
                        <td style="text-align: right"><strong><em>Email: </em></strong></td>
                        <td style="text-align: left"><asp:Label id="Label_vpc_OrderInfo" runat="server"/></td>
                    </tr>
                    <tr class="shade">
                        <td style="text-align: right"><strong><em>Transaction Amount: </em></strong></td>
                        <td style="text-align: left"><asp:Label id="Label_vpc_Amount" runat="server"/></td>
                    </tr>
                    <tr>
                         <td style="text-align: right"><strong><em>Project: </em></strong></td>
                        <td style="text-align: left"><asp:Label id="vpc_Local" runat="server"/></td>
                    </tr>
                    <tr style="display:none">
                        <td colspan="2" style="text-align: center">
                            <div class='bl'>Fields above are the primary request values.<hr />Fields below are receipt data fields.</div>
                        </td>
                    </tr>
                    <tr class="shade">
                        <td style="text-align: right"><strong><em>Transaction Response Code: </em></strong></td>
                        <td style="text-align: left"><asp:Label id="Label_vpc_TxnResponseCode" runat="server"/></td>
                    </tr>
                    <tr>
                        <td style="text-align: right"><strong><em>Transaction Response Code Description: </em></strong></td>
                        <td style="text-align: left"><asp:Label id="Label_TxnResponseCodeDesc" runat="server"/></td>
                    </tr>
                    <tr  class="shade">
                        <td style="text-align: right"><strong><em>Payment Server Message: </em></strong></td>
                        <td style="text-align: left"><asp:Label id="Label_vpc_Message" runat="server"/></td>
                    </tr>
                    <tr>
                        <td style="text-align: right"><strong><em>Acquirer Response Code: </em></strong></td>
                        <td style="text-align: left"><asp:Label id="Label_vpc_AcqResponseCode" runat="server"/></td>
                    </tr>
                    <tr class="shade">
                        <td style="text-align: right"><strong><em>Shopping Transaction Number: </em></strong></td>
                        <td style="text-align: left"><asp:Label id="Label_vpc_TransactionNo" runat="server"/></td>
                    </tr>
                    <tr>
                        <td style="text-align: right"><strong><em>Receipt Number: </em></strong></td>
                        <td style="text-align: left"><asp:Label id="Label_vpc_ReceiptNo" runat="server"/></td>
                    </tr>
                    <tr class="shade">
                        <td style="text-align: right"><strong><em>Authorization ID: </em></strong></td>
                        <td style="text-align: left"><asp:Label id="Label_vpc_AuthorizeId" runat="server"/></td>
                    </tr>
                    <tr>
                        <td style="text-align: right"><strong><em>Batch Number for this transaction: </em></strong></td>
                        <td style="text-align: left"><asp:Label id="Label_vpc_BatchNo" runat="server"/></td>
                    </tr>
                    <tr class="shade">
                        <td style="text-align: right"><strong><em>Card Type: </em></strong></td>
                        <td style="text-align: left"><asp:Label id="Label_vpc_Card" runat="server"/></td>
                    </tr>
                    <tr style="display:none">
                        <td colspan="2"  style="text-align: center">
                            <div class='bl'>Fields above are for a Standard Transaction<hr/>Fields below are additional fields for extra functionality.</div>
                        </td>
                    </tr>
                    <tr class="title" style="display:none">
                        <td colspan="2" style="text-align: left"><p><strong>CSC Data Fields</strong></p></td>
                    </tr>

                    <tr style="display:none">
                        <td style="text-align: right"><strong><em>CSC Result Code: </em></strong></td>
                        <td style="text-align: left"><asp:Label id="Label_vpc_cscResultCode" runat="server"/></td>
                    </tr>
                    <tr class="shade" style="display:none">
                        <td style="text-align: right"><strong><em>CSC Result Description: </em></strong></td>
                        <td style="text-align: left"><asp:Label id="Label_cscResultCodeDesc" runat="server"/></td>
                    </tr>
                    <tr class="title" style="display:none">
                    <td colspan="2" style="text-align: left"><p><strong>3DS Response Fields</strong></p></td>
                    </tr>
                    <tr style="display:none">
                        <td style="text-align: right"><strong><em>3DS ECI:</em></strong></td>
                        <td style="text-align: left"><asp:Label id="Label_vpc_3DSECI" runat="server"/></td>

                    </tr>
                    <tr class="shade" style="display:none">
                        <td style="text-align: right"><strong><em>3DS XID:</em></strong></td>
                        <td style="text-align: left"><asp:Label id="Label_vpc_3DSXID" runat="server"/></td>

                    </tr>
                    <tr style="display:none">
                        <td style="text-align: right"><strong><em>3DS Enrolled:</em></strong></td>
                        <td style="text-align: left"><asp:Label id="Label_vpc_3DSenrolled" runat="server"/></td>

                    </tr>
                    <tr class="shade" style="display:none">
                        <td style="text-align: right"><strong><em>3DS Status:</em></strong></td>
                        <td style="text-align: left"><asp:Label id="Label_vpc_3DSstatus" runat="server"/></td>

                    </tr>
                    <tr style="display:none">
                        <td style="text-align: right"><strong><em>3DS VerToken:</em></strong></td>
                        <td style="text-align: left"><asp:Label id="Label_vpc_VerToken" runat="server"/></td>

                    </tr>
                    <tr class="shade" style="display:none">
                        <td style="text-align: right"><strong><em>3DS VerType:</em></strong></td>
                        <td style="text-align: left"><asp:Label id="Label_vpc_VerType" runat="server"/></td>

                    </tr>
                    <tr style="display:none">
                        <td style="text-align: right"><strong><em>3DS VerSecurityLevel:</em></strong></td>
                        <td style="text-align: left"><asp:Label id="Label_vpc_VerSecurityLevel" runat="server"/></td>
                    </tr>
                    <tr class="shade" style="display:none">
                        <td style="text-align: right"><strong><em>3DS VerStatus:</em></strong></td>
                        <td style="text-align: left"><asp:Label id="Label_vpc_VerStatus" runat="server"/></td>

                    </tr>
                    
                    
                    
                    <tr class="title" style="display:none">
                        <td colspan="2" style="text-align: left"><p><strong>Risk Assessment Result Fields</strong></p></td>
                    </tr>
                        <tr style="display:none">
                        <td style="text-align: right"><strong><em>Risk Overall Result: </em></strong></td>
                        <td style="text-align: left"><asp:Label id="Label_vpc_RiskOverallResult" runat="server"/></td>
                        </tr>
                        <tr class="shade" style="display:none">
                        <td style="text-align: right"><strong><em>Transaction Reversal Result: </em></strong></td>
                        <td style="text-align: left"><asp:Label id="Label_vpc_TxnReversalResult" runat="server"/></td>
                    </tr>
                    <tr style="display:none">
                        <td style="height: 21px; width:50%" />
                        <td style="height: 21px; width:50%" />
                    </tr>
                    
                    <tr style="display:none">
                        <td style="height: 21px; width:50%" />
                        <td style="height: 21px; width:50%" />
                    </tr>
                </tbody>
            </table>
        </asp:Panel>
        <asp:Panel ID="pnlReceiptError" runat="server" width="719px">
            <table style="margin-right: auto; margin-left:auto; border-width: 0; padding: 5px; width: 719px;">
                <tbody>
                    <tr class="title">
                        <td colspan="2" style="text-align: left"><p><strong>&nbsp;Error Information</strong></p></td>
                    </tr>
                    <tr>
                        <td style="text-align: right; width: 149px;"><strong><em>Error Message: </em></strong></td>
                        <td style="text-align: left; width: 650px"><asp:Label ID="lblReceiptErrorMessage" runat="server" ForeColor="Red"></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="height: 21px" />
                        <td style="height: 21px" />
                    </tr>
                </tbody>
            </table>
        </asp:Panel>
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
