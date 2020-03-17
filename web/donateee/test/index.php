<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html dir="rtl">


<head>
<meta http-equiv='Content-Type' content='text/html; charset=windows-1256'>

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

	<!-- Add Media helper (this is optional) -->
	<script type="text/javascript" src="/source/helpers/jquery.fancybox-media.js?v=1.0.0"></script>

	<script type="text/javascript">
	    $(document).ready(function () {
	        /*
			 *  Simple image gallery. Uses default settings
			 */

	        $('.fancybox').fancybox();

	        /*
			 *  Different effects
			 */

	        // Change title type, overlay opening speed and opacity
	        $(".fancybox-effects-a").fancybox({
	            helpers: {
	                title: {
	                    type: 'outside'
	                },
	                overlay: {
	                    speedIn: 500,
	                    opacity: 0.95
	                }
	            }
	        });

	        // Disable opening and closing animations, change title type
	        $(".fancybox-effects-b").fancybox({
	            openEffect: 'none',
	            closeEffect: 'none',

	            helpers: {
	                title: {
	                    type: 'over'
	                }
	            }
	        });

	        // Set custom style, close if clicked, change title type and overlay color
	        $(".fancybox-effects-c").fancybox({
	            wrapCSS: 'fancybox-custom',
	            closeClick: true,

	            helpers: {
	                title: {
	                    type: 'inside'
	                },
	                overlay: {
	                    css: {
	                        'background-color': '#eee'
	                    }
	                }
	            }
	        });

	        // Remove padding, set opening and closing animations, close if clicked and disable overlay
	        $(".fancybox-effects-d").fancybox({
	            padding: 0,

	            openEffect: 'elastic',
	            openSpeed: 150,

	            closeEffect: 'elastic',
	            closeSpeed: 150,

	            closeClick: true,

	            helpers: {
	                overlay: null
	            }
	        });

	        /*
			 *  Button helper. Disable animations, hide close button, change title type and content
			 */

	        $('.fancybox-buttons').fancybox({
	            openEffect: 'none',
	            closeEffect: 'none',

	            prevEffect: 'none',
	            nextEffect: 'none',

	            closeBtn: false,

	            helpers: {
	                title: {
	                    type: 'inside'
	                },
	                buttons: {}
	            },

	            afterLoad: function () {
	                this.title = 'Image ' + (this.index + 1) + ' of ' + this.group.length + (this.title ? ' - ' + this.title : '');
	            }
	        });


	        /*
			 *  Thumbnail helper. Disable animations, hide close button, arrows and slide to next gallery item if clicked
			 */

	        $('.fancybox-thumbs').fancybox({
	            prevEffect: 'none',
	            nextEffect: 'none',

	            closeBtn: false,
	            arrows: false,
	            nextClick: true,

	            helpers: {
	                thumbs: {
	                    width: 50,
	                    height: 50
	                }
	            }
	        });

	        /*
			 *  Media helper. Group items, disable animations, hide arrows, enable media and button helpers.
			*/
	        $('.fancybox-media')
				.attr('rel', 'media-gallery')
				.fancybox({
				    openEffect: 'none',
				    closeEffect: 'none',
				    prevEffect: 'none',
				    nextEffect: 'none',

				    arrows: false,
				    helpers: {
				        media: {},
				        buttons: {}
				    }
				});

	        /*
			 *  Open manually
			 */

	        $("#fancybox-manual-a").click(function () {
	            $.fancybox.open('1_b.jpg');
	        });

	        $("#fancybox-manual-b").click(function () {
	            $.fancybox.open({
	                href: 'iframe.html',
	                type: 'iframe',
	                padding: 5
	            });
	        });

	        $("#fancybox-manual-c").click(function () {
	            $.fancybox.open([
					{
					    href: '1_b.jpg',
					    title: 'My title'
					}, {
					    href: '2_b.jpg',
					    title: '2nd title'
					}, {
					    href: '3_b.jpg'
					}
	            ], {
	                helpers: {
	                    thumbs: {
	                        width: 75,
	                        height: 50
	                    }
	                }
	            });
	        });


	    });
	</script>
	<style type="text/css">
		.fancybox-custom .fancybox-skin {
			box-shadow: 0 0 50px #222;
		}
	</style>
	<!-- Facebook Conversion Code for Donations Ramadan 2015 -->
<script>(function() {
var _fbq = window._fbq || (window._fbq = []);
if (!_fbq.loaded) {
var fbds = document.createElement('script');
fbds.async = true;
fbds.src = '//connect.facebook.net/en_US/fbds.js';
var s = document.getElementsByTagName('script')[0];
s.parentNode.insertBefore(fbds, s);
_fbq.loaded = true;
}
})();
window._fbq = window._fbq || [];
window._fbq.push(['track', '6025263830135', {'value':'0.00','currency':'USD'}]);
</script>
<noscript><img height="1" width="1" alt="" style="display:none" src="https://www.facebook.com/tr?ev=6025263830135&amp;cd[value]=0.00&amp;cd[currency]=USD&amp;noscript=1" /></noscript>









<script>(function() {
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
                    <a href="/donate/index.php" target="_blank">للتبرع أون لاين اضغط هنا</a>
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
<div class="gallery" style="margin:0;padding:0;background-size:98% 600px;background-position:top center">
        <aside class="" style="width:100%;float:none">

             <div id="aside-dynamic">
             <div class="menu cf" style="margin:2px 0 0 0">
                   
                 
                </div>
                 </div>
            <div class="recent-events">



        
		<img src="/css/images/donate1.png" style="width:884px;margin:0 auto 20px;display:block" alt="" />
               

<noscript> نعتذر ولكب يجب تفعيل الجافا سكريبت </noscript>





<script language="javascript">

function uniqid()
    {
    var newDate = new Date;
    return newDate.getTime(); 
    } 
    
// generating unique id    
var rand1=uniqid();
var rand2 = Math.round(Math.round(Math.random()*1000)); 
var rand = rand1+"ORDER"+rand2;

// inserting unique id into fields
function fill()
{
   document.getElementById("rand_MerchTxnRef").value=rand;
   document.getElementById("rand_OrderInfo").value=rand; 
}

// update merchant
function update_merchant()
{
    var curr = document.getElementById("curr").value;

    if(curr=="egp")
    {
            document.getElementById("merchant_num").value="3760131007";
            document.getElementById("accesscode").value="FF8BBB20";
            document.getElementById("curr_text").innerHTML="المبلغ المراد التبرع به بالجنية المصرى بحد ادنى 10 جنية : "; 
            document.getElementById("sh").value="A911E65401E660B9396D060ECA10BE89";
            document.getElementById("url").value="http://www.dar-alorman.com/donate/vpc_php_serverhost_dr.php";
    }
    else if(curr=="usd")
    {
            document.getElementById("merchant_num").value="3760132005";
            document.getElementById("accesscode").value="961EF358";
            document.getElementById("curr_text").innerHTML="المبلغ المراد التبرع به بالدولار الامريكى بحد ادنى 10 دولار : ";
            document.getElementById("sh").value="4FA1F453C0ABDA67A3550DB9A9A84AA5";
            document.getElementById("url").value="http://www.dar-alorman/donate/vpc_php_serverhost_dr_usd.php";
    }
    else
    {
        window.refresh();
    }
 
}


function update_bank()
{
    var b = document.getElementById("bank").value;

    if(b=="nbe")
    {
        location.href='/donate2'
    }
    else if(b=="bm")
    {
        location.href='/donate'

    }
	else if(b=="arabaf")
    {
        location.href='/USD'

    }
    else
    {
        window.refresh();
    }
 
}

// get data for confirm window

function validate_all()
{
  var t1 = document.getElementById('amount').value;
  var answer = confirm('ستقوم الان بالتبرع بمبلغ ' + getdata());

 
 if(t1 >= 10 && answer)
 {
    return true;
 }
 else if(t1 < 10 && answer)
 {
     alert('المبلغ اقل من الحد الادنى للتبرع');
     return false;
 }
 else
 {
     return false;
 }
 
 
}

function getdata()
{
 var t1 = document.getElementById('amount').value;
  
 var t2t = document.getElementById("curr").value;
 if(t2t == "egp")
 {
    var t2=" جنية مصرى ";
 }
 else if(t2t == "usd")
 {
    var t2=" دولار امريكى ";
 } 
 
 return confirm_text=t1+t2;
}

// adding the real amount
function ra()
{
 var t1 = document.getElementById('amount').value;
 
 document.getElementById('real_amount').value=t1*100;
}




    
</script>
         
<form action="./vpc_php_serverhost_do.php" method="post">
<input type="hidden" name="Title" value="PHP VPC 3-Party">



<div class="col-4" style="width:100%">
                    <h2>يجب أن تكون العملة بالجنيه المصرى فقط ويجب ان تكون البطاقة تصلح للتعامل الأون لاين</h2>
                    <div class="form">
<a href="/" style="padding:5px 20px;background:#F39200;
			float:left;height:40px;-webkit-border-radius:5px
			;color:#fff;margin-bottom:10px;-moz-border-radius:5px;border-radius:5px;">العودة لموقع الجمعية</a>

			 <div style="clear:both"></div>

    <!-- get user input -->
  

    <div class="form" bgcolor="#E1E1E1" style="display: none; display: none;">
        <td width="1%">&nbsp;</td>
        <td width="40%" align="right"><b><i>Virtual Payment Client URL:&nbsp;</i></b></td>
        <td width="59%"><input type="text" name="virtualPaymentClientURL" size="63" value="https://migs.mastercard.com.au/vpcpay" maxlength="250"></td>
    </div>
    <div style="display: none; display: none;">
        <td>&nbsp;</td>
        <td align="right"><b><i> VPC Version: </i></b></td>
        <td><input type="text" name="vpc_Version" value="1" size="20" maxlength="8"></td>
    </div>
    <div bgcolor="#E1E1E1" style="display: none; display: none;">
        <td>&nbsp;</td>
        <td align="right"><b><i>Command Type: </i></b></td>
        <td><input type="text" name="vpc_Command" value="pay" size="20" maxlength="16"></td>
    </div>
    <div  style="display: none; display: none;">
        <td>&nbsp;</td>
        <td align="right">Merchant AccessCode</td>
        <td><input type="text" name="vpc_AccessCode" id="accesscode" value="FF8BBB20" size="20" maxlength="8"></td>
    </div>
    <div bgcolor="#E1E1E1"  style="display: none; display: none;">
        <td>&nbsp;</td>
        <td align="right">Merchant Transaction Reference </td>
        <td><input type="text" name="vpc_MerchTxnRef" id="rand_MerchTxnRef" value="" size="40" maxlength="40"></td>
    </div>
    <div  style="display: none; display: none;">
        <td>&nbsp;</td>
        <td align="right">MerchantID </td>
        <td><input type="text" name="vpc_Merchant" id="merchant_num" value="3760131007" size="20" maxlength="16"></td>
    </div>
    <div bgcolor="#E1E1E1"  style="display: none; display: none;">
        <td>&nbsp;</td>
        <td align="right">Transaction OrderInfo </td>
        <td><input type="text" name="vpc_OrderInfo" id="rand_OrderInfo" size="40" maxlength="34"></td>
    </div>
    <br/><br/>
	<p>
     الرجاء اختيار البنك : 
       
        <select id="bank" onchange="update_bank()" style="width: 100%;height:40px;-webkit-border-radius:5px;-moz-border-radius:5px;border-radius:5px;">
        <option value="bm" selected="selected">بنك مصر</option>
        <option value="nbe">البنك الاهلى</option>
		 <option value="arabaf">البنك العربى الافريقى</option>
        </select>
       </p>
     <br/><br/>
    <p>
   المبلغ المراد التبرع به بالجنية المصرى بحد ادنى 10 جنية : 
       
        <input type="text" name="vpc_Amount_temp" id="amount" value="10" size="20" maxlength="10" style="width: 20%;height:40px;-webkit-border-radius:5px;-moz-border-radius:5px;border-radius:5px;"> 
        <select name="curr" id="curr" onchange="update_merchant()" style="width: 50%;height:40px;-webkit-border-radius:5px;-moz-border-radius:5px;border-radius:5px;">
        <option value="egp">جنية مصرى</option>
       
        </select>
        </p>
    <br/><br/>
	<p>
  الغرض من التبرع : 
        
        <select name="purp" style="width: 100%;height:40px;-webkit-border-radius:5px;-moz-border-radius:5px;border-radius:5px;">
		<option value="shefaa">مستشفى شفاء الأورمان</option>
		<option value="heart">عمليات القلب</option>
		<option value="orphan">كفالة اليتيم</option>
        <option value="sac">الاضحية</option>
        <option value="shanta">شنطة رمضان</option>
        <option value="zm">زكاة مال</option>
        <option value="z">زكاة</option>
        <option value="s">صدقة</option>
        <option value="sg">صدقة جارية</option>
        </select>

		</p>
		<br/><br/>
		<p>
      بريدك الالكترونى : 
       

                <input type="text" name="dmail" style="width: 100%;height:40px;-webkit-border-radius:5px;-moz-border-radius:5px;border-radius:5px;">
     
    
 </p>
 	<div style="clear:both"></div>
 	<br/><br/>

      <p> 
                <textarea placeholder="عنوان منزلك" name="addr" style="width: 100%;height:70px;-webkit-border-radius:5px;-moz-border-radius:5px;border-radius:5px;"></textarea>
        	</p>
			<div style="clear:both"></div>
			<br/><br/>
			
			<p>
                <input placeholder="الاسم الثلاثى" type="text" name="name" style="width: 100%;height:40px;-webkit-border-radius:5px;-moz-border-radius:5px;border-radius:5px;">
        </p>
		<div style="clear:both"></div>
       	<br/><br/>
		<p>
                <input placeholder="رقم الهاتف" type="text" name="phone" style="width: 100%;height:40px;-webkit-border-radius:5px;-moz-border-radius:5px;border-radius:5px;">
       
    </p>
    	<br/><br/>
    
    
    <div style="clear:both"></div>
    
    
    
    
   
    
    
        <div  style="display: none; display: none;">
        <td>&nbsp;</td>
        <td align="right">Secret Hash</td>
        <td>
        <input type="text" name="sh" id="sh" value="A911E65401E660B9396D060ECA10BE89" size="50"> 
        </div>
 
    <div bgcolor="#E1E1E1"  style="display: none; display: none;">
      
       Real Amount 
       <input type="text" name="vpc_Amount" id="real_amount" size="40" maxlength="34">
    </div>
   

    <div bgcolor="#E1E1E1"  style="display: none; display: none;">
        <td>&nbsp;</td>
        <td align="right"><b><i>Payment Server Display Language Locale: </i></b></td>
        <td><input type="text" name="vpc_Locale" value="en" size="20" maxlength="5"></td>
    </div>
    <div  style="display: none; display: none;">
        <td>&nbsp;</td>
        <td align="right"><b><i>Receipt ReturnURL: </i></b></td>
        <td><input type="text" name="vpc_ReturnURL" id="url" size="63" value="http://www.dar-alorman.com/donate/vpc_php_serverhost_dr.php" maxlength="250"></td>
    </div>

   
            
            <input type="submit" style="padding:5px 20px;background:#F39200;
			float:left;margin-top:30px;height:40px;-webkit-border-radius:5px
			;color:#fff;margin-bottom:30px;-moz-border-radius:5px;border-radius:5px;" name="SubButL" value="تاكيد التبرع" onclick="ra(); getdata(); return validate_all();  ">
            
 
          <div style="clear:both"></div>


    <div style="display: none; display: none;"><td colspan="3">&nbsp;<hr width="75%">&nbsp;</td></div>
    <div bgcolor="#C1C1C1" style="display: none; display: none;">
        <td colspan="3" height="25"><p><b>&nbsp;Optional Ticket Number Field</b></p></td>
    </div>
    <div style="display: none; display: none;">
        <td>&nbsp;</td>
        <td align="right"><b><i>TicketNo: </i></b></td>
        <td><input type="text" name="vpc_TicketNo" maxlength="15"></td>
    </div>

    <div style="display: none; display: none;"><td colspan="3">&nbsp;<hr width="75%">&nbsp;</td></div>
    <div bgcolor="#C1C1C1" style="display: none; display: none;">
        <td colspan="3" height="25"><p><b>&nbsp;Optional Transaction Source Subtype Field</b></p></td>
    </div>
    <div style="display: none; display: none;">
        <td>&nbsp;</td>
        <td align="right"><b><i>Transaction Source Subtype: </i></b></td>
        <td><select name="vpc_TxSourceSubType">
                <option value="">Please Select</option>
                <option value="SINGLE">Indicates a single payment to complete order</option>
                <option value="INSTALLMENT">Indicates an installment transaction</option>
                <option value="RECURRING">Indicates a recurring transaction</option>
            </select>
       
    </div>
    </div>

                </div>
  </form>
  

  <script language="javascript">
  fill();
  </script>
  
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

</body>
</html>
