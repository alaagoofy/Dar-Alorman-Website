using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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

        DataTable CheckIP = new DB().Admin_ip_GetByIP(clientIp);
        if (CheckIP.Rows.Count == 0)
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
                new DB().Admin_ip_Insert(clientIp, DateTime.Parse(DateTime.Now.ToShortDateString()), 1);
                string link = string.Format("CS_VPC_3Party_DO.aspx?Title=DarAlorman&vpc_Version=1&vpc_Command=pay&vpc_AccessCode=090AF86A&vpc_MerchTxnRef={0}&vpc_Merchant=701342USD&vpc_OrderInfo={1}&vpc_ReturnURL={2}&vpc_Locale=en&vpc_Amount={3}&txtmail={4}&Project={5}", (Donorbm.GetMaxId() + 1).ToString(), txtmail.Text, Server.UrlEncode("http://dar-alorman.com/aaibUSD/CS_VPC_3Party_DR.aspx"), vpc_Amount.Text, txtmail.Text, drop_Project.SelectedValue);
                Response.Redirect(link);
            }


        }
        else
        {
            if (DateTime.Parse(CheckIP.Rows[0]["Datedonor"].ToString()) == DateTime.Parse(DateTime.Now.ToShortDateString()))
            {
                if (int.Parse(CheckIP.Rows[0]["num"].ToString()) > 3)
                {
                    lbl_ERROR.Text = "لقد تجاوزت الحد الاقصى من المحاولات لديك , حاول مرة أخرى بعد مرور 24 ساعة";
                    lbl_ERROR.ForeColor = System.Drawing.Color.Red;
                }
                else
                {
                    int ID = int.Parse(CheckIP.Rows[0]["ID"].ToString());
                    int num = int.Parse(CheckIP.Rows[0]["num"].ToString()) + 1;
                   

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
                        new DB().Admin_ip_Update(ID, clientIp, DateTime.Parse(DateTime.Now.ToShortDateString()), num);

                        string link = string.Format("CS_VPC_3Party_DO.aspx?Title=DarAlorman&vpc_Version=1&vpc_Command=pay&vpc_AccessCode=090AF86A&vpc_MerchTxnRef={0}&vpc_Merchant=701342USD&vpc_OrderInfo={1}&vpc_ReturnURL={2}&vpc_Locale=en&vpc_Amount={3}&txtmail={4}&Project={5}", (Donorbm.GetMaxId() + 1).ToString(), txtmail.Text, Server.UrlEncode("http://dar-alorman.com/aaibUSD/CS_VPC_3Party_DR.aspx"), vpc_Amount.Text, txtmail.Text, drop_Project.SelectedValue);
                        Response.Redirect(link);
                    }

                }
            }
            else
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
                    new DB().Admin_ip_DeletebyDatedonor(DateTime.Parse(DateTime.Now.ToShortDateString()));
                    new DB().Admin_ip_Insert(clientIp, DateTime.Parse(DateTime.Now.ToShortDateString()), 1);
                    string link = string.Format("CS_VPC_3Party_DO.aspx?Title=DarAlorman&vpc_Version=1&vpc_Command=pay&vpc_AccessCode=090AF86A&vpc_MerchTxnRef={0}&vpc_Merchant=701342USD&vpc_OrderInfo={1}&vpc_ReturnURL={2}&vpc_Locale=en&vpc_Amount={3}&txtmail={4}&Project={5}", (Donorbm.GetMaxId() + 1).ToString(), txtmail.Text, Server.UrlEncode("http://dar-alorman.com/aaibUSD/CS_VPC_3Party_DR.aspx"), vpc_Amount.Text, txtmail.Text, drop_Project.SelectedValue);
                    Response.Redirect(link);
                }
            }
        }
















        //SubButL.Attributes.Add("onclick", "return false;");
        //Form2.Action = "CS_VPC_3Party_DO.aspx";
       

        
    }
}