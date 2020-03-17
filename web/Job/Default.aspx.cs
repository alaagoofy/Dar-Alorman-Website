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
  
    }

    protected void Wizard1_FinishButtonClick(object sender, System.Web.UI.WebControls.WizardNavigationEventArgs e)
    {
        try
        {

            string strConnString = ConfigurationManager.ConnectionStrings["LocalSQLServer3"].ConnectionString;

            SqlConnection con = new SqlConnection(strConnString);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "dbo.sp_addnewapplication";
            cmd.Parameters.Add("@OppID", SqlDbType.Int).Value = DDLadv.SelectedValue;
            cmd.Parameters.Add("@schlid", SqlDbType.Int).Value = DDLschl.SelectedValue;
            cmd.Parameters.Add("@First", SqlDbType.NVarChar, 50).Value = TBfirst.Text;
            cmd.Parameters.Add("@Middle", SqlDbType.NVarChar, 50).Value = TBsecond.Text;
            cmd.Parameters.Add("@Last", SqlDbType.NVarChar, 50).Value = TBlast.Text;
            cmd.Parameters.Add("@Birthdate", SqlDbType.NVarChar, 50).Value = TBbirthdate.Text;
            cmd.Parameters.Add("@Birthplace", SqlDbType.NVarChar, 50).Value = TBbirthplace.Text;
            cmd.Parameters.Add("@Address", SqlDbType.NVarChar, 50).Value = TBaddress.Text;
            cmd.Parameters.Add("@City", SqlDbType.NVarChar, 50).Value = TBcity.Text;
            cmd.Parameters.Add("@Hphone", SqlDbType.NVarChar, 50).Value = TBphone.Text;
            cmd.Parameters.Add("@Mobile", SqlDbType.NVarChar, 50).Value = TBmobile.Text;
            cmd.Parameters.Add("@SSN", SqlDbType.NVarChar, 50).Value = TBssn.Text;
            cmd.Parameters.Add("@SSPlace", SqlDbType.NVarChar, 50).Value = TBssplace.Text;
            cmd.Parameters.Add("@MaritalStatus", SqlDbType.Int).Value = DDLmart.SelectedValue;
            cmd.Parameters.Add("@MilitarySituation", SqlDbType.Int).Value = DDLmilitary.SelectedValue;
            cmd.Parameters.Add("@BachelorDegID", SqlDbType.NVarChar, 50).Value = TBeducertif.Text;
            cmd.Parameters.Add("@teaappjobsid", SqlDbType.Int).Value = DropDownList2.SelectedValue;
            cmd.Parameters.Add("@teaacknwayid", SqlDbType.Int).Value = DropDownList1.SelectedValue;
            cmd.Parameters.Add("@Gradutionyear", SqlDbType.Int).Value = DropDownList3.SelectedValue;
            cmd.Parameters.Add("@collegeid", SqlDbType.Int).Value = DropDownList4.SelectedValue;
            cmd.Parameters.Add("@Uni", SqlDbType.NVarChar, 50).Value = TBuni.Text;
            cmd.Parameters.Add("@Gradscore", SqlDbType.NVarChar, 50).Value = TBscore.Text;
            cmd.Parameters.Add("@PreviousExp1", SqlDbType.NVarChar, 50).Value = TBexp1.Text;
            cmd.Parameters.Add("@datefrom1", SqlDbType.NVarChar, 50).Value = TBfrom1.Text;
            cmd.Parameters.Add("@dateto1", SqlDbType.NVarChar, 50).Value = TBto1.Text;
            cmd.Parameters.Add("@PreviousExp2", SqlDbType.NVarChar, 50).Value = TBexp2.Text;
            cmd.Parameters.Add("@datefrom2", SqlDbType.NVarChar, 50).Value = TBfrom2.Text;
            cmd.Parameters.Add("@dateto2", SqlDbType.NVarChar, 50).Value = TBto2.Text;
            cmd.Parameters.Add("@PreviousExp3", SqlDbType.NVarChar, 50).Value = TBexp3.Text;
            cmd.Parameters.Add("@datefrom3", SqlDbType.NVarChar, 50).Value = TBfrom3.Text;
            cmd.Parameters.Add("@dateto3", SqlDbType.NVarChar, 50).Value = TBto3.Text;
            cmd.Parameters.Add("@PreviousExp4", SqlDbType.NVarChar, 50).Value = TBexp4.Text;
            cmd.Parameters.Add("@datefrom4", SqlDbType.NVarChar, 50).Value = TBfrom4.Text;
            cmd.Parameters.Add("@dateto4", SqlDbType.NVarChar, 50).Value = TBto4.Text;
            cmd.Parameters.Add("@reasonforleave", SqlDbType.NVarChar, 50).Value = TBReson.Text;
            cmd.Parameters.Add("@lastjobpay", SqlDbType.NVarChar, 50).Value = TBlastsal.Text;
            cmd.Parameters.Add("@expectedpay", SqlDbType.NVarChar, 50).Value = TBexpectedsal.Text;
            cmd.Parameters.Add("@extracourses", SqlDbType.NVarChar, 50).Value = extracourses.Text;
            cmd.Parameters.Add("@empname", SqlDbType.NVarChar, 50).Value = empname.Text;
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Redirect("printapp.aspx");
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }


    }

    //=======================================================
    //Service provided by Telerik (www.telerik.com)
    //Conversion powered by NRefactory.
    //Twitter: @telerik
    //Facebook: facebook.com/telerik
    //=======================================================
    protected void FinishButton_Click(object sender, EventArgs e)
    {
        try
        {

            string strConnString = ConfigurationManager.ConnectionStrings["LocalSQLServer3"].ConnectionString;

            SqlConnection con = new SqlConnection(strConnString);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "dbo.sp_addnewapplication";
            cmd.Parameters.Add("@OppID", SqlDbType.Int).Value = DDLadv.SelectedValue;
            cmd.Parameters.Add("@schlid", SqlDbType.Int).Value = DDLschl.SelectedValue;
            cmd.Parameters.Add("@First", SqlDbType.NVarChar, 50).Value = TBfirst.Text;
            cmd.Parameters.Add("@Middle", SqlDbType.NVarChar, 50).Value = TBsecond.Text;
            cmd.Parameters.Add("@Last", SqlDbType.NVarChar, 50).Value = TBlast.Text;
            cmd.Parameters.Add("@Birthdate", SqlDbType.NVarChar, 50).Value = TBbirthdate.Text;
            cmd.Parameters.Add("@Birthplace", SqlDbType.NVarChar, 50).Value = TBbirthplace.Text;
            cmd.Parameters.Add("@Address", SqlDbType.NVarChar, 50).Value = TBaddress.Text;
            cmd.Parameters.Add("@City", SqlDbType.NVarChar, 50).Value = TBcity.Text;
            cmd.Parameters.Add("@Hphone", SqlDbType.NVarChar, 50).Value = TBphone.Text;
            cmd.Parameters.Add("@Mobile", SqlDbType.NVarChar, 50).Value = TBmobile.Text;
            cmd.Parameters.Add("@SSN", SqlDbType.NVarChar, 50).Value = TBssn.Text;
            cmd.Parameters.Add("@SSPlace", SqlDbType.NVarChar, 50).Value = TBssplace.Text;
            cmd.Parameters.Add("@MaritalStatus", SqlDbType.Int).Value = DDLmart.SelectedValue;
            cmd.Parameters.Add("@MilitarySituation", SqlDbType.Int).Value = DDLmilitary.SelectedValue;
            cmd.Parameters.Add("@BachelorDegID", SqlDbType.NVarChar, 50).Value = TBeducertif.Text;
            cmd.Parameters.Add("@teaappjobsid", SqlDbType.Int).Value = DropDownList2.SelectedValue;
            cmd.Parameters.Add("@teaacknwayid", SqlDbType.Int).Value = DropDownList1.SelectedValue;
            cmd.Parameters.Add("@Gradutionyear", SqlDbType.Int).Value = DropDownList3.SelectedValue;
            cmd.Parameters.Add("@collegeid", SqlDbType.Int).Value = DropDownList4.SelectedValue;
            cmd.Parameters.Add("@Uni", SqlDbType.NVarChar, 50).Value = TBuni.Text;
            cmd.Parameters.Add("@Gradscore", SqlDbType.NVarChar, 50).Value = TBscore.Text;
            cmd.Parameters.Add("@PreviousExp1", SqlDbType.NVarChar, 50).Value = TBexp1.Text;
            cmd.Parameters.Add("@datefrom1", SqlDbType.NVarChar, 50).Value = TBfrom1.Text;
            cmd.Parameters.Add("@dateto1", SqlDbType.NVarChar, 50).Value = TBto1.Text;
            cmd.Parameters.Add("@PreviousExp2", SqlDbType.NVarChar, 50).Value = TBexp2.Text;
            cmd.Parameters.Add("@datefrom2", SqlDbType.NVarChar, 50).Value = TBfrom2.Text;
            cmd.Parameters.Add("@dateto2", SqlDbType.NVarChar, 50).Value = TBto2.Text;
            cmd.Parameters.Add("@PreviousExp3", SqlDbType.NVarChar, 50).Value = TBexp3.Text;
            cmd.Parameters.Add("@datefrom3", SqlDbType.NVarChar, 50).Value = TBfrom3.Text;
            cmd.Parameters.Add("@dateto3", SqlDbType.NVarChar, 50).Value = TBto3.Text;
            cmd.Parameters.Add("@PreviousExp4", SqlDbType.NVarChar, 50).Value = TBexp4.Text;
            cmd.Parameters.Add("@datefrom4", SqlDbType.NVarChar, 50).Value = TBfrom4.Text;
            cmd.Parameters.Add("@dateto4", SqlDbType.NVarChar, 50).Value = TBto4.Text;
            cmd.Parameters.Add("@reasonforleave", SqlDbType.NVarChar, 50).Value = TBReson.Text;
            cmd.Parameters.Add("@lastjobpay", SqlDbType.NVarChar, 50).Value = TBlastsal.Text;
            cmd.Parameters.Add("@expectedpay", SqlDbType.NVarChar, 50).Value = TBexpectedsal.Text;
            cmd.Parameters.Add("@extracourses", SqlDbType.NVarChar, 50).Value = extracourses.Text;
            cmd.Parameters.Add("@empname", SqlDbType.NVarChar, 50).Value = empname.Text;
            con.Open();
            cmd.ExecuteNonQuery();
            lbl_error.Text = "تم الحفظ بنجاح";
            lbl_error.ForeColor = System.Drawing.Color.Green;
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }

    }
}