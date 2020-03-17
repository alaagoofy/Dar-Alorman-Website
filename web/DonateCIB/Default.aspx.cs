using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;
using System.Collections.Specialized;
using DAL;

public partial class Donate_Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //vpc_MerchTxnRef.Text = (Donor.GetMaxId() + 1).ToString();


       
        

    }
    protected void SubButL_Click(object sender, EventArgs e)
    {




        string clientIp = (Request.ServerVariables["HTTP_X_FORWARDED_FOR"] ??
                  Request.ServerVariables["REMOTE_ADDR"]).Split(',')[0].Trim();

      


     
           
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

                if (Visa.Checked == false && Master.Checked == false)
                {
                    lbl_ERROR.Text = "من فضلك إختر نوع الكارت";
                }
                else
                {
                    if (Visa.Checked)
                    {
                        Radio.Text = "Visa";
                    }
                    else if (Master.Checked)
                    {
                        Radio.Text = "MasterCard";
                    }



                    //Dictionary of the parameters sent with the http request.
                    var parameters = new Dictionary<string, string>();
                    decimal FinalAmount = decimal.Parse(Amount.Text) * 100;
                    parameters.Add("amount", FinalAmount.ToString());
                    parameters.Add("currency", "EGP");
                    parameters.Add("merchant_identifier", "vftBmzKl");
                    parameters.Add("access_code", "X9nbMqo2ZSyXdQwoqBkT");
                    parameters.Add("order_description", drop_Project.SelectedValue);
                    
                   
                  
                    int refe = CIBDonor.GetMaxId() + 5;
                    string refrence = refe.ToString();
                    parameters.Add("merchant_reference", refrence);
                    parameters.Add("customer_email", txtmail.Text);
                    //parameters.Add("customer_ip", clientIp);
                    parameters.Add("language", "en");


                    //parameters.Add("Project", drop_Project.SelectedItem.ToString());
                    parameters.Add("command", "PURCHASE");
                    //parameters.Add("return_url", "http://www.dar-alorman.com/donateCIB/CS_VPC_3Party_DR.aspx");
                    
                 
                    //parameters.Add("customer_name", txtname.Text);


                    
                    var sortedParameters = parameters.OrderBy(x => x.Key);
                    var stringSortedParameteres = sortedParameters.Aggregate("PASS", (current, item) => current + (item.Key + "=" + item.Value));
                    stringSortedParameteres += "PASS";

                    string hashedSignature = String.Empty;
                   
                    var crypt = SHA256.Create();
                    string hash = string.Empty;
                    var crypto = crypt.ComputeHash(Encoding.ASCII.GetBytes(stringSortedParameteres), 0, Encoding.ASCII.GetByteCount(stringSortedParameteres));
                    hash = crypto.Aggregate(hash, (current, b) => current + b.ToString("x2"));

                    parameters.Add("signature", hash);
                   
                    var temp = parameters.Select(d => string.Format("\"{0}\": \"{1}\"", d.Key, string.Join(",", d.Value)));
                    var jsonRequestString = "{" + string.Join(",", temp) + "}";

                    var data = Encoding.ASCII.GetBytes(jsonRequestString);

                   

                    var parameterValues = new NameValueCollection();
                    foreach (var item in parameters)
                    {
                        parameterValues.Add(item.Key, item.Value);
                    }

                    RedirectWithData("https://checkout.payfort.com/FortAPI/paymentPage", parameterValues);

                
                }







             









            

            }


        }
    public void RedirectWithData(string aDestination, NameValueCollection aData)
    {
        Response.Clear();
        StringBuilder sb = new StringBuilder();

        sb.Append("<html>");
        sb.AppendFormat("<body onload=\"document.forms['form'].submit()\">");
        sb.AppendFormat("<form name=\"form\" action=\"{0}\" method=\"post\">", aDestination);

        foreach (string key in aData)
        {
            sb.AppendFormat("<input type=\"hidden\" name=\"{0}\" value=\"{1}\" />", key, aData[key]);
        }

        sb.Append("</form>");
        sb.Append("</body>");
        sb.Append("</html>");
        var a = sb.ToString();
        Response.Write(sb.ToString());

        Response.End();
    }


    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedValue=="2")
        {
            Response.Redirect("~/Donate2");
        }
        else if (DropDownList1.SelectedValue == "3")
        {
            Response.Redirect("~/Donate");
        }
        else if (DropDownList1.SelectedValue == "4")
        {
            Response.Redirect("~/aaibLE");
        }
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList2.SelectedValue == "USD")
        {
            Response.Redirect("~/aaibUSD");
        }
    }
}