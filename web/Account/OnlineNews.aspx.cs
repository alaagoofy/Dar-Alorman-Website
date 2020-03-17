using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class Account_News : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {

           
            image_Img.Visible = false;
            FillGrid();
           
        }
    }


    private void clear()
    {
        txt_Title.Text = "";
        txt_Url.Text = "";
        image_Img.Visible = false;
        txt_Date.Text = "";
    }

    private void FillGrid()
    {
        try
        {
            DataTable Grid_dt = new DB().ADMIN_News_Get();

            grid_Display.DataSource = Grid_dt;
            grid_Display.DataBind();


        }
        catch (Exception ex)
        {

            lbl_error.Text = ex.Message;
        }
    }

    protected void btn_save_Click(object sender, EventArgs e)
    {
        try
        {
            string Img_url = null;
      
            if (lbl_id.Text == "")
            {
                if (upload_Img.HasFile )
                {
               Random rand = new Random((int)DateTime.Now.Ticks);
            int numIterations = 0;
            numIterations = rand.Next(1, 1000000);


                    upload_Img.SaveAs(Server.MapPath(@"~/css/News/" + numIterations+ upload_Img.FileName));
                    Img_url = (@"~/css/News/" + numIterations +upload_Img.FileName);

                  


                    new DB().Admin_News_Insert(txt_Title.Text,Img_url,txt_Url.Text,txt_Date.Text);

                    FillGrid();
                    clear();
                    lbl_error.Text = "saved successfully";
                    lbl_error.ForeColor = System.Drawing.Color.Green;
                }
                else
                {
                    lbl_error.Text = "Please Choose Image ";
                }
            }
            /////////////////
            else
            {
                bool valid = true;
                if (upload_Img.HasFile )
                {
                    if (valid)
                    {
                        Random rand = new Random((int)DateTime.Now.Ticks);
                        int numIterations = 0;
                        numIterations = rand.Next(1, 10000);


                        upload_Img.SaveAs(Server.MapPath(@"~/css/News" + numIterations + upload_Img.FileName));
                        Img_url = (@"~/css/News" + numIterations + upload_Img.FileName);

                       
                    }
                }
                else
                {
                    DataTable dt = new DB().ADMIN_News_GetByID(int.Parse(lbl_id.Text));
                    Img_url = dt.Rows[0]["Thumb"].ToString();
                   
                }
                if (valid)
                {

                    new DB().Admin_News_Update(int.Parse(lbl_id.Text), txt_Title.Text, Img_url, txt_Url.Text, txt_Date.Text);

                    DataTable edit_dt = new DB().ADMIN_News_GetByID(int.Parse(lbl_id.Text));
                    Bind(edit_dt);
                    FillGrid();
                    lbl_id.Text = "";
                   
                    image_Img.Visible = false;
                    lbl_error.Text = "saved successfully";
                    Response.Redirect(Request.RawUrl);
                }

            }

        }
        catch (SqlException sql)
        {
            lbl_error.Text = sql.Message;

        }

        catch (Exception ex)
        {
            lbl_error.Text = ex.Message;
        }
    }

    protected void grid_Display_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        grid_Display.PageIndex = e.NewPageIndex;
        FillGrid();

    }

    protected void grid_Display_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        try
        {
            int id = (int)grid_Display.DataKeys[e.RowIndex].Value;
            new DB().ADMIN_News_Delete(id);
            FillGrid();
        }
        catch (Exception ex)
        {

            lbl_error.Text = ex.Message;
        }
    }

    protected void grid_Display_RowEditing(object sender, GridViewEditEventArgs e)
    {
        
        image_Img.Visible = true;
        int id = (int)grid_Display.DataKeys[e.NewEditIndex].Value;
        DataTable edit_dt = new DB().ADMIN_News_GetByID(id);
        Bind(edit_dt);
        lbl_id.Text = id.ToString();
    }

    private void Bind(DataTable edit_dt)
    {
        txt_Title.Text = edit_dt.Rows[0]["Title"].ToString();
        image_Img.ImageUrl = edit_dt.Rows[0]["Thumb"].ToString();
        txt_Url.Text = edit_dt.Rows[0]["Url"].ToString();
        txt_Date.Text = edit_dt.Rows[0]["DateNews"].ToString();

    }

    protected void grid_Display_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            LinkButton btn_del = (LinkButton)e.Row.FindControl("btn_delete");

            btn_del.Attributes.Add("onclick", "javascript:return " +
                "confirm('Are you sure') ");

        }
    }
}