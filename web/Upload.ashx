<%@ WebHandler Language="C#" Class="Upload" %>

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Web.SessionState;

public class Upload : IHttpHandler,IReadOnlySessionState
{
    
    public void ProcessRequest (HttpContext context) 
    {
        int GalleryID = int.Parse(UserSession.GalleryID);

        context.Response.ContentType = "text/plain";
        context.Response.Expires = -1;
        try
        {
            HttpPostedFile postedFile = context.Request.Files["Filedata"];
            
            string savepath = "";
            string tempPath = "";
            tempPath = System.Configuration.ConfigurationManager.AppSettings["FolderPath"]+GalleryID; 
            savepath = context.Server.MapPath(tempPath);
            string filename = postedFile.FileName;
            if (!Directory.Exists(savepath))
                Directory.CreateDirectory(savepath);
            Random rand = new Random((int)DateTime.Now.Ticks);
            int numIterations = 0;
            numIterations = rand.Next(1, 10000);

            postedFile.SaveAs(savepath + @"\" + numIterations + filename);
            string Img = (tempPath + "/" + numIterations+filename);

            context.Response.Write(tempPath + "/" + numIterations+filename);
            new DB().Admin_GalleryImgs_Insert(Img, GalleryID);


           

           
            context.Response.StatusCode = 200;
           
           
        }
        catch (Exception ex)
        {
            context.Response.Write("Error: " + ex.Message);
        }
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }
}