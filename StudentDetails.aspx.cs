using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class StudentDetails : System.Web.UI.Page
{
    SqlConnection conn ;
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {
        string rollNumber = string.Empty;
        if (Session["roleNo"] != null)
        {
            rollNumber = Session["roleNo"].ToString();
        
        }





    }
}
