<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html dir="rtl">


<head><title>Virtual Payment Client Request Details</title>
<meta http-equiv='Content-Type' content='text/html; charset=windows-1256'>
<style type='text/css'>
    <!--
    h1       { font-family:tahoma-Arial,sans-serif; font-size:24pt; color:#08185A; font-weight:100}
    h2.co    { font-family:tahoma-Arial,sans-serif; font-size:24pt; color:#08185A; margin-top:0.1em; margin-bottom:0.1em; font-weight:100}
    h3.co    { font-family:tahoma-Arial,sans-serif; font-size:16pt; color:#000000; margin-top:0.1em; margin-bottom:0.1em; font-weight:100}
    body     { font-family:tahoma-Verdana,Arial,sans-serif; font-size:10pt; color:#08185A background-color:#FFFFFF }
    p        { font-family:tahoma-Verdana,Arial,sans-serif; font-size:10pt; color:#FFFFFF }
    p.bl     { font-family:tahoma-Verdana,Arial,sans-serif; font-size:8pt; color:#08185A }
    a:link   { font-family:tahoma-Verdana,Arial,sans-serif; font-size:8pt; color:#08185A }
    a:visited{ font-family:tahoma-Verdana,Arial,sans-serif; font-size:8pt; color:#08185A }
    a:hover  { font-family:tahoma-Verdana,Arial,sans-serif; font-size:8pt; color:#FF0000 }
    a:active { font-family:tahoma-Verdana,Arial,sans-serif; font-size:8pt; color:#FF0000 }
    td       { font-family:tahoma-Verdana,Arial,sans-serif; font-size:13pt; color:#08185A; font-weight: bold; }
    th       { font-family:tahoma-Verdana,Arial,sans-serif; font-size:10pt; color:#08185A; font-weight:bold; background-color:#E1E1E1; padding-top:0.5em; padding-bottom:0.5em}
    input    { font-family:tahoma-Verdana,Arial,sans-serif; font-size:10pt; color:#08185A; background-color:#E1E1E1; font-weight:bold }
    select   { font-family:tahoma-Verdana,Arial,sans-serif; font-size:8pt; color:#08185A; background-color:#E1E1E1; font-weight:bold }
    textarea { font-family:tahoma-Verdana,Arial,sans-serif; font-size:8pt; color:#08185A; background-color:#E1E1E1; font-weight:normal; scrollbar-arrow-color:#08185A; scrollbar-base-color:#E1E1E1 }
    -->
</style></head>
<body bgcolor="#12391b">

<noscript> نعتذر ولكب يجب تفعيل الجافا سكريبت </noscript>
<table width="900" align="center" height="1000" style="background-image: url('../dar2/images/donate_page.gif');"><tr><td>

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
            document.getElementById("merchant_num").value="DAR_ELORMAN";
            document.getElementById("accesscode").value="163B6DB4";
            document.getElementById("curr_text").innerHTML="المبلغ المراد التبرع به بالجنية المصرى بحد ادنى 10 جنية : "; 
            document.getElementById("sh").value="2482664C3CE3AA9D8592EFA6BA9E1F46   ";
            document.getElementById("url").value="http://www.dar-alorman.com/donate2/vpc_php_serverhost_dr.php";
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
        location.href='../donate2'
    }
    else if(b=="bm")
    {
        location.href='../donate'

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

      <br /><br /><br /><br /><br /><br />
<table width="650" align="center" border="0" cellpadding='5' cellspacing='5'><tr><td><a href="../dar2" style="color: white; font-family: arial; font-size: 11pt; font-weight: bold;">العودة لموقع الجمعية</a></td></tr></table>

    <!-- get user input -->
    <table width="650" align="center" border="0" cellpadding='5' cellspacing='5' style="margin-top: 20px;">


    <tr bgcolor="#E1E1E1" style="display: none; visibility: hidden;">
        <td width="1%">&nbsp;</td>
        <td width="40%" align="right"><b><i>Virtual Payment Client URL:&nbsp;</i></b></td>
        <td width="59%"><input type="text" name="virtualPaymentClientURL" size="63" value="https://migs.mastercard.com.au/vpcpay" maxlength="250"></td>
    </tr>
    <tr style="display: none; visibility: hidden;">
        <td>&nbsp;</td>
        <td align="right"><b><i> VPC Version: </i></b></td>
        <td><input type="text" name="vpc_Version" value="1" size="20" maxlength="8"></td>
    </tr>
    <tr bgcolor="#E1E1E1" style="display: none; visibility: hidden;">
        <td>&nbsp;</td>
        <td align="right"><b><i>Command Type: </i></b></td>
        <td><input type="text" name="vpc_Command" value="pay" size="20" maxlength="16"></td>
    </tr>
    <tr  style="display: none; visibility: hidden;">
        <td>&nbsp;</td>
        <td align="right">Merchant AccessCode</td>
        <td><input type="text" name="vpc_AccessCode" id="accesscode" value="163B6DB4" size="20" maxlength="8"></td>
    </tr>
    <tr bgcolor="#E1E1E1"  style="display: none; visibility: hidden;">
        <td>&nbsp;</td>
        <td align="right">Merchant Transaction Reference </td>
        <td><input type="text" name="vpc_MerchTxnRef" id="rand_MerchTxnRef" value="" size="40" maxlength="40"></td>
    </tr>
    <tr  style="display: none; visibility: hidden;">
        <td>&nbsp;</td>
        <td align="right">MerchantID </td>
        <td><input type="text" name="vpc_Merchant" id="merchant_num" value="DAR_ELORMAN" size="20" maxlength="16"></td>
    </tr>
    <tr bgcolor="#E1E1E1"  style="display: none; visibility: hidden;">
        <td>&nbsp;</td>
        <td align="right">Transaction OrderInfo </td>
        <td><input type="text" name="vpc_OrderInfo" id="rand_OrderInfo" size="40" maxlength="34"></td>
    </tr>
    
    
    
    
    <tr>
        <td>&nbsp;</td>
        <td align="right" style="color: white;">الرجاء اختيار البنك : </td>
        <td>
        <select id="bank" onchange="update_bank()" style="width: 150px; height: 30px; font-family: arial; font-size: 11pt;">
        <option value="bm">بنك مصر</option>
        <option value="nbe" selected="selected">البنك الاهلى</option>
        </select>
        </td>
    </tr>     
    
    
    <tr>
        <td>&nbsp;</td>
        <td align="right" id="curr_text" style="color: white;">المبلغ المراد التبرع به بالجنية المصرى بحد ادنى 10 جنية : </td>
        <td>
        <input type="text" name="vpc_Amount_temp" id="amount" value="10" size="20" maxlength="10"> 
        <select name="curr" id="curr" onchange="update_merchant()">
        <option value="egp">جنية مصرى</option>
        </select>
        </td>
    </tr>
    
        <tr>
        <td>&nbsp;</td>
        <td align="right" style="color: white;">الغرض من التبرع : </td>
        <td>
        <select name="purp" style="width: 170px; height: 25px; font-size: 10pt;">
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
        </td>
    </tr>
    
    
        <tr>
        <td>&nbsp;</td>
        <td align="right" style="color: white;">بريدك الالكترونى : </td>
        <td>
                <input type="text" name="dmail" style="width: 200px;">
        </td>
    </tr>
    
    
        <tr>
    
    <td colspan="3" align="center">
    
     <table border="0" width="650" height="210" cellpadding="0" cellspacing="0" style="text-align: right; background-image: url('dbg.png'); background-repeat: no-repeat;">
    
    <tr><td colspan="2" height="35"></td></tr>
    
    <tr>
        <td align="right" style="color: black; width: 143px; height: 90px;"></td>
        <td>
                <textarea name="addr" style="height: 60px; width: 310px; border: none; background-color: #fbc585;"></textarea>
        </td>
    </tr>
    
    <tr>
        <td align="right" style="color: black; height: 30px;"></td>
        <td>
                <input type="text" name="name" style="width: 200px;border: none; background-color: #ffe281;">
        </td>
    </tr>
    
        <tr>
        <td align="right" style="color: black;"></td>
        <td>
                <input type="text" name="phone" style="width: 120px;border: none; background-color: #c8beb4;">
        </td>
    </tr>
    
    
    </table>

    </td>
    
    
    
    </tr>    
    

    
    
    
        <tr  style="display: none; visibility: hidden;">
        <td>&nbsp;</td>
        <td align="right">Secret Hash</td>
        <td>
        <input type="text" name="sh" id="sh" value="2482664C3CE3AA9D8592EFA6BA9E1F46" size="50"> 
        </td>
    </tr>
    <tr bgcolor="#E1E1E1"  style="display: none; visibility: hidden;">
        <td>&nbsp;</td>
        <td align="right">Real Amount </td>
        <td><input type="text" name="vpc_Amount" id="real_amount" size="40" maxlength="34"></td>
    </tr>
    <tr>

    <tr bgcolor="#E1E1E1"  style="display: none; visibility: hidden;">
        <td>&nbsp;</td>
        <td align="right"><b><i>Payment Server Display Language Locale: </i></b></td>
        <td><input type="text" name="vpc_Locale" value="en" size="20" maxlength="5"></td>
    </tr>
    <tr  style="display: none; visibility: hidden;">
        <td>&nbsp;</td>
        <td align="right"><b><i>Receipt ReturnURL: </i></b></td>
        <td><input type="text" name="vpc_ReturnURL" id="url" size="63" value="http://www.dar-alorman.com/donate2/vpc_php_serverhost_dr.php" maxlength="250"></td>
    </tr>

    <tr>    <td colspan="2">&nbsp;</td> 
            <td>
            
            <input type="submit" name="SubButL" value="تاكيد التبرع" onclick="ra(); getdata(); return validate_all();  ">
            </td>
            </tr>

    <tr style="display: none; visibility: hidden;"><td colspan="3">&nbsp;<hr width="75%">&nbsp;</td></tr>

    
    
    
    <tr bgcolor="#C1C1C1" style="display: none; visibility: hidden;">
        <td colspan="3" height="25"><p><b>&nbsp;Optional Ticket Number Field</b></p></td>
    </tr>
    <tr style="display: none; visibility: hidden;">
        <td>&nbsp;</td>
        <td align="right"><b><i>TicketNo: </i></b></td>
        <td><input type="text" name="vpc_TicketNo" maxlength="15"></td>
    </tr>

    <tr style="display: none; visibility: hidden;"><td colspan="3">&nbsp;<hr width="75%">&nbsp;</td></tr>
    <tr bgcolor="#C1C1C1" style="display: none; visibility: hidden;">
        <td colspan="3" height="25"><p><b>&nbsp;Optional Transaction Source Subtype Field</b></p></td>
    </tr>
    <tr style="display: none; visibility: hidden;">
        <td>&nbsp;</td>
        <td align="right"><b><i>Transaction Source Subtype: </i></b></td>
        <td><select name="vpc_TxSourceSubType">
                <option value="">Please Select</option>
                <option value="SINGLE">Indicates a single payment to complete order</option>
                <option value="INSTALLMENT">Indicates an installment transaction</option>
                <option value="RECURRING">Indicates a recurring transaction</option>
            </select>
        </td>
    </tr>
    <tr><td colspan="3">&nbsp;<hr width="75%">&nbsp;</td></tr>

    </table><br/>
  </form>
    <!--<div style="text-align: center;"><img src="logo.png"></div> -->

  </td></tr></table> 
  <script language="javascript">
  fill();
  </script>
  
  
  

</body>
</html>
