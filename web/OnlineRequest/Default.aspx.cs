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

public partial class Complain_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable GetNews = new DB().Admin_News_Gettop5();
        Repeater2.DataSource = GetNews;
        Repeater2.DataBind();
    }

    protected void LoginButton_Click1(object sender, EventArgs e)
    {

        try
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

                new DB().Admin_OnlineRequest_Insert(txt_name.Text, txt_phone.Text, txt_mail.Text, txt_City.Text, txt_adress.Text, txt_Donate.Text, DonateFor.SelectedItem.ToString(), DonateTime.SelectedItem.ToString(), txt_body.Text, DateTime.Now);


                txt_adress.Text = "";
                txt_City.Text = "";
                txt_Donate.Text = "";
                txt_mail.Text = "";
                txt_name.Text = "";
                txt_phone.Text = "";
                txt_body.Text = "";
                lbl_error.Text = "تم الإرسال بنجاح";
                lbl_error.ForeColor = System.Drawing.Color.Green;
            }






        }
        catch (Exception ex)
        {

            lbl_error.Text = "يوجد عطل الان من فضلك حاول فى وقت لاحق";
            lbl_error.ForeColor = System.Drawing.Color.Red;
        }

    }
}