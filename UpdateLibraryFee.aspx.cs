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

public partial class UpdateLibraryFee : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["conn"].ToString());
    SqlCommand cmd1, cmd2;
    SqlDataAdapter da;
    DataSet ds;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            TextBox1.Enabled = false;
            
        }
    }

    protected void btnText_Click(object sender, EventArgs e)
    {
        TextBox1.Enabled = true;
    }
    protected void btnChkAll_Click(object sender, EventArgs e)
    {
      
        
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }



        DataSet ds = new DataSet();
        SqlDataAdapter sda = new SqlDataAdapter("Select libraryfeedue from studentdetails where rollno='" + txtID.Text+"'", con);
        sda.Fill(ds);


        int libFee = Convert.ToInt32(ds.Tables[0].Rows[0][0].ToString());

        if (Convert.ToInt32(TextBox1.Text) > Convert.ToInt32(TextBox3.Text))
        {

            int lib = Convert.ToInt32(TextBox1.Text) - Convert.ToInt32(TextBox3.Text);

            int libFeeDue = libFee - Convert.ToInt32(TextBox3.Text);
            cmd1 = new SqlCommand();
            cmd1.Connection = con;
            cmd1.CommandType = CommandType.Text;
            cmd1.CommandText = "update studentdetails set libraryfeedue='" + libFeeDue + "' where rollno='" + txtID.Text + "'";
            int i = cmd1.ExecuteNonQuery();

            if (i > 0)
            {
                lblErr.Text = "updated sucessfully";
            }
        }
        else
        {
            lblErr.Text = "Enter Correct Value";
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        da = new SqlDataAdapter("SELECT libraryfee FROM studentdetails WHERE rollno='" + txtID.Text+"' " , con);
        ds = new DataSet();
        da.Fill(ds);

        TextBox1.Text = ds.Tables[0].Rows[0][0].ToString();
    }
}
