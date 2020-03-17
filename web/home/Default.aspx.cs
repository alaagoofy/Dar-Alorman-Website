using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable GetArticles = new DB().ADMIN_Articles_GetTop5();
        Repeater1.DataSource = GetArticles;
        Repeater1.DataBind();

        DataTable GetImages = new DB().ADMIN_Gallery_GetTop6();
        Repeater2.DataSource = GetImages;
        Repeater2.DataBind();

        //DataTable GetImages2 = new DB().ADMIN_GalleryImgs_GetTop6();
        //Repeater3.DataSource = GetImages2;
        //Repeater3.DataBind();

        DataTable GetonlineNews = new DB().Admin_News_Gettop5();
        repeat_onlineNews.DataSource = GetonlineNews;
        repeat_onlineNews.DataBind();
    }
}