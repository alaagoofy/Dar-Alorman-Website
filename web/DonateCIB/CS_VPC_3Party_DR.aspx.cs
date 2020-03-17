using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Configuration;
using System.Net;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Text;
using DAL;
using System.Security.Cryptography;

public partial class CS_VPC_3Party_DR : System.Web.UI.Page
{
 
    protected void Page_Load(object sender, EventArgs e)
    {

       
      

        string merchant_reference = Request.QueryString["merchant_reference"];
        Label_MerchTxnRef.Text = merchant_reference;

        string customer_email = Request.QueryString["customer_email"];
        Label_OrderInfo.Text = customer_email;

        string amount = Request.QueryString["amount"];
        decimal FinalAmount = decimal.Parse(amount) / 100;
        Label_Amount.Text = FinalAmount.ToString() + "EGP";

        string response_message = Request.QueryString["response_message"];
        Label_Message.Text = response_message;

        string payment_option = Request.QueryString["payment_option"];
        Label_CardType.Text = payment_option;


        string currency = Request.QueryString["currency"];
        Label_HashValidation.Text = currency;

        string Name = Request.QueryString["customer_name"];

     
       

        string valdate = "";

        valdate += string.Format("PASSaccess_code={0}", Request.QueryString["access_code"]);
        valdate += string.Format("amount={0}", Request.QueryString["amount"]);
        valdate += string.Format("authorization_code={0}", Request.QueryString["authorization_code"]);
        valdate += string.Format("card_number={0}", Request.QueryString["card_number"]);
        valdate += string.Format("command=PURCHASE");
        valdate += string.Format("currency=EGP");
        valdate += string.Format("customer_email={0}", Request.QueryString["customer_email"]);
        valdate += string.Format("customer_ip={0}", Request.QueryString["customer_ip"]);
        valdate += string.Format("eci={0}", Request.QueryString["eci"]);
        valdate += string.Format("expiry_date={0}", Request.QueryString["expiry_date"]);
        valdate += string.Format("fort_id={0}", Request.QueryString["fort_id"]);
        valdate += string.Format("language=en");
        valdate += string.Format("merchant_identifier=KllumJVP");
        valdate += string.Format("merchant_reference={0}", Request.QueryString["merchant_reference"]);
        valdate += string.Format("order_description={0}", Request.QueryString["order_description"]);


        valdate += string.Format("payment_option={0}", Request.QueryString["payment_option"]);
        valdate += string.Format("response_code={0}", Request.QueryString["response_code"]);
        valdate += string.Format("response_message={0}", Request.QueryString["response_message"]);
        valdate += string.Format("status={0}PASS", Request.QueryString["status"]);




        if (Page.Request.QueryString["response_message"] == "Success")
        {
            if (GetSha256FromString(valdate) == Page.Request.QueryString["signature"])
            {
                Literal2.Text = "Correct";
              
                CIBDonor obj = new CIBDonor();
                obj.Amount = FinalAmount;
                obj.IsApproved = true;
                obj.MerchAddress = "";
                obj.MerchCountry = "";
                obj.MerchEmail = customer_email;
                obj.MerchName = Name;
                obj.MerchPhone = "";
                obj.MerchPostCode = "";
                obj.MerchRef = int.Parse(merchant_reference);
                obj.MerchState = "";
                obj.Project = Request.QueryString["order_description"];
                obj.DonateTime = DateTime.Now;
                obj.Insert();
            }
            else
            {
                Literal3.Text = "Mismatch";
            }
        }
        else
        {
            Literal3.Text = "The operation failed";
            CIBDonor obj = new CIBDonor();
            obj.Amount = FinalAmount;
            obj.IsApproved = false;
            obj.MerchAddress = "";
            obj.MerchCountry = "";
            obj.MerchEmail = customer_email;
            obj.MerchName = Name;
            obj.MerchPhone = "";
            obj.MerchPostCode = "";
            obj.MerchRef = int.Parse(merchant_reference);
            obj.MerchState = "";
            obj.Project = Request.QueryString["order_description"];
            obj.DonateTime = DateTime.Now;
            obj.Insert();
        }




     
       


      


      
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