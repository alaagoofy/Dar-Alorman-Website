<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FB.aspx.cs" Inherits="test_Default" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html dir="rtl">


<head>
<meta http-equiv='Content-Type' content='text/html; charset=utf-8'>

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
            function ra() {
                var t1 = document.getElementById('amount').value;

                document.getElementById('vpc_Amount').value = t1 * 100;
                
            }

       

            function validate_all() {
                
                var email = document.getElementById('txtmail');
                var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;

                if (!filter.test(email.value)) {
                    alert('يجب ادخال بريد إلكترونى صحيح');
                    email.focus();
                    return false;
                }
                    
             


                var t1 = document.getElementById('amount').value;
                var answer = confirm('ستقوم الان بالتبرع بمبلغ ' + getdata());
                    
            }
           



            function update_bank() {
                var b = document.getElementById("bank").value;

                if (b == "bm") {
                    location.href = '/donate'
                }
                else if (b == "nbe") {
                    location.href = '/donate2'

                }
                else if (b == "arabaf") {
                    location.href = '/USD'

                }
                else {
                    window.refresh();
                }

            }




            function update_merchant() {
                var curr = document.getElementById("curr").value;

                if (curr == "egp") {
                    location.href = '/donate'
                }
                else if (curr == "usd") {
                   
                }
                else {
                    window.refresh();
                }

            }



            function getdata() {
                var t1 = document.getElementById('amount').value;

                var t2t = document.getElementById("curr").value;
                if (t2t == "egp") {
                   
                }
                else if (t2t == "usd") {
                    var t2 = " دولار امريكى ";
                }

                return confirm_text = t1 + t2;
            }
    </script>
</head>
<body>






      <div style="width:90%;margin:auto">


               



               

  <form id="Form1" action="CS_VPC_3Party_DO.aspx" method="post" runat="server">
<input type="hidden" name="Title" value="ASP.NET C# VPC 3-Party"/>


      <p style="display:none">
      <input type="text" name="virtualPaymentClientURL" size="63" value="https://migs.mastercard.com.au/vpcpay" maxlength="250"/>
  </p>
  
     <p style="display:none">
      <input type="text" name="vpc_Version" value="1" size="20" maxlength="8"/>
   </p>

      <p style="display:none">
       <input type="text" name="vpc_Command" value="pay" size="20" maxlength="16"/>
   </p>
    
      <p style="display:none">
       <input type="text" name="vpc_AccessCode" value="FF8BBB20" size="20" maxlength="8"/>
   </p>
    <p style="display:none">
      <asp:TextBox ID="vpc_MerchTxnRef"   runat="server"></asp:TextBox>
      </p>
      <p style="display:none">
       <input type="text" id="vpc_Merchant" name="vpc_Merchant" value="3760131007" size="20" maxlength="16"/>
   </p>
       <p style="display:none">
           <asp:TextBox ID="vpc_OrderInfo"   runat="server"></asp:TextBox>
     
   </p>

     
     

      <p style="display:none">
      <input type="text" name="vpc_ReturnURL" size="63" value="http://www.dar-alorman.com/testaspx/CS_VPC_3Party_DR.aspx" maxlength="250"/>
   </p>
      <p style="display:none">
      <input type="text" name="vpc_Locale" value="en" size="20" maxlength="5"/>
    </p>
          

    
      <p>
     الرجاء اختيار البنك : 
       
        <select id="bank" onchange="update_bank()" style="width: 100%;height:40px;-webkit-border-radius:5px;-moz-border-radius:5px;border-radius:5px;">
     <%--  <option value="arabaf" selected="selected">البنك العربى الافريقى</option>--%>
              <option value="bm" selected="selected">بنك مصر</option>
        <option value="nbe">البنك الاهلى</option>
        </select>
       </p>
     <br/><br/>
    <p>
   المبلغ المراد التبرع به بالجنيه المصرى  : 
       
       <input type="text" name="vpc_Amount_temp" id="amount" value="10" size="20" maxlength="10" style="width: 20%;height:40px;-webkit-border-radius:5px;-moz-border-radius:5px;border-radius:5px;"> 
      

      <%--  <select name="curr" id="curr" onchange="update_merchant()" style="width: 50%;height:40px;-webkit-border-radius:5px;-moz-border-radius:5px;border-radius:5px;">
        <option value="usd" selected="selected">دولار</option>
        <option value="egp">جنية مصرى</option>
             
        </select>--%>
        </p> 
        <p style="display:none">  <asp:TextBox ID="vpc_Amount" runat="server"></asp:TextBox> </p>
    <br/><br/>

		    <p>
		        <input placeholder="بريدك الالكترونى" type="text" id='txtmail' name="txtmail" style="width: 100%;height:40px;-webkit-border-radius:5px;-moz-border-radius:5px;border-radius:5px;"/>
            </p>
 	        <div style="clear:both"></div>
 	        <br/><br/>
      
			<p>
			    <input placeholder="الاسم الثلاثى" type="text" id="txtname" name="txtname" style="width: 100%;height:40px;-webkit-border-radius:5px;-moz-border-radius:5px;border-radius:5px;"/>
            </p>
		    <div style="clear:both"></div>
       	    <br/><br/>

<%--            <p>
                <input placeholder="عنوان منزلك" type="text" name="txtAddress" style="width: 100%;height:40px;-webkit-border-radius:5px;-moz-border-radius:5px;border-radius:5px;"/>
             
                <textarea placeholder="عنوان منزلك" id='addr' name="addr" style="width: 100%;height:70px;-webkit-border-radius:5px;-moz-border-radius:5px;border-radius:5px;"></textarea>
        	</p>
 	        <div style="clear:both"></div>
			<br/><br/>
      --%>
		   
 	        <div style="clear:both"></div>
			<br/><br/>
		
       <input type="submit" name="SubButL" style="padding:5px 20px;background:#F39200;
			float:left;margin-top:30px;height:40px;-webkit-border-radius:5px
			;color:#fff;margin-bottom:30px;-moz-border-radius:5px;border-radius:5px;"  onclick="ra(); getdata(); return validate_all(); " value="تأكيد التبرع"/>
    	<br/><br/>
        <div style="clear:both"></div>
    
  
</form>

             
          </div>
          


 

  




    <!-- Libs -->
  
    <script src="/js/libs/jquery.flexslider-min.js"></script>
    
    <!-- Custom -->
    <script src="/js/scripts.js"></script>
      <script>
          InitBlog();
    </script>


</body>
</html>

