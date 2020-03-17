using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DonateCIB_Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = GetSha256FromString("PASSaccess_code=JbhK6fmGxvgTNPO6vPaiamount=100authorization_code=414054card_number=512345******2346command=AUTHORIZATIONcurrency=EGPcustomer_email=alaa87_ma@hotmail.comcustomer_ip=41.35.147.253eci=ECOMMERCEexpiry_date=1705fort_id=1465730116493language=enmerchant_identifier=KllumJVPmerchant_reference=6payment_option=MASTERCARDresponse_code=02000response_message=Successstatus=02PASS ");
    }
    public static string GetSha256FromString(string strData)
    {
        var message = Encoding.ASCII.GetBytes(strData);
        SHA256Managed hashString = new SHA256Managed();
        string hex = "";

        var hashValue = hashString.ComputeHash(message);
        foreach (byte x in hashValue)
        {
            hex += String.Format("{0:x2}", x);
        }
        return hex;
    }




}