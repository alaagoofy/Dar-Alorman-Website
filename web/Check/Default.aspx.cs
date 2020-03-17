using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Check_Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //DataTable GetNews = new DB().Admin_News_Gettop5();
        //Repeater2.DataSource = GetNews;
        //Repeater2.DataBind();

        if (!Page.IsPostBack)
        {



            FillGrid();
            edit.Visible = false;
        }


    }

    private void FillGrid()
    {
        try
        {
            DataTable Grid_dt = new DB().ADMIN_OnlineRequest_Get();

            grid_Display.DataSource = Grid_dt;
            grid_Display.DataBind();


        }
        catch (Exception ex)
        {

            //lbl_error.Text = ex.Message;
        }
    }

    protected void grid_Display_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        grid_Display.PageIndex = e.NewPageIndex;
        FillGrid();

    }
    protected void grid_Display_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        

    }
   
    private void Bind(DataTable edit_dt)
    {

        txt_MangerNot.Text = edit_dt.Rows[0]["MangerNot"].ToString();


    }
    protected void grid_Display_RowEditing1(object sender, GridViewEditEventArgs e)
    {
        int id = (int)grid_Display.DataKeys[e.NewEditIndex].Value;
        DataTable edit_dt = new DB().Admin_OnlineRequest_GetByID(id);
        Bind(edit_dt);
        lbl_id.Text = id.ToString();
        edit.Visible = true;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {

         
            if (lbl_id.Text == "")
            {
               
                  

              
            }
            /////////////////
            else
            {
               

                    new DB().Admin_OnlineRequest_Update(int.Parse(lbl_id.Text), txt_MangerNot.Text);

                    DataTable edit_dt = new DB().Admin_OnlineRequest_GetByID(int.Parse(lbl_id.Text));
                    Bind(edit_dt);
                    FillGrid();
                    lbl_id.Text = "";
                   

                    //txt_Error.Text = "saved successfully";
                    Response.Redirect(Request.RawUrl);

               
            }

        }
        catch (SqlException sql)
        {
            

        }

        catch (Exception ex)
        {
            
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (txt_Start.Text == "" && txt_Start.Text == "")
        {
            DataTable Grid_dt = new DB().ADMIN_OnlineRequest_Get();

            grid_Display.DataSource = Grid_dt;
            grid_Display.DataBind();
        }
        else if (txt_Start.Text != "" && txt_Start.Text == "")
        {
            DataTable Grid_dt = new DB().ADMIN_OnlineRequest_Get();

            grid_Display.DataSource = Grid_dt;
            grid_Display.DataBind();
            
            }
        else if (txt_Start.Text == "" && txt_Start.Text != "")
        {
            DataTable Grid_dt = new DB().ADMIN_OnlineRequest_Get();

            grid_Display.DataSource = Grid_dt;
            grid_Display.DataBind();

        }

        else
        {
            DataTable Grid_dt2 = new DB().Admin_OnlineRequest_GetByDateTime(DateTime.Parse(txt_Start.Text), DateTime.Parse(txt_End.Text));

            grid_Display.DataSource = Grid_dt2;
            grid_Display.DataBind();
        }
        
    }
}