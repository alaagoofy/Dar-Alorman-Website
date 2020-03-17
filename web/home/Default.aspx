<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>جمعية الاورمان الخيرية | بوابتك للخير</title>
    <meta name="description" content="جمعية الاورمان الخيرية | بوابتك للخير"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    	<style type="text/css">
		.fancybox-custom .fancybox-skin {
			box-shadow: 0 0 50px #222;
		}
       #popup
{
    position:absolute;
    display:none;
    top:200px;
    left:50%;
    width:500px; 
    margin-left:-250px;
    border:1px solid blue; 
    padding:20px;
    background-color:white;
}
	</style>

      <script src="../js/jquery-1.5.2.min.js"></script>
     
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,900italic,700italic,900,700,500italic,500,400italic,300italic,300,100italic,100|Open+Sans:400,300,400italic,300italic,600,600italic,700italic,700,800|Source+Sans+Pro:400,200,200italic,300,300italic,400italic,600,600italic,700' rel='stylesheet' type='text/css'/>
        <link href="../font-awesome/../css/font-awesome.css" rel="stylesheet" type="text/css" />
    <!-- Styles -->
    <link rel="stylesheet" href="../css/general.css"/>

    <!-- Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800' rel='stylesheet' type='text/css'/>
    <link href='http://fonts.googleapis.com/css?family=PT+Sans:400,700' rel='stylesheet' type='text/css'/>

    <!-- Semantic HTML5 Support on old IE -->
    <!--[if IE]>
    <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <!-- Add mousewheel plugin (this is optional) -->
     


     <script type="text/javascript">
         $(document).ready(function () {

             var id = '#dialog';

             //Get the screen height and width
             var maskHeight = $(document).height();
             var maskWidth = $(window).width();

             //Set heigth and width to mask to fill up the whole screen
             $('#mask').css({ 'width': maskWidth, 'height': maskHeight });

             //transition effect		
             $('#mask').fadeIn(1000);
             $('#mask').fadeTo("slow", 0.8);

             //Get the window height and width
             var winH = $(window).height();
             var winW = $(window).width();

             //Set the popup window to center
             $(id).css('top', winH / 2 - $(id).height() / 2);
             $(id).css('left', winW / 2 - $(id).width() / 2);

             //transition effect
             $(id).fadeIn(2000);

             //if close button is clicked
             $('.window .close').click(function (e) {
                 //Cancel the link behavior
                 e.preventDefault();

                 $('#mask').hide();
                 $('.window').hide();
             });

             //if mask is clicked
             $('#mask').click(function () {
                 $(this).hide();
                 $('.window').hide();
             });

         });

    </script>

    <link rel="stylesheet" type="text/css" href="../include/jquery.smarticker.min.css"/>
   
  
    <link rel="icon" type="image/png" href="/css/images/logo-small.png" />    <!-- Google Code for Donations Ramadan 2015 Conversion Page -->
<script type="text/javascript">
    /* <![CDATA[ */
    var google_conversion_id = 956965673;
    var google_conversion_language = "en";
    var google_conversion_format = "3";
    var google_conversion_color = "ffffff";
    var google_conversion_label = "WUXrCISa7l0QqcaoyAM";
    var google_remarketing_only = false;
    /* ]]> */
</script>
<script type="text/javascript" src="//www.googleadservices.com/pagead/conversion.js">
</script>
<noscript>
<div style="display:inline;">
<img height="1" width="1" style="border-style:none;" alt="" src="//www.googleadservices.com/pagead/conversion/956965673/?label=WUXrCISa7l0QqcaoyAM&amp;guid=ON&amp;script=0"/>
</div>
</noscript>


    <script>(function () {
    var _fbq = window._fbq || (window._fbq = []);
    if (!_fbq.loaded) {
        var fbds = document.createElement('script');
        fbds.async = true;
        fbds.src = '//connect.facebook.net/en_US/fbds.js';
        var s = document.getElementsByTagName('script')[0];
        s.parentNode.insertBefore(fbds, s);
        _fbq.loaded = true;
    }
    _fbq.push(['addPixelId', '1010511762306639']);
})();
        window._fbq = window._fbq || [];
        window._fbq.push(['track', 'PixelInitialized', {}]);
</script>
<noscript><img height="1" width="1" alt="" style="display:none" src="https://www.facebook.com/tr?id=1010511762306639&amp;ev=PixelInitialized" /></noscript>
</head>
<body>
    <form id="form1" runat="server">
   
         <div id="boxes" style="z-index: 9999999999999999 !important">
            <div style="top: 199.5px; left: 551.5px; display: none;" id="dialog" class="window">
                <div class="newsletter">
                <a href="/Donate">
                    
                        <img src="../css/images/online.png" style="width:400px;display:block;margin
    :-90px 0 0 20px;-webkit-border-radius:20px;-moz-border-radius:20px;border-radius:20px;" alt="Alternate Text" />
               </a>
                     </div>
                <a href="#" class="close">&times;</a>
            </div>
       
            <div style="width: 1478px; height: 602px; display: none; opacity: 0.8;" id="mask">
            </div>
        </div>
         <!-- Header Top -->
    <header class="top cf">
        <div class="">
           

            <div class="right">
                 <div class="block donate">
                    <a href="/Job">وظائف</a>
                </div>
                  <div class="block email">
                    <a href="/Complain">صندوق الشكاوى</a>
                </div>

                 <div class="block email" style="background:none">
                    <a href="/BankAccounts" style="background:none;padding:0">حسابات البنوك</a>
                </div>
              
                <div class="block donate">
                    <a href="/aaibusd/">للتبرع أون لاين اضغط هنا</a>
                </div>
                <div class="block email" style="background:none">
               <a href="/About" style="background:none;padding:0">    عن المؤسسة</a>
                </div>
                <div class="block search">
                    <div class="">
                       <a href="http://www.youtube.com/user/ormanassociation" title="تابعنا على اليوتيوب" target="_blank" class="YouTube"></a>
                        <a href="https://twitter.com/al_orman" title="تابعنا على  تويتر" target="_blank" class="twitter"></a>
                          <a href="https://www.facebook.com/OrmanCharityAssociation" title="شاهد صفحتنا على الفيس بوك" target="_blank" class="facebook"></a>
                          
                    </div>

                </div>
            </div>

        </div>
    </header>

    <!-- Header Main -->
    <header class="main">
        <div class="center">
            <div class="logo"><a href="/">
    <img src="../css/images/logo.png" width="210" alt="Alternate Text" />
                              </a>

            </div>

            <!-- Navigation -->
            <nav>
                <ul>
                    <li><a href="/home/" class="active">الرئيسية</a></li>
                     <li>
                        <a href="/Projects" id="m1">أنشطة الجمعية</a>
                        <ul>
                            <li><a href="/Projects">المساعدات الإنسانية</a></li>
                            <li><a href="/PoorFamilies">مشروعات الجمعية</a></li>
                           <%-- <li><a href="/Education">الجانب التعليمى</a></li>--%>
                            <li><a href="/Health">الأنشطة الطبية</a></li>
                            <li><a href="/Activity">الأنشطة الموسمية</a></li>
                            <li><a href="/OrphanDay" title="">رعاية الايتام</a></li>
                        </ul>
                    </li>
                 
                     <li><a href="/Branches">فروعنا</a></li>
                   <li><a href="#" id="m4">أخبارنا</a>
                        <ul>
                          <li><a href="/OnlineNews" title="">أخبار أون لاين</a></li>
						<li><a href="/News" title="">أخبار الجرائد والمجلات</a></li>
						
                           
                        </ul>
                    </li>
                    <li><a href="/Gallery">ألبوم الصور</a></li>
                    <li><a href="https://www.youtube.com/user/ormanassociation/videos" target="_blank">الفديو</a></li>
                    <li><a href="/FAQ">أسئلة شائعة</a></li>
                </ul>
            </nav>

            <div id="mobile-button"></div>
            <div id="mobile-menu">
                <ul>
                    <li><a href="/home/">الرئيسية</a></li>
                     <li>
                        <a href="#">أنشطة الجمعية</a>
                        <ul>
                            <li><a href="/Projects/">المشروعات التنموية</a></li>
                            <li><a href="/PoorFamilies/">كفالة الأسر الفقيرة</a></li>
                            <li><a href="/Education/">الجانب التعليمى</a></li>
                            <li><a href="/Health/">الرعاية الصحية</a></li>
                            <li><a href="/Activity/">الأنشطة الموسمية</a></li>
                           
                        </ul>
                    </li>
                   <li><a href="/OrphanDay/">الأيتام</a>
                           <ul>
                          <li><a href="/OrphanDay" title="">يوم اليتيم</a></li>
						<li><a href="/MarriageOrphans" title="">تزويج اليتيمات</a></li>
						<li><a href="/Orphanages" title="">دور الأيتام</a></li>
                           
                        </ul>
                    </li>
              <li><a href="#">أخبارنا</a>
                        <ul>
                          <li><a href="/OnlineNews" title="">أخبار أون لاين</a></li>
						<li><a href="/News" title="">أخبار الجرائد والمجلات</a></li>
						
                           
                        </ul>
                    </li>
                    <li><a href="/Gallery">ألبوم الصور</a></li>
                    <li><a href="https://www.youtube.com/user/ormanassociation/videos">الفيديو</a></li>
                    <li><a href="/FAQ">أسئلة شائعة</a></li>
                      <li><a href="/donate/index.php" style="color:#fff">إتبرع أون لاين</a></li>
                </ul>
            </div>
        </div>
    </header>



        			<div class="smarticker3">
					<ul style="direction:rtl;padding:0 20px;overflow:hidden">
                         <li><a>المصرية للاتصالات" توزع 160 ألف بطانية على الأسر الأكثر احتياجا بمحافظات مصر</a></li>
                         <li><a>المصرية للاتصالات» توقع بروتوكول تعاون مع «الأورمان» بـ 8 ملايين جنيه</a></li>
                         <li><a>مليون جنيه مشروعات تنموية وخدمات طبية للأسر الأولى بالرعاية بكفر الشيخ</a></li>
                         <li><a>الاورمان وحديد المصريين يفتتحان أعمال تطوير قرية الشيخ على بقنا</a></li>
                        <li><a>بعد أعمال التطوير الاورمان تنظم حفل افتتاح قرية "الشيخ على” بقنا</a></li>
                        <li><a>الاورمان تسلم 30 منزلا هدية الرئاسة بحضور محمود الخطيب ومحافظ الاقصر‎</a></li>
               
                     
                     
                 
					</ul>
				</div>
			
	<script type="text/javascript" src="../include/demo.js"></script>

	<script type="text/javascript">


	    $('.smarticker3').smarticker({
	        theme: 4,
	        speed: 1500,
	        pausetime: 3600,
	        title: 'اخر الأخبار',
	        rounded: true,
	        animation: 'fade'
	    });




	</script>
    <!-- Slider -->
    <div id="slider">
        <ul class="slides">
                        <asp:Repeater ID="Repeater1" runat="server">
                            <ItemTemplate>
                                <li style="direction:rtl">
               <a href='<%# "/Articles/ShowArticle.aspx?ID=" + Eval("ID") %>'> <img src='<%#  Eval("Img") %>' runat="server" alt=""/></a>
                 <div class="text2"><%# Eval("Title") %></div>
            </li>
                            </ItemTemplate>
                        </asp:Repeater>



            
       
            
        </ul>
    </div>
       
   <!-- من نحن -->
    <section class="news">
        <div class="center cf">

            <div class="col-3 news" dir="rtl">
      <h3 style="height:30px; line-height:30px;border-bottom:1px solid #ccc">أخبار سريعة</h3>
              <div class="recent-events">



          <asp:Repeater ID="repeat_onlineNews" runat="server">
              <ItemTemplate>
                   <div class="item cf">
                    <div class="col-3">
                        <img id="Img2" src='<%#Eval("Thumb") %>' style="width:80px !important" runat="server" alt=""/>
                    </div>
                    <div class="col-9">
                        <a id="A1" class="title" style="padding-right:30px;display:block;text-align:right;direction:rtl;height:40px !important;line-height:20px !important;overflow:hidden !important" href='<%#Eval("Url") %>' target="_blank" runat="server"><%#Eval("Title") %></a>
                        <div class="info">
                            <div class="calendar" style="text-align:right;direction:rtl;height:15px !important;line-height:15px !important;overflow:hidden !important">بتاريخ : <%#Eval("DateNews") %></div>
                        </div>
                    </div>
                </div>
              </ItemTemplate>
          </asp:Repeater>




               

             




            </div>

            </div>
            <div class="col-6 about">
                <h3 style="height:30px; line-height:30px;border-bottom:1px solid #ccc">من نحن</h3>

                <img src="../css/images/about.jpg" alt=""/>
                <p style="direction:rtl;text-align:right">
                  
 <strong>هدفنا</strong><br />
الانتقال بالشرائح المحتاجة من دائرة الاحتياج الي دائرة الانتاج والاكتفاء .
<br />
منظمة مصرية غير حكومية ، أنشئت عام1993، وتهدف إلى خدمة جميع فئات المجتمع المصري المحتاجة دون أي تمييز ديني أو سياسي ، وذلك بشكل مؤسسي متطور يؤكد دورالعمل الأهلي في نمو المجتمعات إقتصادياً وأجتماعياً .
تعتمد الجمعية في تمويلها فقط على التبرعات العينية والنقدية من المصريين.
                </p>
                <a class="more" title="مشاهدة المزيد عن جمعية الأورمان" style="color:#fff;padding:3px 20px;background:#F39200;-webkit-border-radius:4px;-moz-border-radius:4px;border-radius:4px" href="/About">المزيد  </a>
            </div>
            <div class="col-3 photos">
                <h3 style="height:30px; line-height:30px;border-bottom:1px solid #ccc">
                    معرض الصور
                    <span class="control" style="display:none">
                        <span class="left"></span>
                        <span class="right"></span>
                    </span>
                </h3>

                <div id="photo-slider">
                    <ul class="slides">




                        <li>
                                <asp:Repeater ID="Repeater2" runat="server">
                                    <ItemTemplate>
                                        <div class="col-6">
                                          <a href='<%# "/Gallery/ShowImages.aspx?ID=" + Eval("ID") %>' data-fancybox-group="gallery" class="fancybox">
                                           <img id="Img1" src='<%#  Eval("Thumb") %>' runat="server" style="width:128px !important;height:113px !important" alt=""/>
                                           <span class="mask" style="color:#fff;background-image:none;text-align:center;vertical-align:middle;padding:5px 0 0 5px;font-size:11px;">
                                             <b style="display:block;width:100px;font-weight:normal">  <%#Eval ("Title") %></b>

                                           </span>
                                </a>
                            </div>
                                    </ItemTemplate>
                                </asp:Repeater>
                         
                        </li>

                       <%-- <li>
                           <asp:Repeater ID="Repeater3" runat="server">
                                    <ItemTemplate>
                                        <div class="col-6">
                                          <a href='<%# "/Gallery/ShowImages.aspx?ID=" + Eval("GalleryID") %>' data-fancybox-group="gallery" class="fancybox">
                                           <img src='<%# "/" + Eval("Img") %>' style="width:128px !important;height:113px !important" alt=""/>
                                           <span class="mask"></span>
                                </a>
                            </div>
                                    </ItemTemplate>
                                </asp:Repeater>
                        </li>--%>
                    </ul>
                </div>
            </div>

        </div>
    </section>

    <!-- Donate -->
    <section class="donate page" dir="rtl">

        <div class="cf">
              <a href="/donate/" class="hoverImg">  <img src="../css/images/healing.jpg" style="display:block;margin:50px auto 0;width:80%;" alt="مستشفى شفاء الاقصر - أول مستشفى لعلاج السرطان بالصعيد" /></a>
        </div>

        

        <!-- -->
    <!--    <div class="share">
            <span>شارك أصدقائك: </span>
            <a class="twitter" href="#"></a>
            <a class="facebook" href="#"></a>
           
        </div>-->

    </section>


    <!-- Section Bottom -->
    <section class="bottom" style="background:#fff">

        <div class="center cf">
            
<section class="block">
	<div class="container">
	<div class="row">
		<div class="col-md-9">
			<div class="sec-heading">
				<h2 style="text-align:right;height:50px;line-height:50px;border-bottom:1px solid #fff"><strong>مشروعات</strong> جمعية الأورمان</h2>
			</div><!-- Section Title -->
				<div class="our-project-box" style="direction:rtl">
					<div class="row">
						<div class="col-md-4">
							<div class="row">
								<div class="col-md-5">
									<div class="icon-box">
                                        <img src="../css/images/cow.png" alt="Alternate Text" />
									
									</div>
								</div>
								<div class="col-md-7">
									<div class="project-detail">
										<a href="/Projects">المشروعات التنموية</a>
										<p> مشروع تنموى يتم تسليمه للاسر الغير قادرة من الارامل و الغير قادرين .</p>			
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<div class="row">
								<div class="col-md-5">
									<div class="icon-box">
                                        <img src="../css/images/building.png" alt="Alternate Text" />
										
									</div>
								</div>
								<div class="col-md-7">
									<div class="project-detail">
										<a href="/PoorFamilies">كفالة الأسر الفقيرة</a>
										<p>هناك اكثر من 500 قرية  تقع تحت خط الفقر والاكثر معاناه من بين القرى  . </p>			
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<div class="row">
								<div class="col-md-5">
									<div class="icon-box">
                                        <img src="../css/images/money.png" alt="Alternate Text" />
										
									</div>
								</div>
								<div class="col-md-7">
									<div class="project-detail">
										<a href="/PoorFamilies">سداد الديون</a>
										<p>قد تجبر ظروف المعيشة أو الاحتياجات الطارئة من تزويج فتاة أو نفقات علاج.</p>			
									</div>
								</div>
							</div>
						</div>
						<%--<div class="col-md-4">
							<div class="row">
								<div class="col-md-5">
									<div class="icon-box">
                                        <img src="../css/images/sick.png" alt="Alternate Text" />
										
									</div>
								</div>
								<div class="col-md-7">
									<div class="project-detail">
										<a href="/Health"></a>
										<p>  .</p>			
									</div>
								</div>
							</div>
						</div>--%>
						<div class="col-md-4">
							<div class="row">
								<div class="col-md-5">
									<div class="icon-box">
                                        <img src="../css/images/eye.png" alt="Alternate Text" />
									
									</div>
								</div>
								<div class="col-md-7">
									<div class="project-detail">
										<a href="/Education">الجانب  التعليمى</a>
										<p> التعليم مفتاح النهضة لاى امة ومحو الامية أولى خطوات التنمية الحقيقة</p>			
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<div class="row">
								<div class="col-md-5">
									<div class="icon-box">
                                        <img src="../css/images/med.png" alt="Alternate Text" />
										
									</div>
								</div>
								<div class="col-md-7">
									<div class="project-detail">
										<a href="/Health">الرعاية الصحية</a>
										<p>تقدم الجمعية الاطراف الصناعية علوية وسفلية و اجهزة شلل.</p>			
									</div>
								</div>
							</div>
						</div>
					</div>
				</div><!-- Projects -->
			
		</div><!-- Projects -->
		
		<div class="col-md-3" style="float:right;margin-top:20px">
			<div class="donate-us" style="width:85%;margin-bottom:0">
				<h3>للتبرع أون لاين</h3>
				
				<div class="collected">
					<p style="text-align:right;padding-right:25px">حساب البنك </p>
					<span style="background:#93b631">19<strong>4</strong>55</span>
				</div>
				<div class="d-now">
					<a href="/donate/" class="donate-btn" title="">تبرع الان</a>
				</div>
			</div><!-- Donate Us Box -->
			<div class="video" style="margin-top:10px">
			
			<img src="../css/images/bb.jpg" alt="جمعية الأورمان - بوابتك للخير" />
           <%-- <iframe width="277" height="153" src="//www.youtube.com/embed/XIsyiSZ2kQY?list=UUuBi6Bl4OQbbAOenWmP54bw" frameborder="0" allowfullscreen></iframe>--%>
            </div><!-- Video -->
		</div>
	</div>
	</div>
</section>	
        </div>

    </section>

    <!-- Section Bottom -->

    <!-- How can you help -->
   <section class="donate" dir="rtl">

        <div class="cf">
            <div class="col-6 text">
                <h3>تصفح اخر إصدار  </h3>
                <h4 style="text-indent:39px">من مجلة الأورمان </h4>
                <h5 style="text-indent:110px"><span>2015</span> </h5>
            </div>
            <div class="col-6 but">
                <a href="/ormanmagazin.pdf" target="_blank">
                <img src="../css/images/logoS.png" alt="جمعية الأورمان - بوابتك للخير" /></a>
            </div>
        </div>

        

        <!-- -->
    <!--    <div class="share">
            <span>شارك أصدقائك: </span>
            <a class="twitter" href="#"></a>
            <a class="facebook" href="#"></a>
           
        </div>-->

    </section>

    <!-- شركاء النجاح -->
    <section class="latest-donations">

        <div class="center cf">
        
            <h2 style="font-size:20px;border-bottom:2px solid #ccc;height:55px
;line-height:55px;margin:0;padding:0">شركاء النجاح</h2>




            <div class="peoples" style="margin-top:20px !important">

             

                    <div class="col-2i">
                    <div class="circle">
                      <a href="http://www.hsbc.com.eg/" target="_blank"> <img src="../css/images/peoples/1.jpg" alt=""/></a> 
                    </div>
                   
                </div>
                <div class="col-2i">
                    <div class="circle">
                        <a href="http://www.pepsi.com/ar-aa/d/" target="_blank">  <img src="../css/images/peoples/2.jpg" alt=""/></a> 
                    </div>
                   
                </div>
                <div class="col-2i">
                    <div class="circle">
                       <a href="http://www.ghabbourauto.com/" target="_blank">   <img src="../css/images/peoples/3.jpg" alt=""/></a> 
                    </div>
                   
                </div>
                <div class="col-2i">
                    <div class="circle">
                      <a>    <img src="../css/images/peoples/4.jpg" alt=""/></a> 
                    </div>
                    
                </div>
                <div class="col-2i">
                    <div class="circle">
                       <a href="https://www.facebook.com/chipsyegypt" target="_blank">   <img src="../css/images/peoples/5.jpg" alt=""/></a> 
                    </div>
                   
                </div>
                 <div class="col-2i">
                    <div class="circle">
                       <a href="http://www.kabnoury.net/" target="_blank">   <img src="../css/images/peoples/6.jpg" alt=""/></a> 
                    </div>
                   
                </div>

                   
               
                <div class="clear" style="clear:both;float:none !important;margin-bottom:20px !important"></div>
                 
                
                
                 <div class="col-2i">
                    <div class="circle">
                      <a href="http://www.dreamparkegypt.com/" target="_blank">    <img src="../css/images/peoples/7.gif" alt=""/></a> 
                    </div>
                   
                </div>
                <div class="col-2i">
                    <div class="circle">
                      <a href="http://www.lasportal.org/" target="_blank">    <img src="../css/images/peoples/8.gif" alt=""/></a> 
                    </div>
                   
                </div>
                <div class="col-2i">
                    <div class="circle">
                       <a>   <img src="../css/images/peoples/9.gif" alt=""/></a> 
                    </div>
                   
                </div>
                <div class="col-2i">
                    <div class="circle">
                        <a href="http://www.orascomhc.com/" target="_blank">  <img src="../css/images/peoples/10.gif" alt=""/></a> 
                    </div>
                    
                </div>
                <div class="col-2i">
                    <div class="circle">
                      <a href="http://www.khalifafoundation.ae/" target="_blank">    <img src="../css/images/peoples/11.jpg" alt=""/></a> 
                    </div>
                   
                </div>
                 <div class="col-2i">
                    <div class="circle">
                      <a href="http://www.carrier.com/" target="_blank">    <img src="../css/images/peoples/12.gif" alt=""/></a> 
                    </div>
                   
                </div>


                  <div class="clear" style="clear:both;float:none !important;margin-bottom:20px !important"></div>
                 
                
                
                 <div class="col-2i">
                    <div class="circle">
                      <a>    <img src="../css/images/peoples/13.gif" alt=""/></a> 
                    </div>
                   
                </div>
                <div class="col-2i">
                    <div class="circle">
                      <a href="http://www.egyptian-steel.com/" target="_blank">    <img src="../css/images/peoples/14.jpg" alt=""/></a> 
                    </div>
                   
                </div>
                <div class="col-2i">
                    <div class="circle">
                       <a href="http://te.eg/" target="_blank">   <img src="../css/images/peoples/15.gif" alt=""/></a> 
                    </div>
                   
                </div>
                <div class="col-2i">
                    <div class="circle">
                        <a href="https://www.egypt.gov.eg/services/listServicesMinistry.aspx?ID=22&section=citizens" target="_blank">  <img src="../css/images/peoples/16.gif" alt=""/></a> 
                    </div>
                    
                </div>
                <div class="col-2i">
                    <div class="circle">
                   <a href="http://www.tareknour.com/" target="_blank">       <img src="../css/images/peoples/17.gif" alt=""/></a> 
                    </div>
                   
                </div>
                 <div class="col-2i">
                    <div class="circle">
                     <a href="https://www.mobinil.com" target="_blank">     <img src="../css/images/peoples/18.gif" alt=""/></a> 
                    </div>
                   
                </div>

                  
               
            </div>
        </div>

    </section>
  
   
    <footer>
        <div class="line">
            <div class="center cf">
                 <div class="links">
                    <a href="/home">الرئيسية</a>
                    <a href="/News">الاخبار الصحفية</a>
                    <a href="/Volunteer">إستمارة التطوع</a>
                    <a href="/BankAccounts">حسابات البنوك</a>
                    <a href="/Compalin">صندوق الشكاوى</a>
                   
                    <a href="/Branches">إتصل بنا</a>
                </div>
                <div class="copy">© 2014  جميع الحقوق محفوظة. <span>جمعية الأورمان - بوابتك للخير</span> </div>
            </div>
        </div>

      
    </footer>
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
    
    <!-- Libs -->
  
    <script src="../js/libs/jquery.flexslider-min.js"></script>
    
    <!-- Custom -->
    <script src="../js/scripts.js"></script>
    <script>
        InitHome();
    </script>

    </form>
</body>
</html>
