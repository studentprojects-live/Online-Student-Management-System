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

public partial class personal_details : System.Web.UI.Page
{
    SqlConnection conn;
    SqlCommand cmd;
    SqlDataAdapter da;
    DataSet ds;
    private bool _editClicked = false;
    protected void Page_Load(object sender, EventArgs e)
    {
        lblErr.Text = "";
        if (!IsPostBack)
        {
            string rollNumber = string.Empty;
            int i = 0;
            if (Session["roleNo"] != null)
            {
                rollNumber = Session["roleNo"].ToString();
                i = 1;

            }

            if (Session["roleNo"] == null)
            {
                if (Session["UserID"] != null)
                {
                    rollNumber = Session["UserID"].ToString();
                    i = 2;
                }
            }

            conn = new SqlConnection();
            conn.ConnectionString = ConfigurationSettings.AppSettings["conn"].ToString();
            if (i == 1)
            {
                da = new SqlDataAdapter("Select * from studentdetails where rollno = '" +Session["roleNo"].ToString()+"'", conn);
                ds = new DataSet();
                da.Fill(ds);

            }
            else if (i == 2)
            {
                da = new SqlDataAdapter("Select * from studentdetails where userid = " + Convert.ToInt32(Session["UserID"].ToString()), conn);
                ds = new DataSet();
                da.Fill(ds);

            }

            //Fill the Controls
            if (ds.Tables[0].Rows.Count > 0)
            {
                if (ds.Tables[0].Rows.Count > 0)
                {
                    TextBox1.Text = ds.Tables[0].Rows[0][1].ToString();
                    TextBox2.Text = ds.Tables[0].Rows[0][2].ToString();
                    TextBox3.Text = ds.Tables[0].Rows[0][3].ToString();
                    TextBox4.Text = ds.Tables[0].Rows[0][4].ToString();
                    TextBox5.Text = ds.Tables[0].Rows[0][6].ToString();
                    TextBox6.Text = ds.Tables[0].Rows[0][7].ToString();
                    TextBox7.Text = ds.Tables[0].Rows[0][5].ToString();

                }
            }
        }

      }
    protected void Button1_Click(object sender, EventArgs e)
    {
        TextBox1.Enabled = true;
        TextBox2.Enabled = true;
        TextBox3.Enabled = true;
        TextBox4.Enabled = true;
        TextBox5.Enabled = true;
        TextBox6.Enabled = true;
        TextBox7.Enabled = true;
        ViewState["_editClicked"] = "true";
        
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        if (ViewState["_editClicked"] != null)
        {
            if (ViewState["_editClicked"].ToString() == "true")
            {
                string rollNumber = string.Empty;
                int i = 0;
                if (Session["roleNo"] != null)
                {
                    rollNumber = Session["roleNo"].ToString();
                    i = 1;

                }

                if (Session["roleNo"] == null)
                {
                    if (Session["UserID"] != null)
                    {
                        rollNumber = Session["UserID"].ToString();
                        i = 2;
                    }
                }

                conn = new SqlConnection();
                conn.ConnectionString = ConfigurationSettings.AppSettings["conn"].ToString();
                conn.Open();
                cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandType = CommandType.Text;
                if (i == 1)
                {
                    cmd.CommandText = "UPDATE studentdetails set firstName = '" + TextBox1.Text + "',lastname = '"
                                    + TextBox2.Text + "',fathername = '" + TextBox3.Text + "',phoneno = '" +
                                    TextBox4.Text + "',emailid = ' " + TextBox7.Text + "',rollno = ' " +
                                       TextBox5.Text + "',address = ' " + TextBox6.Text + "' where rollno=" + rollNumber;
                    cmd.ExecuteNonQuery();
                }
                else if (i == 2)
                {
                    cmd.CommandText = "UPDATE studentdetails set firstName = '" + TextBox1.Text + "',lastname = '"
                                    + TextBox2.Text + "',fathername = '" + TextBox3.Text + "',phoneno = '" +
                                    TextBox4.Text + "',emailid = ' " + TextBox7.Text + "',rollno = ' " +
                                    TextBox5.Text + "',address = ' " + TextBox6.Text + "' where userid=" + rollNumber;
                    cmd.ExecuteNonQuery();
                }

            }
            else
            {
                lblErr.Text = "Please get the controls in Edit mode!!!";

            }
        }
        else
        {
            lblErr.Text = "Please get the controls in Edit mode!!!";
        }

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        if (Request.QueryString["From"] == null)

            Response.Redirect("studentHomePage.aspx");
        else
            Response.Redirect("admissionHomePage.aspx");
    }
}
