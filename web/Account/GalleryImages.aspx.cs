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

           
            FillDrop();
            FillGrid();
            image_thumb.Visible = false;

        }


    }
    protected void Drop_Sub_SelectedIndexChanged(object sender, EventArgs e)
    {
        FillGrid();
    }
    private void clear()
    {


        image_thumb.Visible = false;
    }

    private void FillDrop()
    {
        try
        {
            DataTable GetGallery = new DB().ADMIN_Gallery_Get();
            DropDownList1.DataSource = GetGallery;
            DropDownList1.DataTextField = "Title";
            DropDownList1.DataValueField = "ID";
            DropDownList1.DataBind();
           
         
        }
        catch (Exception ex)
        {

            lbl_error.Text = ex.Message;
        }
    }



    private void FillGrid()
    {
        try
        {
            DataTable GetGalleryImgs = new DB().ADMIN_GalleryImgs_GetByGalleryID(int.Parse(DropDownList1.SelectedValue.ToString()));
            int GalleryID = int.Parse(DropDownList1.SelectedValue.ToString());
            HttpContext.Current.Session["GalleryID"] = GalleryID.ToString();
            grid_Display.DataSource = GetGalleryImgs;
            grid_Display.DataBind();

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
            new DB().ADMIN_GalleryImgs_Delete(id);
            FillGrid();
        }
        catch (Exception ex)
        {

            lbl_error.Text = ex.Message;
        }
    }

    protected void grid_Display_RowEditing(object sender, GridViewEditEventArgs e)
    {
        image_thumb.Visible = true;
        int id = (int)grid_Display.DataKeys[e.NewEditIndex].Value;
        DataTable edit_dt = new DB().ADMIN_GalleryImgs_GetByID(id);
        Bind(edit_dt);
        lbl_id.Text = id.ToString();
    }

    private void Bind(DataTable edit_dt)
    {

        image_thumb.ImageUrl = edit_dt.Rows[0]["Img"].ToString();


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
    protected void HiddenButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Account/GalleryImages.aspx");
    }
}