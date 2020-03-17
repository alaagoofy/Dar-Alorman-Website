using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class News_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BindRepeater();
    }
    public void pager_Command(object sender, CommandEventArgs e)
    {
        int currnetPageIndx = Convert.ToInt32(e.CommandArgument);
        pager1.CurrentIndex = currnetPageIndx;
        BindRepeater();
    }

    private void BindRepeater()
    {
        string strConn = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        SqlConnection cn = new SqlConnection(strConn);

        // Change StoredProcedure name if you've changed its name OR you are using the SqlServer_2000 StoredProcedure
        SqlCommand Cmd = new SqlCommand("GetPagedProducts_News", cn);
        Cmd.CommandType = CommandType.StoredProcedure;
        SqlDataReader dr;


        Cmd.Parameters.Add("@PageSize", SqlDbType.Int, 1).Value = pager1.PageSize;
        Cmd.Parameters.Add("@CurrentPage", SqlDbType.Int, 1).Value = pager1.CurrentIndex;
        Cmd.Parameters.Add("@ItemCount", SqlDbType.Int).Direction = ParameterDirection.Output;
      
        cn.Open();
        dr = Cmd.ExecuteReader();

        Repeater1.DataSource = dr;
        Repeater1.DataBind();

        dr.Close();
        cn.Close();

        Int32 _totalRecords = Convert.ToInt32(Cmd.Parameters["@ItemCount"].Value);
        pager1.ItemCount = _totalRecords;
    }
}