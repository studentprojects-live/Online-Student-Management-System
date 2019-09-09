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

public partial class ViewStudentDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["roleNo"] = TextBox1.Text;

        if (Request.QueryString["From"] == null)
            Response.Redirect("PersonalDetails.aspx");
        else
            Response.Redirect("PersonalDetails.aspx?From=admin");

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (Request.QueryString["From"] != null)
            Response.Redirect("admissionHomePage.aspx");
    }
}
