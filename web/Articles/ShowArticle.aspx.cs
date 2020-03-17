using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Articles_ShowArticle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["ID"] != null)
        {
           

            DataTable GetArticle = new DB().ADMIN_Articles_GetByID(int.Parse(Request.QueryString["ID"]));
            Page.Title = GetArticle.Rows[0]["Title"].ToString();
            txt_title.Text = GetArticle.Rows[0]["Title"].ToString();
            txt_title1.Text = GetArticle.Rows[0]["Title"].ToString();
            txt_body.Text = GetArticle.Rows[0]["Body"].ToString();
            Image1.ImageUrl = GetArticle.Rows[0]["Img"].ToString();
        }






        DataTable GetNews = new DB().Admin_NewsImgs_Gettop5();
        Repeater2.DataSource = GetNews;
        Repeater2.DataBind();
    }
}