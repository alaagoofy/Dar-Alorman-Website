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
        DataTable GetNews = new DB().Admin_NewsImgs_Gettop5();
        Repeater2.DataSource = GetNews;
        Repeater2.DataBind();
    }

    protected void LoginButton_Click1(object sender, EventArgs e)
    {

        try
        {
            SmtpClient SmtpServer = new SmtpClient("mail.dar-alorman.com");
            var mail = new MailMessage();
            mail.From = new MailAddress("alaa@dar-alorman.com");
            mail.To.Add("complaints@dar-alorman.com");
           

            mail.Subject = "إستمارة تطوع";
            mail.IsBodyHtml = true;
            string htmlBody;
            htmlBody = "<html><body><p style='direction:rtl;'>" + "الإسم: " + txt_name.Text + " <br /><br/> " + "الهاتف: " + txt_phone.Text + " <br /><br/> " + "البريد الإلكترونى: " + txt_mail.Text + "<br/><br/>" + "العنوان: " + txt_address.Text + "<br/><br/>" + "المؤهل الدراسى: " + txt_education.Text + "<br/><br/>" + "الوظيفة الحالية: " + txt_job.Text + "<br/><br/>" + "الجنسية: " + txt_national.Text + "<br/><br/>" + "شاركت فى العمل التطوعى من قبل ؟: " + txt_answer.Text + "<br/><br/>" + "ملاحظات: " + txt_body.Text + "<br /><br/>" + "</p></body></html>";
            mail.Body = htmlBody;
            SmtpServer.Port = 587;
            SmtpServer.UseDefaultCredentials = false;
            SmtpServer.Credentials = new System.Net.NetworkCredential("alaa@dar-alorman.com", "920956");
            SmtpServer.EnableSsl = false;
            SmtpServer.Send(mail);

            lbl_error.Text = "تم إرسال الرسالة بنجاح";
            lbl_error.ForeColor = System.Drawing.Color.Green;
            txt_name.Text = "";
            txt_phone.Text = "";
            txt_mail.Text = "";
            txt_address.Text = "";
            txt_answer.Text = "";
            txt_education.Text = "";
            txt_job.Text = "";
            txt_national.Text = "";
           
            txt_body.Text = "";
            lbl_error.ForeColor = System.Drawing.Color.Green;
        }
        catch (Exception ex)
        {

            lbl_error.Text = ex.Message;
            lbl_error.ForeColor = System.Drawing.Color.Red;
        }

    }
}