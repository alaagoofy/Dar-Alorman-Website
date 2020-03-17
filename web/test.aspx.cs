using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;
using System.Collections.Specialized;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //Dictionary of the parameters sent with the http request.
        var parameters = new Dictionary<string, string>();
        parameters.Add("access_code", "JbhK6fmGxvgTNPO6vPai");
        parameters.Add("amount", "1000");
        parameters.Add("currency", "EGP");
        parameters.Add("merchant_identifier", "KllumJVP");
        parameters.Add("merchant_reference", "001");
        parameters.Add("command", "AUTHORIZATION");
        parameters.Add("language", "en");
        parameters.Add("order_description", "Item");
        parameters.Add("customer_email","alaa87_ma@hotmail.com");
        parameters.Add("customer_name", "Alaa");


        //sorting the parameters by key ascendingly and manipulating the string that will be SHA256 encrypted.
        var sortedParameters = parameters.OrderBy(x => x.Key);
        var stringSortedParameteres = sortedParameters.Aggregate("start", (current, item) => current + (item.Key + "=" + item.Value));
        stringSortedParameteres += "start";

        string hashedSignature = String.Empty;
        //encrypt the parameters' string to get the signature.
        //using (var hash = SHA256.Create())
        //{
        //    var bytes = hash.ComputeHash(Encoding.ASCII.GetBytes(stringSortedParameteres));
        //    hashedSignature = Encoding.ASCII.GetString(bytes);
        //}
        var crypt = SHA256.Create();
        string hash = string.Empty;
        var crypto = crypt.ComputeHash(Encoding.ASCII.GetBytes(stringSortedParameteres), 0, Encoding.ASCII.GetByteCount(stringSortedParameteres));
        hash = crypto.Aggregate(hash, (current, b) => current + b.ToString("x2"));

        //add the signature to the parameters' dictionary.
        parameters.Add("signature", hash);

        //convert the parameters' dictionary to json string.
        var temp = parameters.Select(d => string.Format("\"{0}\": \"{1}\"", d.Key, string.Join(",", d.Value)));
        var jsonRequestString = "{" + string.Join(",", temp) + "}";



        //convert parameters' string to binary.
        var data = Encoding.ASCII.GetBytes(jsonRequestString);

        ////create the http request.
        //var request = (HttpWebRequest)WebRequest.Create("https://sbcheckout.payfort.com/FortAPI/paymentPage");
        //request.Method = "POST";
        //request.ContentType = "application/json";
        //request.ContentLength = data.Length;

        ////attach the binary parameters to the request.
        //using (var stream = request.GetRequestStream())
        //{
        //    stream.Write(data, 0, data.Length);
        //}

        ////get response.
        //var response = (HttpWebResponse)request.GetResponse();
        //var xxx = response.ResponseUri;
        //var responseString = new StreamReader(response.GetResponseStream()).ReadToEnd();
        //Label1.Text = responseString;

        var parameterValues = new NameValueCollection();
        foreach (var item in parameters)
        {
            parameterValues.Add(item.Key, item.Value);
        }

        RedirectWithData("https://sbcheckout.payfort.com/FortAPI/paymentPage", parameterValues);
    }
    public void RedirectWithData(string aDestination, NameValueCollection aData)
    {
        Response.Clear();
        StringBuilder sb = new StringBuilder();

        sb.Append("<html>");
        sb.AppendFormat("<body onload=\"document.forms['form'].submit()\">");
        sb.AppendFormat("<form name=\"form\" action=\"{0}\" method=\"post\">", aDestination);

        foreach (string key in aData)
        {
            sb.AppendFormat("<input type=\"hidden\" name=\"{0}\" value=\"{1}\" />", key, aData[key]);
        }

        sb.Append("</form>");
        sb.Append("</body>");
        sb.Append("</html>");
        var a = sb.ToString();
        Response.Write(sb.ToString());

        Response.End();
    }
}