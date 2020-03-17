using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for UserSession
/// </summary>
public class UserSession
{
    static UserSession() { }

    public static string GalleryID
    {
        set { HttpContext.Current.Session["GalleryID"] = value; }
        get { return (string)HttpContext.Current.Session["GalleryID"]; }
    }

   
}