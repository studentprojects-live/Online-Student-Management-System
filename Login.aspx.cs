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
public partial class Login : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd1,cmd2;
    SqlDataAdapter da;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        con=new SqlConnection();
        con.ConnectionString = ConfigurationSettings.AppSettings["conn"].ToString();
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        da = new SqlDataAdapter("select * from userdetails where username='" + txtusername.Text + "' and pswd='" + txtpassword.Text + "'", con);
        ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count != 0)
        {
            Session["UserID"] = ds.Tables[0].Rows[0][0].ToString();
            Session["UserName"] = ds.Tables[0].Rows[0][1].ToString(); 
            if (ds.Tables[0].Rows[0][1].ToString() == "admin" && ds.Tables[0].Rows[0][2].ToString() == "admin")
            {
               
                Response.Redirect("admissionHomePage.aspx");
            }
            else
            {
                Response.Redirect("studentHomePage.aspx");
            }
        }
        else
            lblmsg.Text = "User doesnot exist";
    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtusername.Text = "";
        txtpassword.Text = "";
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}
