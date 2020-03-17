using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

/// <summary>
/// Summary description for wight
/// </summary>
public class DB
{
    SqlConnection con = null;
    SqlCommand com = null;
    SqlDataAdapter da = null;
    SqlDataReader dr = null;
    DataTable dt = null;
    DataSet ds = null;


    SqlConnection con2 = null;
    SqlCommand com2 = null;
    SqlDataAdapter da2 = null;
    SqlDataReader dr2 = null;
    DataTable dt2 = null;
    DataSet ds2 = null;


    public DB()
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
      
    }


   

  


    # region NewsImgs

    public void ADMIN_NewsImgs_Delete(int ID)
    {
        using (con)
        {
            com = con.CreateCommand();
            com.CommandText = "ADMIN_NewsImgs_Delete";
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@ID", ID);
            con.Open();
            com.ExecuteNonQuery();
            con.Close();
        }
    }


    public DataTable ADMIN_NewsImgs_GetByID(int ID)
    {
        using (con)
        {
            com = con.CreateCommand();
            com.CommandText = "ADMIN_NewsImgs_GetByID";
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@ID", ID);
            da = new SqlDataAdapter(com);
            ds = new DataSet();
            da.Fill(ds);
            return ds.Tables[0];
        }
    }






    public DataTable Admin_NewsImgs_Gettop5()
    {
        com = con.CreateCommand();
        com.CommandText = "Admin_NewsImgs_Gettop5";
        com.CommandType = CommandType.StoredProcedure;
        da = new SqlDataAdapter(com);
        ds = new DataSet();
        da.Fill(ds);
        return ds.Tables[0];

    }

    public DataTable ADMIN_NewsImgs_Get()
    {
        com = con.CreateCommand();
        com.CommandText = "ADMIN_NewsImgs_Get";
        com.CommandType = CommandType.StoredProcedure;
        da = new SqlDataAdapter(com);
        ds = new DataSet();
        da.Fill(ds);
        return ds.Tables[0];

    }

    public DataTable Admin_NewsImgs_Insert(string Title, string Img, string Thumb, string DateNews)
    {
        using (con)
        {
            com = con.CreateCommand();
            com.CommandText = "Admin_NewsImgs_Insert";
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@Title", Title);
            com.Parameters.AddWithValue("@Img", Img);
            com.Parameters.AddWithValue("@Thumb", Thumb);
            com.Parameters.AddWithValue("@DateNews", DateNews);
           
            da = new SqlDataAdapter(com);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
    }



    public DataTable Admin_NewsImgs_Update(int ID, string Title, string Img, string Thumb, string DateNews)
    {
        using (con)
        {
            com = con.CreateCommand();
            com.CommandText = "Admin_NewsImgs_Update";
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@ID", ID);
            com.Parameters.AddWithValue("@Title", Title);
            com.Parameters.AddWithValue("@Img", Img);
            com.Parameters.AddWithValue("@Thumb", Thumb);
            com.Parameters.AddWithValue("@DateNews", DateNews);
            da = new SqlDataAdapter(com);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
    }

    # endregion

    # region News

    public void ADMIN_News_Delete(int ID)
    {
        using (con)
        {
            com = con.CreateCommand();
            com.CommandText = "ADMIN_News_Delete";
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@ID", ID);
            con.Open();
            com.ExecuteNonQuery();
            con.Close();
        }
    }


    public DataTable ADMIN_News_GetByID(int ID)
    {
        using (con)
        {
            com = con.CreateCommand();
            com.CommandText = "ADMIN_News_GetByID";
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@ID", ID);
            da = new SqlDataAdapter(com);
            ds = new DataSet();
            da.Fill(ds);
            return ds.Tables[0];
        }
    }






    public DataTable Admin_News_Gettop5()
    {
        com = con.CreateCommand();
        com.CommandText = "Admin_News_Gettop5";
        com.CommandType = CommandType.StoredProcedure;
        da = new SqlDataAdapter(com);
        ds = new DataSet();
        da.Fill(ds);
        return ds.Tables[0];

    }

    public DataTable ADMIN_News_Get()
    {
        com = con.CreateCommand();
        com.CommandText = "ADMIN_News_Get";
        com.CommandType = CommandType.StoredProcedure;
        da = new SqlDataAdapter(com);
        ds = new DataSet();
        da.Fill(ds);
        return ds.Tables[0];

    }

    public DataTable Admin_News_Insert(string Title, string Thumb, string Url, string DateNews)
    {
        using (con)
        {
            com = con.CreateCommand();
            com.CommandText = "Admin_News_Insert";
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@Title", Title);
        
            com.Parameters.AddWithValue("@Thumb", Thumb);
            com.Parameters.AddWithValue("@Url", Url);
            com.Parameters.AddWithValue("@DateNews", DateNews);

            da = new SqlDataAdapter(com);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
    }



    public DataTable Admin_News_Update(int ID, string Title, string Thumb, string Url, string DateNews)
    {
        using (con)
        {
            com = con.CreateCommand();
            com.CommandText = "Admin_News_Update";
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@ID", ID);
            com.Parameters.AddWithValue("@Title", Title);
            com.Parameters.AddWithValue("@Thumb", Thumb);
            com.Parameters.AddWithValue("@Url", Url);
            com.Parameters.AddWithValue("@DateNews", DateNews);
            da = new SqlDataAdapter(com);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
    }

    # endregion

    # region Gallery

    public void ADMIN_Gallery_Delete(int ID)
    {
        using (con)
        {
            com = con.CreateCommand();
            com.CommandText = "ADMIN_Gallery_Delete";
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@ID", ID);
            con.Open();
            com.ExecuteNonQuery();
            con.Close();
        }
    }


    public DataTable ADMIN_Gallery_GetByID(int ID)
    {
        using (con)
        {
            com = con.CreateCommand();
            com.CommandText = "ADMIN_Gallery_GetByID";
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@ID", ID);
            da = new SqlDataAdapter(com);
            ds = new DataSet();
            da.Fill(ds);
            return ds.Tables[0];
        }
    }

    public DataTable ADMIN_Gallery_GetTop6()
    {
        com = con.CreateCommand();
        com.CommandText = "ADMIN_Gallery_GetTop6";
        com.CommandType = CommandType.StoredProcedure;
        da = new SqlDataAdapter(com);
        ds = new DataSet();
        da.Fill(ds);
        return ds.Tables[0];

    }

 


    public DataTable ADMIN_Gallery_Get()
    {
        com = con.CreateCommand();
        com.CommandText = "ADMIN_Gallery_Get";
        com.CommandType = CommandType.StoredProcedure;
        da = new SqlDataAdapter(com);
        ds = new DataSet();
        da.Fill(ds);
        return ds.Tables[0];

    }



    public DataTable Admin_Gallery_Insert(string Title, string Thumb)
    {
        using (con)
        {
            com = con.CreateCommand();
            com.CommandText = "Admin_Gallery_Insert";
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@Title", Title);
          
            com.Parameters.AddWithValue("@Thumb", Thumb);
          

            da = new SqlDataAdapter(com);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
    }



    public DataTable Admin_Gallery_Update(int ID, string Title,  string Thumb)
    {
        using (con)
        {
            com = con.CreateCommand();
            com.CommandText = "Admin_Gallery_Update";
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@ID", ID);
            com.Parameters.AddWithValue("@Title", Title);
          
            com.Parameters.AddWithValue("@Thumb", Thumb);
          
            da = new SqlDataAdapter(com);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
    }

    # endregion


    # region GalleryImgs

    public void ADMIN_GalleryImgs_Delete(int ID)
    {
        using (con)
        {
            com = con.CreateCommand();
            com.CommandText = "ADMIN_GalleryImgs_Delete";
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@ID", ID);
            con.Open();
            com.ExecuteNonQuery();
            con.Close();
        }
    }


    public DataTable ADMIN_GalleryImgs_GetByID(int ID)
    {
        using (con)
        {
            com = con.CreateCommand();
            com.CommandText = "ADMIN_GalleryImgs_GetByID";
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@ID", ID);
            da = new SqlDataAdapter(com);
            ds = new DataSet();
            da.Fill(ds);
            return ds.Tables[0];
        }
    }

    public DataTable ADMIN_GalleryImgs_GetByGalleryID(int GalleryID)
    {
        using (con)
        {
            com = con.CreateCommand();
            com.CommandText = "ADMIN_GalleryImgs_GetByGalleryID";
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@GalleryID", GalleryID);
            da = new SqlDataAdapter(com);
            ds = new DataSet();
            da.Fill(ds);
            return ds.Tables[0];
        }
    }




    public DataTable ADMIN_GalleryImgs_Get()
    {
        com = con.CreateCommand();
        com.CommandText = "ADMIN_GalleryImgs_Get";
        com.CommandType = CommandType.StoredProcedure;
        da = new SqlDataAdapter(com);
        ds = new DataSet();
        da.Fill(ds);
        return ds.Tables[0];

    }


    public DataTable ADMIN_GalleryImgs_GetTop6()
    {
        com = con.CreateCommand();
        com.CommandText = "ADMIN_GalleryImgs_GetTop6";
        com.CommandType = CommandType.StoredProcedure;
        da = new SqlDataAdapter(com);
        ds = new DataSet();
        da.Fill(ds);
        return ds.Tables[0];

    }



    public DataTable Admin_GalleryImgs_Insert(string Img, int GalleryID)
    {
        using (con)
        {
            com = con.CreateCommand();
            com.CommandText = "Admin_GalleryImgs_Insert";
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@Img", Img);
            com.Parameters.AddWithValue("@GalleryID", GalleryID);


            da = new SqlDataAdapter(com);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
    }



    public DataTable Admin_GalleryImgs_Update(int ID, string Img, int GalleryID)
    {
        using (con)
        {
            com = con.CreateCommand();
            com.CommandText = "Admin_GalleryImgs_Update";
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@ID", ID);
            com.Parameters.AddWithValue("@Img", Img);
            com.Parameters.AddWithValue("@GalleryID", GalleryID);

            da = new SqlDataAdapter(com);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
    }

    # endregion


    # region Articles

    public void ADMIN_Articles_Delete(int ID)
    {
        using (con)
        {
            com = con.CreateCommand();
            com.CommandText = "ADMIN_Articles_Delete";
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@ID", ID);
            con.Open();
            com.ExecuteNonQuery();
            con.Close();
        }
    }


    public DataTable ADMIN_Articles_GetByID(int ID)
    {
        using (con)
        {
            com = con.CreateCommand();
            com.CommandText = "ADMIN_Articles_GetByID";
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@ID", ID);
            da = new SqlDataAdapter(com);
            ds = new DataSet();
            da.Fill(ds);
            return ds.Tables[0];
        }
    }






    public DataTable ADMIN_Articles_Get()
    {
        com = con.CreateCommand();
        com.CommandText = "ADMIN_Articles_Get";
        com.CommandType = CommandType.StoredProcedure;
        da = new SqlDataAdapter(com);
        ds = new DataSet();
        da.Fill(ds);
        return ds.Tables[0];

    }

    public DataTable ADMIN_Articles_GetTop5()
    {
        com = con.CreateCommand();
        com.CommandText = "ADMIN_Articles_GetTop5";
        com.CommandType = CommandType.StoredProcedure;
        da = new SqlDataAdapter(com);
        ds = new DataSet();
        da.Fill(ds);
        return ds.Tables[0];

    }



    public DataTable Admin_Articles_Insert(string Title, string Body,string Img)
    {
        using (con)
        {
            com = con.CreateCommand();
            com.CommandText = "Admin_Articles_Insert";
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@Title", Title);
            com.Parameters.AddWithValue("@Body", Body);
            com.Parameters.AddWithValue("@Img", Img);

            da = new SqlDataAdapter(com);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
    }



    public DataTable Admin_Articles_Update(int ID, string Title, string Body, string Img)
    {
        using (con)
        {
            com = con.CreateCommand();
            com.CommandText = "Admin_Articles_Update";
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@ID", ID);
            com.Parameters.AddWithValue("@Title", Title);
            com.Parameters.AddWithValue("@Body", Body);
            com.Parameters.AddWithValue("@Img", Img);
            da = new SqlDataAdapter(com);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
    }

    # endregion

    # region OnlineRequest


    public DataTable Admin_OnlineRequest_Insert(string Name,string Phone,string Mail,string City,string Adres,
        string Donate, string DonateFor, string DonateTime, string Notes,DateTime DateNow)
    {
        using (con)
        {
            com = con.CreateCommand();
            com.CommandText = "Admin_OnlineRequest_Insert";
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@Name", Name);
            com.Parameters.AddWithValue("@Phone", Phone);
            com.Parameters.AddWithValue("@Mail", Mail);
            com.Parameters.AddWithValue("@City", City);
            com.Parameters.AddWithValue("@Adres", Adres);
            com.Parameters.AddWithValue("@Donate", Donate);
            com.Parameters.AddWithValue("@DonateFor", DonateFor);
            com.Parameters.AddWithValue("@DonateTime", DonateTime);
            com.Parameters.AddWithValue("@Notes", Notes);
            com.Parameters.AddWithValue("@DateNow", DateNow);
            da = new SqlDataAdapter(com);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
    }


    public DataTable Admin_OnlineRequest_GetByID(int ID)
    {
        using (con)
        {
            com = con.CreateCommand();
            com.CommandText = "Admin_OnlineRequest_GetByID";
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@ID", ID);
            da = new SqlDataAdapter(com);
            ds = new DataSet();
            da.Fill(ds);
            return ds.Tables[0];
        }
    }


    public DataTable Admin_OnlineRequest_GetByDateTime(DateTime DateOne, DateTime DateTwo)
    {
        using (con)
        {
            com = con.CreateCommand();
            com.CommandText = "Admin_OnlineRequest_GetByDateTime";
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@DateOne", DateOne);
            com.Parameters.AddWithValue("@DateTwo", DateTwo);
            da = new SqlDataAdapter(com);
            ds = new DataSet();
            da.Fill(ds);
            return ds.Tables[0];
        }
    }




    public DataTable Admin_OnlineRequest_Update(int ID, string MangerNot)
    {
        using (con)
        {
            com = con.CreateCommand();
            com.CommandText = "Admin_OnlineRequest_Update";
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@ID", ID);
            com.Parameters.AddWithValue("@MangerNot", MangerNot);
            
            da = new SqlDataAdapter(com);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
    }



    public DataTable ADMIN_OnlineRequest_Get()
    {
        com = con.CreateCommand();
        com.CommandText = "ADMIN_OnlineRequest_Get";
        com.CommandType = CommandType.StoredProcedure;
        da = new SqlDataAdapter(com);
        ds = new DataSet();
        da.Fill(ds);
        return ds.Tables[0];

    }

    # endregion






    public DataTable getschool()
    {
        com2 = con2.CreateCommand();
        com2.CommandText = "getschool";
        com2.CommandType = CommandType.StoredProcedure;
        da2 = new SqlDataAdapter(com2);
        ds2 = new DataSet();
        da2.Fill(ds2);
        return ds2.Tables[0];

    }


    # region Admin_odhJOBS_Insert



    public DataTable Admin_odhJOBS_Insert(string Name, string Graduate, string CurrentJob, string Job, string GraduateFrom, string ExperinceYears, string TarbawyGraduate, string City, string Adress, string Phone, string Question, int SchoolID, DateTime DateTime)
    {
        using (con2)
        {
            com2 = con2.CreateCommand();
            com2.CommandText = "Admin_odhJOBS_Insert";
            com2.CommandType = CommandType.StoredProcedure;
            com2.Parameters.AddWithValue("@Name", Name);
            com2.Parameters.AddWithValue("@Graduate", Graduate);
            com2.Parameters.AddWithValue("@CurrentJob", CurrentJob);
            com2.Parameters.AddWithValue("@Job", Job);
            com2.Parameters.AddWithValue("@GraduateFrom", GraduateFrom);
            com2.Parameters.AddWithValue("@ExperinceYears", ExperinceYears);
            com2.Parameters.AddWithValue("@TarbawyGraduate", TarbawyGraduate);
            com2.Parameters.AddWithValue("@City", City);
            com2.Parameters.AddWithValue("@Adress", Adress);
            com2.Parameters.AddWithValue("@Phone", Phone);
            com2.Parameters.AddWithValue("@Question", Question);
            com2.Parameters.AddWithValue("@SchoolID", SchoolID);
            com2.Parameters.AddWithValue("@DateTime", DateTime);
            da2 = new SqlDataAdapter(com2);
            dt2 = new DataTable();
            da2.Fill(dt2);
            return dt2;
        }
    }





    # endregion




    # region ip

    public void ADMIN_ip_Delete(int ID)
    {
        using (con)
        {
            com = con.CreateCommand();
            com.CommandText = "ADMIN_ip_Delete";
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@ID", ID);
            con.Open();
            com.ExecuteNonQuery();
            con.Close();
        }
    }


    public void Admin_ip_DeletebyDatedonor(DateTime Datedonor)
    {
        using (con)
        {
            com = con.CreateCommand();
            com.CommandText = "Admin_ip_DeletebyDatedonor";
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@Datedonor", Datedonor);
            con.Open();
            com.ExecuteNonQuery();
            con.Close();
        }
    }


    public DataTable ADMIN_ip_GetByID(int ID)
    {
        using (con)
        {
            com = con.CreateCommand();
            com.CommandText = "ADMIN_ip_GetByID";
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@ID", ID);
            da = new SqlDataAdapter(com);
            ds = new DataSet();
            da.Fill(ds);
            return ds.Tables[0];
        }
    }

    public DataTable ADMIN_ip_GetByDatedonor(DateTime Datedonor)
    {
        using (con)
        {
            com = con.CreateCommand();
            com.CommandText = "ADMIN_ip_GetByDatedonor";
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@Datedonor", Datedonor);
            da = new SqlDataAdapter(com);
            ds = new DataSet();
            da.Fill(ds);
            return ds.Tables[0];
        }
    }

    public DataTable Admin_ip_GetByIP(string IP)
    {
        using (con)
        {
            com = con.CreateCommand();
            com.CommandText = "Admin_ip_GetByIP";
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@IP", IP);
            da = new SqlDataAdapter(com);
            ds = new DataSet();
            da.Fill(ds);
            return ds.Tables[0];
        }
    }





    public DataTable ADMIN_ip_Get()
    {
        com = con.CreateCommand();
        com.CommandText = "ADMIN_ip_Get";
        com.CommandType = CommandType.StoredProcedure;
        da = new SqlDataAdapter(com);
        ds = new DataSet();
        da.Fill(ds);
        return ds.Tables[0];

    }





    public DataTable Admin_ip_Insert(string IP, DateTime Datedonor, int num)
    {
        using (con)
        {
            com = con.CreateCommand();
            com.CommandText = "Admin_ip_Insert";
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@IP", IP);
            com.Parameters.AddWithValue("@Datedonor", Datedonor);
            com.Parameters.AddWithValue("@num", num);


            da = new SqlDataAdapter(com);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
    }



    public DataTable Admin_ip_Update(int ID, string IP, DateTime Datedonor, int num)
    {
        using (con)
        {
            com = con.CreateCommand();
            com.CommandText = "Admin_ip_Update";
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@ID", ID);
            com.Parameters.AddWithValue("@IP", IP);
            com.Parameters.AddWithValue("@Datedonor", Datedonor);
            com.Parameters.AddWithValue("@num", num);
            da = new SqlDataAdapter(com);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
    }

    #endregion


    public static int GetMaxIdahly()
    {
        string connStr = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        int result = 0;
        SqlConnection cnn = new SqlConnection(connStr);
        cnn.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = cnn;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "tbl_DonorData_GetMaxIdahly";
        SqlDataReader dr;
        dr = cmd.ExecuteReader();
        if (dr.Read())
            if (!(dr["MerchRef"] is DBNull))
                result = (int)dr["MerchRef"];
        cnn.Close();
        return result;
    }

    public DataTable tbl_DonorData_Insertahly(int MerchRef, string MerchEmail, decimal Amount, string IsApproved, string Project, DateTime DonateTime)
    {
        using (con)
        {
            com = con.CreateCommand();
            com.CommandText = "tbl_DonorData_Insertahly";
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.Add("MerchRef", SqlDbType.Int).Value = MerchRef;
            com.Parameters.Add("MerchEmail", SqlDbType.NVarChar).Value = MerchEmail;

            com.Parameters.Add("Amount", SqlDbType.Decimal).Value = Amount;
            com.Parameters.Add("IsApproved", SqlDbType.NVarChar).Value = IsApproved;
            com.Parameters.Add("Project", SqlDbType.NVarChar).Value = Project;
            com.Parameters.Add("DonateTime", SqlDbType.DateTime).Value = DonateTime;
            da = new SqlDataAdapter(com);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
    }




    public DataTable tbl_DonorData_Insertle(int MerchRef, string MerchEmail, decimal Amount, string IsApproved, string Project, DateTime DonateTime)
    {
        using (con)
        {
            com = con.CreateCommand();
            com.CommandText = "tbl_DonorData_Insertle";
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.Add("MerchRef", SqlDbType.Int).Value = MerchRef;
            com.Parameters.Add("MerchEmail", SqlDbType.NVarChar).Value = MerchEmail;

            com.Parameters.Add("Amount", SqlDbType.Decimal).Value = Amount;
            com.Parameters.Add("IsApproved", SqlDbType.NVarChar).Value = IsApproved;
            com.Parameters.Add("Project", SqlDbType.NVarChar).Value = Project;
            com.Parameters.Add("DonateTime", SqlDbType.DateTime).Value = DonateTime;
            da = new SqlDataAdapter(com);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
    }


    public DataTable tbl_DonorData_Insert(int MerchRef, string MerchEmail, decimal Amount, string IsApproved, string Project, DateTime DonateTime)
    {
        using (con)
        {
            com = con.CreateCommand();
            com.CommandText = "tbl_DonorData_Insert";
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.Add("MerchRef", SqlDbType.Int).Value = MerchRef;
            com.Parameters.Add("MerchEmail", SqlDbType.NVarChar).Value = MerchEmail;

            com.Parameters.Add("Amount", SqlDbType.Decimal).Value = Amount;
            com.Parameters.Add("IsApproved", SqlDbType.NVarChar).Value = IsApproved;
            com.Parameters.Add("Project", SqlDbType.NVarChar).Value = Project;
            com.Parameters.Add("DonateTime", SqlDbType.DateTime).Value = DonateTime;
            da = new SqlDataAdapter(com);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
    }

}