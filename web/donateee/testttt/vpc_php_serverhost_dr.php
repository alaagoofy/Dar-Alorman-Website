<?php
header("Content-Type:text/html;charset=windows-1256;");
include('config.php');
include('class.phpmailer.php');
include('functions.php');
    $today = getdate();
// *********************
// START OF MAIN PROGRAM
// *********************

// Define Constants
// ----------------
// This is secret for encoding the MD5 hash
// This secret will vary from merchant to merchant
// To not create a secure hash, let SECURE_SECRET be an empty string - ""
// $SECURE_SECRET = "secure-hash-secret";
$SECURE_SECRET = "F76CB19F40C4CC38F5D6E8D48CDC72B3";

// If there has been a merchant secret set then sort and loop through all the
// data in the Virtual Payment Client response. While we have the data, we can
// append all the fields that contain values (except the secure hash) so that
// we can create a hash and validate it against the secure hash in the Virtual
// Payment Client response.

// NOTE: If the vpc_TxnResponseCode in not a single character then
// there was a Virtual Payment Client error and we cannot accurately validate
// the incoming data from the secure hash. */

// get and remove the vpc_TxnResponseCode code from the response fields as we
// do not want to include this field in the hash calculation
$vpc_Txn_Secure_Hash = $_GET["vpc_SecureHash"];
unset($_GET["vpc_SecureHash"]); 

// set a flag to indicate if hash has been validated
$errorExists = false;

if (strlen($SECURE_SECRET) > 0 && $_GET["vpc_TxnResponseCode"] != "7" && $_GET["vpc_TxnResponseCode"] != "No Value Returned") {

    $md5HashData = $SECURE_SECRET;

    // sort all the incoming vpc response fields and leave out any with no value
    foreach($_GET as $key => $value) {
        if ($key != "vpc_SecureHash" or strlen($value) > 0) {
            $md5HashData .= $value;
        }
    }
    
    // Validate the Secure Hash (remember MD5 hashes are not case sensitive)
	// This is just one way of displaying the result of checking the hash.
	// In production, you would work out your own way of presenting the result.
	// The hash check is all about detecting if the data has changed in transit.
    if (strtoupper($vpc_Txn_Secure_Hash) == strtoupper(md5($md5HashData))) {
        // Secure Hash validation succeeded, add a data field to be displayed
        // later.
        $hashValidated = "<FONT color='#00AA00'><strong>CORRECT</strong></FONT>";
    } else {
        // Secure Hash validation failed, add a data field to be displayed
        // later.
        $hashValidated = "<FONT color='#FF0066'><strong>INVALID HASH</strong></FONT>";
        $errorExists = true;
    }
} else {
    // Secure Hash was not validated, add a data field to be displayed later.
    $hashValidated = "<FONT color='orange'><strong>Not Calculated - No 'SECURE_SECRET' present.</strong></FONT>";
}

// Define Variables
// ----------------
// Extract the available receipt fields from the VPC Response
// If not present then let the value be equal to 'No Value Returned'

// Standard Receipt Data
$amount          = null2unknown($_GET["vpc_Amount"]);
$locale          = null2unknown($_GET["vpc_Locale"]);
$batchNo         = null2unknown($_GET["vpc_BatchNo"]);
$command         = null2unknown($_GET["vpc_Command"]);
$message         = null2unknown($_GET["vpc_Message"]);
$version         = null2unknown($_GET["vpc_Version"]);
$cardType        = null2unknown($_GET["vpc_Card"]);
$orderInfo       = null2unknown($_GET["vpc_OrderInfo"]);
$receiptNo       = null2unknown($_GET["vpc_ReceiptNo"]);
$merchantID      = null2unknown($_GET["vpc_Merchant"]);
$authorizeID     = null2unknown($_GET["vpc_AuthorizeId"]);
$merchTxnRef     = null2unknown($_GET["vpc_MerchTxnRef"]);
$transactionNo   = null2unknown($_GET["vpc_TransactionNo"]);
$acqResponseCode = null2unknown($_GET["vpc_AcqResponseCode"]);
$txnResponseCode = null2unknown($_GET["vpc_TxnResponseCode"]);


if($acqResponseCode==0 && $message=='Approved')
{
    
    $myresult = "<div style='color:green';> „  ⁄„·Ì… «· »—⁄ »‰Ã«Õ.. ‘ﬂ—« ·ﬂ</div>";
     $q="update donation set done='1' where unid='".$merchTxnRef."'"; 
     $do=mysql_query($q);
     
     
     extract(mysql_fetch_array(mysql_query("select dmail as donator_mail from donation where unid='".$merchTxnRef."'")));  
     extract(mysql_fetch_array(mysql_query("select name as donator_name from donation where unid='".$merchTxnRef."'")));  
     extract(mysql_fetch_array(mysql_query("select phone as donator_phone from donation where unid='".$merchTxnRef."'")));  
     extract(mysql_fetch_array(mysql_query("select addr as donator_addr from donation where unid='".$merchTxnRef."'")));  

     
     $message_post='
     
<table  width="500px" height="417px" border="0" cellpadding="0" cellspacing="0">

<tr><td height="114"></td></tr>
<tr><td valign="top" align="center">

<table border="0" width="460px" height="160px" cellpadding="0" cellspacing="0" dir="rtl" align="center">

<tr><td align="right" width="210"><font color="#0b350f"><b>   ÊÃÂ Ã„⁄Ì… «·«Ê—„«‰ »«·‘ﬂ— ··”Ìœ : </b></font></td><td align="right" height="22">'.$donator_name.'</td></tr>
<tr><td align="right"><font color="#0b350f"><b>· »—⁄… »„»·€ Ê ﬁœ—… :  </b></font></td><td align="right" height="27">'.($amount/100).' EGP </td></tr>
<tr><td align="right"><font color="#0b350f"><b>«·—ﬁ„ «·„—Ã⁄Ï :  </b></font></td><td align="right" height="27">'. $receiptNo .'</td></tr>
<tr><td align="right"><font color="#0b350f"><b>—ﬁ„ «· ·Ì›Ê‰ :  </b></font></td><td align="right" height="28">'. $donator_phone .'</td></tr>
<tr><td align="right"><font color="#0b350f"><b>» «—ÌŒ :  </b></font></td><td align="right" height="28">'.$today['mday'].'/'.$today['mon'].'/'.$today['year'] .'</td></tr>

</table>

helloooooooooooooo

</td></tr>
<tr><td height="137"></td></tr>

</table>     
     
     
     
     
     
     ';
     
     
     mymailer("orman society","alaa87_ma@hotmail.com",$donator_mail," «ﬂÌœ ⁄„·Ì… «· »—⁄",$message_post);
     //mymailer("orman society","alaa87_ma@hotmail.com","eng.shenawy@live.com"," «ﬂÌœ ⁄„·Ì… «· »—⁄",$message_post);
     
     
     
     
     
     helloooooooooooooo2
     
     
if(!empty($donator_addr) && $message=='Approved')
{
    
              $message_post=
'<body style="margin: 10px;">
<table border="1" width="100%" align="center" style="text-align: right; direction: rtl; font-family: arial; font-size: 11pt; font-weight: bold;">
            <tr class="title">
                <td colspan="2" height="25" style="background-color: #f2f2f2; color:red;"><P><strong>Ê’Ê· Â–Â «·—”«·… Â‰«  ⁄‰Ï «‰ ’«Õ» ⁄„·Ì… «· »—⁄ Ì—Ìœ «—”«· «·«Ì’«· ⁄·Ï ⁄‰Ê«‰Â</strong></P></td>
            </tr>            
            
            <tr class="title">
                <td colspan="2" height="25" style="background-color: #f2f2f2;"><P><strong>»Ì«‰«  ⁄„·Ì… «·œ›⁄</strong></P></td>
            </tr>

            <tr>
                <td align="right"><strong>—ﬁ„  ⁄—Ì› ⁄„·Ì… «· »—⁄ : </strong></td>
                <td>'.$merchTxnRef.'</td>
            </tr>

            <tr class="shade">
                <td align="right"><strong>„ﬁœ«— «·œ›⁄ : </strong></td>
                <td>'.($amount/100).' Ã‰Ì… „’—Ï</td>
            </tr>

            <tr>
                <td align="right"><strong>‰ ÌÃ… ⁄„·Ì… «· »—⁄ : </strong></td>
                <td>'. $myresult .'</td>
            </tr>
            <tr class="shade">
                <td align="right"><strong>«·—”«·… „‰ «·Œ«œ„ : </strong></td>
                <td>'.$message.'</td>
            </tr>

            <tr>
                <td align="right"><strong>—ﬁ„ «·«Ì’«· : </strong></td>
                <td>'.$receiptNo.'</td>
            </tr>
            <tr class="shade">
                <td align="right"><strong>—ﬁ„ ⁄„·Ì… «· »—⁄ : </strong></td>
                <td>'.$transactionNo.'</td>
            </tr>            
            
            <tr class="shade">
                <td align="right"><strong>«·⁄‰Ê«‰ : </strong></td>
                <td>'.$donator_addr.'</td>
            </tr>


<tr>
<td style="color: red; text-align: left;" align="left" colspan="2">
<br />
«œ«—… „Êﬁ⁄ Ã„⁄Ì… «·«Ê—„«‰
</td>
</tr>
</table>
</body> ' ;


     mymailer("orman society","alaa87_ma@hotmail.com","alaa87_ma@hotmail.com","⁄„·Ì…  »—⁄",$message_post);

    helloooooooooooooo3
    
}     
     
     
     
}
else
{
    $myresult = "<div style='color:red';>Œÿ« —ﬁ„ : ".$acqResponseCode . "</div>";
}
/// use my rand text in Order Reference field in adminstration panel to revail all info

// 3-D Secure Data
$verType         = array_key_exists("vpc_VerType", $_GET)          ? $_GET["vpc_VerType"]          : "No Value Returned";
$verStatus       = array_key_exists("vpc_VerStatus", $_GET)        ? $_GET["vpc_VerStatus"]        : "No Value Returned";
$token           = array_key_exists("vpc_VerToken", $_GET)         ? $_GET["vpc_VerToken"]         : "No Value Returned";
$verSecurLevel   = array_key_exists("vpc_VerSecurityLevel", $_GET) ? $_GET["vpc_VerSecurityLevel"] : "No Value Returned";
$enrolled        = array_key_exists("vpc_3DSenrolled", $_GET)      ? $_GET["vpc_3DSenrolled"]      : "No Value Returned";
$xid             = array_key_exists("vpc_3DSXID", $_GET)           ? $_GET["vpc_3DSXID"]           : "No Value Returned";
$acqECI          = array_key_exists("vpc_3DSECI", $_GET)           ? $_GET["vpc_3DSECI"]           : "No Value Returned";
$authStatus      = array_key_exists("vpc_3DSstatus", $_GET)        ? $_GET["vpc_3DSstatus"]        : "No Value Returned";

// *******************
// END OF MAIN PROGRAM
// *******************

// FINISH TRANSACTION - Process the VPC Response Data
// =====================================================
// For the purposes of demonstration, we simply display the Result fields on a
// web page.

// Show 'Error' in title if an error condition
$errorTxt = "test";

// Show this page as an error page if vpc_TxnResponseCode equals '7'
if ($txnResponseCode == "7" || $txnResponseCode == "No Value Returned" || $errorExists) {
    $errorTxt = "Error ";
}
    
// This is the display title for 'Receipt' page 
$title = $_GET["Title"];

// The URL link for the receipt to do another transaction.
// Note: This is ONLY used for this example and is not required for 
// production code. You would hard code your own URL into your application
// to allow customers to try another transaction.
//TK//$againLink = URLDecode($_GET["AgainLink"]);

?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    <head>
        <title>‰ ÌÃ… ⁄„·Ì… «· »—⁄</title>
        <meta http-equiv="Content-Type" content="text/html, charset=iso-8859-1">
        <style type="text/css">
            <!--
            h1       { font-family:Arial,sans-serif; font-size:24pt; color:#08185A; font-weight:100}
            h2.co    { font-family:Arial,sans-serif; font-size:24pt; color:#08185A; margin-top:0.1em; margin-bottom:0.1em; font-weight:100}
            h3.co    { font-family:Arial,sans-serif; font-size:16pt; color:#000000; margin-top:0.1em; margin-bottom:0.1em; font-weight:100}
            body     { font-family:Verdana,Arial,sans-serif; font-size:10pt; color:#08185A background-color:#FFFFFF }
            p        { font-family:Verdana,Arial,sans-serif; font-size:20pt; color:#FFFFFF }
            a:link   { font-family:Verdana,Arial,sans-serif; font-size:20pt; color:#08185A }
            a:visited{ font-family:Verdana,Arial,sans-serif; font-size:20pt; color:#08185A }
            a:hover  { font-family:Verdana,Arial,sans-serif; font-size:20pt; color:#FF0000 }
            a:active { font-family:Verdana,Arial,sans-serif; font-size:20pt; color:#FF0000 }
			tr       { height:25px; }
			tr.shade { height:25px; background-color:#E1E1E1 }
			tr.title { height:25px; background-color:#C1C1C1 }
            td       { font-family:Verdana,Arial,sans-serif; font-size:18pt; color:#08185A }
            td.red   { font-family:Verdana,Arial,sans-serif; font-size:18pt; color:#FF0066 }
            td.green { font-family:Verdana,Arial,sans-serif; font-size:18pt; color:#00AA00 }
            th       { font-family:Verdana,Arial,sans-serif; font-size:10pt; color:#08185A; font-weight:bold; background-color:#E1E1E1; padding-top:0.5em; padding-bottom:0.5em}
            input    { font-family:Verdana,Arial,sans-serif; font-size:18pt; color:#08185A; background-color:#E1E1E1; font-weight:bold }
            select   { font-family:Verdana,Arial,sans-serif; font-size:18pt; color:#08185A; background-color:#E1E1E1; font-weight:bold; width:463 }
            textarea { font-family:Verdana,Arial,sans-serif; font-size:18pt; color:#08185A; background-color:#E1E1E1; font-weight:normal; scrollbar-arrow-color:#08185A; scrollbar-base-color:#E1E1E1 }
            -->
        </style>
    </head>
    <body>

        <table width="85%" align="center" cellpadding="5" border="0" style="direction: rtl;">
            <tr class="title">
                <td colspan="2" height="25"><P><strong>»Ì«‰«  ⁄„·Ì… «·œ›⁄</strong></P></td>
            </tr>

            <tr>
                <td align="right"><strong><i>—ﬁ„  ⁄—Ì› ⁄„·Ì… «· »—⁄.. «Õ ›Ÿ »«·—ﬁ„: </strong></td>
                <td><?=$merchTxnRef?></td>
            </tr>

            <tr class="shade">
                <td align="right"><strong>„ﬁœ«— «·œ›⁄ : </strong></td>
                <td><?=$amount/100?> Ã‰Ì… „’—Ï</td>
            </tr>

            <tr>
                <td align="right"><strong>‰ ÌÃ… ⁄„·Ì… «· »—⁄ : </strong></td>
                <td><?=/*getResponseDescription($txnResponseCode)*/ $myresult ;?></td>
            </tr>
            <tr class="shade">
                <td align="right"><strong>«·—”«·… „‰ «·Œ«œ„ : </strong></td>
                <td><?=$message?></td>
            </tr>
<? 
    // only display the following fields if not an error condition
    if ($txnResponseCode != "7" && $txnResponseCode != "No Value Returned") { 
?>
            <tr>
                <td align="right"><strong>—ﬁ„ «·«Ì’«· : </strong></td>
                <td><?=$receiptNo?></td>
            </tr>
            <tr class="shade">
                <td align="right"><strong>—ﬁ„ ⁄„·Ì… «· »—⁄ : </strong></td>
                <td><?=$transactionNo?></td>
            </tr>

<? 
} ?>    

            <tr>
                <td align="center" colspan="2"><a href="/"><strong> «÷€ÿ Â‰« ··⁄Êœ… ·’›Õ… «· »—⁄ «·—∆Ì”Ì… </strong></a></td>
            </tr>

</table>
    </body>
</html>

<?    
// End Processing

// This method uses the QSI Response code retrieved from the Digital
// Receipt and returns an appropriate description for the QSI Response Code
//
// @param $responseCode String containing the QSI Response Code
//
// @return String containing the appropriate description
//
function getResponseDescription($responseCode) {

    switch ($responseCode) {
        case "0" : $result = " „  ⁄„·Ì… «· »—⁄ »‰Ã«Õ.. ‘ﬂ—« ·ﬂ"; break;
        case "?" : $result = "«·‰ ÌÃ… €Ì— „⁄—Ê›…"; break;
        case "1" : $result = "Œÿ« €Ì— „⁄—Ê›"; break;
        case "2" : $result = " „ —›÷ ⁄„·Ì… «· »—⁄"; break;
        case "3" : $result = "·« ÌÊÃœ «” Ã«»… „‰ «·Œ«œ„"; break;
        case "4" : $result = "«·»«ÿﬁ… «·„” Œœ„… „‰ ÂÌ… «·’·«ÕÌ…"; break;
        case "5" : $result = "·« ÌÊÃœ —’Ìœ ﬂ«›Ï ·⁄„·Ì… «· »—⁄"; break;
        case "6" : $result = "Œÿ« ›Ï «·« ’«· „⁄ Œ«œ„ «·»‰ﬂ"; break;
        case "7" : $result = "Œÿ« ›Ï «·Œ«œ„"; break;
        case "8" : $result = "‰Ê⁄ ⁄„·Ì… «·œ›⁄ €Ì— „ﬁ»Ê·…"; break;
        case "9" : $result = " „ —›÷ ⁄„·Ì… «· »—⁄"; break;
        case "A" : $result = " „ «€·«ﬁ «·« ’«· »«·Œ«œ„"; break;
        case "C" : $result = " „ «·€«¡ ⁄„·Ì… «· »—⁄"; break;
        case "D" : $result = "⁄„·Ì… «· »—⁄  Õ  «·›Õ’"; break;
        case "F" : $result = "3D Secure Authentication failed"; break;
        case "I" : $result = "Œÿ« ›Ï «·—ﬁ„ «·”—Ï «·À·«ÀÏ"; break;
        case "L" : $result = "«· »—⁄ „€·ﬁ Õ«·Ì«"; break;
        case "N" : $result = "Cardholder is not enrolled in Authentication scheme"; break;
        case "P" : $result = "Transaction has been received by the Payment Adaptor and is being processed"; break;
        case "R" : $result = "Transaction was not processed - Reached limit of retry attempts allowed"; break;
        case "S" : $result = "Duplicate SessionID (OrderInfo)"; break;
        case "T" : $result = "Address Verification Failed"; break;
        case "U" : $result = "Card Security Code Failed"; break;
        case "V" : $result = "Address Verification and Card Security Code Failed"; break;
        default  : $result = "Unable to be determined"; 
    }
    return $result;
}



//  -----------------------------------------------------------------------------

// This method uses the verRes status code retrieved from the Digital
// Receipt and returns an appropriate description for the QSI Response Code

// @param statusResponse String containing the 3DS Authentication Status Code
// @return String containing the appropriate description

function getStatusDescription($statusResponse) {
    if ($statusResponse == "" || $statusResponse == "No Value Returned") {
        $result = "3DS not supported or there was no 3DS data provided";
    } else {
        switch ($statusResponse) {
            Case "Y"  : $result = "The cardholder was successfully authenticated."; break;
            Case "E"  : $result = "The cardholder is not enrolled."; break;
            Case "N"  : $result = "The cardholder was not verified."; break;
            Case "U"  : $result = "The cardholder's Issuer was unable to authenticate due to some system error at the Issuer."; break;
            Case "F"  : $result = "There was an error in the format of the request from the merchant."; break;
            Case "A"  : $result = "Authentication of your Merchant ID and Password to the ACS Directory Failed."; break;
            Case "D"  : $result = "Error communicating with the Directory Server."; break;
            Case "C"  : $result = "The card type is not supported for authentication."; break;
            Case "S"  : $result = "The signature on the response received from the Issuer could not be validated."; break;
            Case "P"  : $result = "Error parsing input from Issuer."; break;
            Case "I"  : $result = "Internal Payment Server system error."; break;
            default   : $result = "Unable to be determined"; break;
        }
    }
    return $result;
}

//  -----------------------------------------------------------------------------
   
// If input is null, returns string "No Value Returned", else returns input
function null2unknown($data) {
    if ($data == "") {
        return "No Value Returned";
    } else {
        return $data;
    }
} 
    
//  ----------------------------------------------------------------------------
