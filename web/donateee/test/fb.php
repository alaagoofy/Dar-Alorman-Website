<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html dir="rtl">


<head>
<meta http-equiv='Content-Type' content='text/html; charset=windows-1256'>

 <title>تبرع أون لاين الان</title>
    <meta name="description" content="جمعية الاورمان الخيرية | بوابتك للخير"/>
  


</head>
<body>






 <header class="top cf">
       
        
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
  
  

</body>
</html>
