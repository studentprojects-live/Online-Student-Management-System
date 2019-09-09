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

public partial class UpdateAdmissionFee : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd1, cmd2;
    SqlDataAdapter da;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
       // TextBox1.Enabled = false;
    }
    protected void btnText_Click(object sender, EventArgs e)
    {
        con = new SqlConnection();
        con.ConnectionString = ConfigurationSettings.AppSettings["conn"].ToString();


        da = new SqlDataAdapter("select admissionFee from studentdetails where rollno = '" + txtID.Text + "' and admissionfee! = 0 ", con);
            ds = new DataSet();
            da.Fill(ds,"studentdetails");

            TextBox1.Text = ds.Tables[0].Rows[0][0].ToString();
    }
    protected void btnChkAll_Click(object sender, EventArgs e)
    {
        int add=0;
        con = new SqlConnection();
        con.ConnectionString = ConfigurationSettings.AppSettings["conn"].ToString();
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
                cmd1 = new SqlCommand();
                DataSet ds = new DataSet();
                SqlDataAdapter sda = new SqlDataAdapter("Select admissionfeedue from studentdetails where rollno='" + txtID.Text+"'", con);
                sda.Fill(ds);

                int addFee = Convert.ToInt32(ds.Tables[0].Rows[0][0].ToString());

                
                if (Convert.ToInt32(TextBox1.Text) > Convert.ToInt32(TextBox2.Text))
                {

                    add = Convert.ToInt32(TextBox1.Text) - Convert.ToInt32(TextBox2.Text);
                    int addFeeDue = addFee - Convert.ToInt32(TextBox2.Text);


                    cmd1 = new SqlCommand("update studentdetails set  admissionfeedue='" + addFeeDue + "' where rollno='" + txtID.Text + "'", con);

                    int i = cmd1.ExecuteNonQuery();
                    if (i > 0)
                    {
                        lblErr.Text = "Updated Sucessfully";
                    }
                    else
                    {
                        lblErr.Text = "Error in inserting";
                    }
                }
                else
                {
                    lblErr.Text = "Enter Correct Value";
                    
                }

                

                
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        TextBox1.Enabled = true;
    }
}
