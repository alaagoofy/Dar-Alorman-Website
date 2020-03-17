<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Donate_Default2" %>

<%@ Register Assembly="BotDetect" Namespace="BotDetect.Web.UI" TagPrefix="cc1" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
  <title>تبرع أون لاين الان</title>
    <meta name="description" content="جمعية الاورمان الخيرية | بوابتك للخير"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    
      <script src="../js/libs/jquery-1.10.2.min.js"></script>
    <!-- Styles -->
    <link rel="stylesheet" href="../css/general.css">

    <!-- Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=PT+Sans:400,700' rel='stylesheet' type='text/css'>

    <!-- Semantic HTML5 Support on old IE -->
    <!--[if IE]>
    <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <!-- Add jQuery library -->
	

	<!-- Add mousewheel plugin (this is optional) -->
      <script type="text/javascript" src="../lib/jquery-1.7.2.min.js"></script>

    	<script type="text/javascript" src="../lib/jquery.mousewheel-3.0.6.pack.js"></script>

	<!-- Add fancyBox main JS and CSS files -->
	<script type="text/javascript" src="../source/jquery.fancybox.js?v=2.0.6"></script>
	<link rel="stylesheet" type="text/css" href="../source/jquery.fancybox.css?v=2.0.6" media="screen" />

	<!-- Add Button helper (this is optional) -->
	<link rel="stylesheet" type="text/css" href="../source/helpers/jquery.fancybox-buttons.css?v=1.0.2" />
	<script type="text/javascript" src="../source/helpers/jquery.fancybox-buttons.js?v=1.0.2"></script>

	<!-- Add Thumbnail helper (this is optional) -->
	<link rel="stylesheet" type="text/css" href="../source/helpers/jquery.fancybox-thumbs.css?v=1.0.2" />
	<script type="text/javascript" src="../source/helpers/jquery.fancybox-thumbs.js?v=1.0.2"></script>

	<!-- Add Media helper (this is optional) -->
	<script type="text/javascript" src="../source/helpers/jquery.fancybox-media.js?v=1.0.0"></script>

	
	

        <script type="text/javascript">
        
    </script>
    <style>
        .BDC_CaptchaImageDiv a {display:none !important;visibility:hidden !important}
    </style>
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

       
          <section class="col-8  blog cf " style="width:100%;display:block !important;">
        <!-- Aside Blog -->
<section class="news" style="margin:0;padding:0;background-size:98% 600px;background-position:top center">
        <aside class="col-4 blog cf" style="width:100%;display:block !important">

             <div id="aside-dynamic">
             <div class="menu cf" style="margin:2px 0 0 0">
                    <div class="active" data-attr="m1"> تبرع أون لاين الان</div>
                 
                </div>
                 </div>
            <div class="recent-events">



         <img src="/css/images/donate1.png" style="width:100%;margin:0 auto 20px;display:block" alt="" />
		  <img src="AAIB logo.gif" style="width:45%;margin:0 auto 20px;display:inline-block;float:left" alt="" />
		<img src="aaib.jpg" style="width:50%;margin:0 auto 20px;display:inline-block;float:right" alt="" />
               
                     <div style="clear:both"></div>



                            <form id="Form2" method="post" runat="server">
                                  <h3>يمكنك التبرع اون لاين أو 
                     <a href="/OnlineRequest">إضغط هنا ليصلك مندوبنا لحد باب البيت</a>
                 </h3>
                             <p>
     الرجاء اختيار البنك : 
       
 

                                 <asp:DropDownList ID="DropDownList1" AutoPostBack="true" style="width: 100%;height:40px;-webkit-border-radius:5px;-moz-border-radius:5px;border-radius:5px;" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" runat="server">
                                     <asp:ListItem Value="1">البنك التجارى الدولى</asp:ListItem>
                                     <asp:ListItem Value="2">البنك الاهلى</asp:ListItem>
                                     <asp:ListItem Value="3">بنك مصر</asp:ListItem>
                                     <asp:ListItem Value="4">البنك العربى الافريقى</asp:ListItem>
                                  
                                 </asp:DropDownList>
       </p>
     <br/><br/>
                              
                              <p style="color:red;font-size:17px">
                                  <asp:Label ID="lbl_ERROR" runat="server" Text=""></asp:Label>
                              </p>
                              
                                <p style="display: none">
                              
                                    <asp:TextBox ID="vpc_OrderInfo" name="vpc_OrderInfo" runat="server"></asp:TextBox>
                                </p>


                                <p>
                                   
       <span style="display:inline-block;float:right"> المبلغ المراد التبرع به   : </span>
      
                                    
                                   
                                    <asp:TextBox ID="Amount" runat="server" CssClass="form-control" style="width: 20%; height: 40px; -webkit-border-radius: 5px; -moz-border-radius: 5px; border-radius: 5px;float:right;margin:0 15px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="Amount" ValidationGroup="a"></asp:RequiredFieldValidator>


                                    <asp:DropDownList ID="DropDownList2" AutoPostBack="true" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" style="width: 50%; height: 40px; -webkit-border-radius: 5px; -moz-border-radius: 5px; border-radius: 5px;" runat="server">
                                        <asp:ListItem>جنية مصرى</asp:ListItem>
                                         <asp:ListItem Value="USD">دولار</asp:ListItem>
                                    </asp:DropDownList>


                                </p>
                                <p style="display: none">
                                    <asp:TextBox ID="vpc_Amount" runat="server"></asp:TextBox>
                                </p>

                                <div style="clear: both"></div>
                                <br />
                                <br />
                                 <p>
                                   <span style="display:none">  <asp:Literal ID="Radio" runat="server"></asp:Literal></span>
                                 <span>
                                    
                                      <asp:RadioButton ID="Visa" GroupName="aa" runat="server" />
                                      <asp:Label ID="Label1" runat="server" AssociatedControlID="Visa" Text="Label">
                                           <img src="../css/images/visa.png" alt="Alternate Text" /> </asp:Label>
                                 </span>
                                      <br /> <br />
                                    <span>
                                
                                          <asp:RadioButton ID="Master" Text="" GroupName="aa" runat="server" />
                                        <asp:Label ID="Label2" runat="server" AssociatedControlID="Master" Text="Label">
                                    
                                          <img src="../css/images/master.png" alt="Alternate Text" />
                                    </asp:Label>
                                        </span>
                                 </p>
                                <p>

                               
                                    <asp:TextBox ID="txtmail" name="txtmail" placeholder="بريدك الالكترونى" class="form-control" style="width: 100%; height: 40px; -webkit-border-radius: 5px; -moz-border-radius: 5px; border-radius: 5px;" runat="server"></asp:TextBox>
                                      <asp:RequiredFieldValidator ID="rfvEmail" runat="server"
              ErrorMessage="*" ControlToValidate="txtmail"
                  ValidationGroup="a" ForeColor="Red"></asp:RequiredFieldValidator>
              <asp:RegularExpressionValidator ID="RegularExpressionValidator2"
              runat="server" ErrorMessage="Please Enter Valid Email ID"
                  ValidationGroup="a" ControlToValidate="txtmail"
                  CssClass="requiredFieldValidateStyle"
                  ForeColor="Red"
                  ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                  </asp:RegularExpressionValidator>
                                     </p>
                                <div style="clear: both"></div>
                                <br />
                                <br />

                                <p>
                                
                              
                                    <asp:TextBox ID="txtname" placeholder="الاسم الثلاثى" name="txtname" CssClass="form-control" style="width: 100%; height: 40px; -webkit-border-radius: 5px; -moz-border-radius: 5px; border-radius: 5px;"  runat="server"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="txtname" ValidationGroup="a"></asp:RequiredFieldValidator>
      
                                </p>
                                
                            
                                <p>
                                    الغرض من التبرع
                                    <asp:DropDownList ID="drop_Project" style="width: 100%; height: 40px; -webkit-border-radius: 5px; -moz-border-radius: 5px; border-radius: 5px;" runat="server">
                                     
         <asp:ListItem value="1">مستشفى شفاء الأورمان</asp:ListItem>
		<asp:ListItem value="2">عمليات القلب</asp:ListItem>
		<asp:ListItem value="3">كفالة اليتيم</asp:ListItem>
        <asp:ListItem value="4">الاضحية</asp:ListItem>
        <asp:ListItem value="5">شنطة رمضان</asp:ListItem>
        <asp:ListItem value="6">زكاة مال</asp:ListItem>
        <asp:ListItem value="7">زكاة</asp:ListItem>
        <asp:ListItem value="8">صدقة</asp:ListItem>
        <asp:ListItem value="9">صدقة جارية</asp:ListItem>
                                    </asp:DropDownList>
                                </p>
                                <br /><br />
                                <p>
                                 أدخل الرموز كما ترى
                                    <cc1:WebFormsCaptcha ID="ExampleCaptcha" AutoClearInput="true" runat="server"></cc1:WebFormsCaptcha>
                                     <asp:TextBox ID="CaptchaCodeTextBox" placeholder="" CssClass="form-control" style="width: 25%; height: 40px; -webkit-border-radius: 5px; -moz-border-radius: 5px; border-radius: 5px;font-family:Arial"  runat="server"></asp:TextBox>
                                    <asp:Label ID="lbl_capcha" runat="server" Text=""></asp:Label>
                                </p>
                                <%--            <p>
                <input placeholder="عنوان منزلك" type="text" name="txtAddress" style="width: 100%;height:40px;-webkit-border-radius:5px;-moz-border-radius:5px;border-radius:5px;"/>
             
                <textarea placeholder="عنوان منزلك" id='addr' name="addr" style="width: 100%;height:70px;-webkit-border-radius:5px;-moz-border-radius:5px;border-radius:5px;"></textarea>
        	</p>
 	        <div style="clear:both"></div>
			<br/><br/>
                                --%>

                                <div style="clear: both"></div>
                                <br />
                                <br />
                                <asp:Button ID="SubButL" ValidationGroup="a" type="submit" name="SubButL"
                                      
                                     OnClick="SubButL_Click"
                                    style="padding: 5px 20px; background: #F39200; float: left; margin-top: 30px; height: 40px; -webkit-border-radius: 5px; color: #fff; margin-bottom: 30px; -moz-border-radius: 5px; border-radius: 5px;" runat="server" Text="تأكيد التبرع"/>
                               <%-- <input type="submit" name="SubButL" style="padding: 5px 20px; background: #F39200; float: left; margin-top: 30px; height: 40px; -webkit-border-radius: 5px; color: #fff; margin-bottom: 30px; -moz-border-radius: 5px; border-radius: 5px;"
                                    onserverclick="btnBeforeOk_ServerClick" onclick="ra(); getdata(); return validate_all(); " value="تأكيد التبرع" />--%>
                                <br />
                                <br />
                                <div style="clear: both"></div>


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
