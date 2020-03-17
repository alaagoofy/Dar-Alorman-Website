using _TNS;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Donate_Default2 : System.Web.UI.Page
{
    private VPCRequest conn;

    public static string Version
    {
        get
        {
            // Return the Example Code Version
            return "MasterCard 2.0";
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            conn = new VPCRequest();
            pnlError.Visible = false;
            pnlRequest.Visible = true;
            if (!String.IsNullOrEmpty(conn.MerchantID))
            {
                //Label_MerchantID.Text = conn.MerchantID;
            }
            else
            {
                //Label_MerchantID.Text = "Not configured";
            }
            if (!String.IsNullOrEmpty(conn.AccessCode))
            {
                //Label_AccessCode.Text = conn.AccessCode;
            }
            else
            {
                //Label_AccessCode.Text = "Not configured";
            }

        }
    }

    protected void btnPay_Click(object sender, EventArgs e)
    {

        bool isHuman = ExampleCaptcha.Validate(CaptchaCodeTextBox.Text);
        CaptchaCodeTextBox.Text = null; // clear previous user input

        if (!isHuman)
        {
            // TODO: Captcha validation failed, show error message  
            lbl_capcha.Text = "من فضلك ادخل الحروف مرة اخرى";
            lbl_capcha.ForeColor = System.Drawing.Color.Red;
        }
        else
        {
            pnlRequest.Visible = false;
            try
            {
                decimal FinalAmount = decimal.Parse(vpc_Amount.Text) * 100;
                // Connect to the Payment Client
                VPCRequest conn = new VPCRequest();
                // Add the Digital Order Fields for the functionality you wish to use
                // Core Transaction Fields
                conn.AddDigitalOrderField("vpc_Version", conn.Version);
                conn.AddDigitalOrderField("vpc_Command", conn.Command);
                conn.AddDigitalOrderField("vpc_AccessCode", conn.AccessCode);
                conn.AddDigitalOrderField("vpc_Merchant", conn.MerchantID);
                conn.AddDigitalOrderField("vpc_ReturnURL", conn.FormatReturnURL(Request.Url.Scheme, Request.Url.Host, Request.Url.Port, Request.ApplicationPath));
                conn.AddDigitalOrderField("vpc_MerchTxnRef", (DB.GetMaxIdahly() + 1).ToString());
                conn.AddDigitalOrderField("vpc_OrderInfo", vpc_OrderInfo.Text);
                conn.AddDigitalOrderField("vpc_Amount", FinalAmount.ToString());
                conn.AddDigitalOrderField("vpc_Currency", Currency_List.Text);
                conn.AddDigitalOrderField("vpc_Locale", drop_Project.SelectedValue);
                // Perform the transaction
                String url = conn.Create3PartyQueryString();
                Page.Response.Redirect(url);

            }
            catch (Exception ex)
            {
                // Capture and Display the error information
                lblErrorMessage.Text = ex.Message + (ex.InnerException != null ? ex.InnerException.Message : "");
                pnlError.Visible = true;
                try
                {

                }
                catch (Exception ex2)
                {
                    // Do Nothing
                }
            }
        }





    }
    protected void Currency_List_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (Currency_List.SelectedValue == "EGP")
        {

        }
        else
        {
            Response.Redirect("/DonateUSD");
        }
    }
    protected void Drop_bank_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (Drop_bank.SelectedValue == "nbe")
        {

        }
        else
        {
            Response.Redirect("/Donate");
        }
    }
}