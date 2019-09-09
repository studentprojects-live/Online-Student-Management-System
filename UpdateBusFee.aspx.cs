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

public partial class UpdateBusFee : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd1, cmd2;
    SqlDataAdapter da;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //TextBox1.Enabled = false;
        }
    }
    protected void btnText_Click(object sender, EventArgs e)
    {
        con = new SqlConnection();
        con.ConnectionString = ConfigurationSettings.AppSettings["conn"].ToString();
                    
        
            da = new SqlDataAdapter("select busfee from studentdetails where rollno ='"+txtID.Text+"' ", con);
            ds = new DataSet();
            da.Fill(ds);

            TextBox1.Text = ds.Tables[0].Rows[0][0].ToString();
        
    }
    protected void btnChkAll_Click(object sender, EventArgs e)
    {
        int bus = 0;
        con = new SqlConnection();
        con.ConnectionString = ConfigurationSettings.AppSettings["conn"].ToString();
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
        cmd1 = new SqlCommand();

        DataSet ds = new DataSet();
        SqlDataAdapter sda = new SqlDataAdapter("Select busfeedue from studentdetails where rollno='" + txtID.Text+"'", con);
        sda.Fill(ds);

        int busFee = Convert.ToInt32(ds.Tables[0].Rows[0][0].ToString());

        if( Convert.ToInt32(TextBox1.Text)> Convert.ToInt32(TextBox3.Text))
        {

         bus = Convert.ToInt32(TextBox1.Text) - Convert.ToInt32(TextBox3.Text);

        int busFeeDue = busFee - Convert.ToInt32(TextBox3.Text);
        cmd1 = new SqlCommand("update studentdetails set  busfeedue='" + busFeeDue + "' where rollno='" + txtID.Text+"'", con);
              int i=  cmd1.ExecuteNonQuery();
              if (i > 0)
              {
                  lblErr.Text = "Inserted Sucessfully";
              }
              else
              {
                  lblErr.Text = "Error in inserting";
              }   
        }
    


     else
            {
               lblErr.Text="Enter Correct Value";
           }
    
    


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        TextBox1.Enabled = true;
    }
}
