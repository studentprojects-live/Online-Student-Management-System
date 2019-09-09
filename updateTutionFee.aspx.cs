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

public partial class updateTutionFee : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["conn"].ToString());
    SqlCommand cmd1, cmd2;
    SqlDataAdapter da;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Enabled = false;
    }
    protected void btnText_Click(object sender, EventArgs e)
    {
        da = new SqlDataAdapter("select tutionfeedue from studentdetails where rollno = '" + txtID.Text + "'", con);
            ds = new DataSet();
            try
            {
                da.Fill(ds);
               // txttutionfee.Text = ds.Tables[0].Rows[0][0].ToString();
                TextBox1.Text = ds.Tables[0].Rows[0][0].ToString();

            }
            catch (Exception er)
            {
                TextBox1.Text = "Fee Details Are Not Available For This Hallticket Number";
            }
           
            
       
    }
    protected void btnChkAll_Click(object sender, EventArgs e)
    {
        int ActualFee, PaidFee, DueFee;        
        da = new SqlDataAdapter("SELECT tutionfee,tutionfeedue FROM studentdetails WHERE rollno='" + txtID.Text + "'", con);
        ds = new DataSet();
        da.Fill(ds);
        ActualFee = Convert.ToInt32(ds.Tables[0].Rows[0][0].ToString());
        //PaidFee = Convert.ToInt32(ds.Tables[0].Rows[0][1].ToString());
        DueFee = Convert.ToInt32(ds.Tables[0].Rows[0][1].ToString());

        if (DueFee != 0)
        {
            lblErr.Text = "";
            PaidFee = Convert.ToInt32(TextBox2.Text);
            if (ActualFee > PaidFee)
            {
                DueFee = ActualFee - PaidFee;

                da = new SqlDataAdapter("UPDATE studentdetails SET  tutionfeedue='" + DueFee + "'", con);
                ds = new DataSet();
                da.Fill(ds);

                da = new SqlDataAdapter("SELECT tutionfee,tutionfeedue FROM studentdetails WHERE rollno='" + txtID.Text + "'", con);
                ds = new DataSet();
                da.Fill(ds);
                ActualFee = Convert.ToInt32(ds.Tables[0].Rows[0][0].ToString());
                //PaidFee = Convert.ToInt32(ds.Tables[0].Rows[0][1].ToString());
                DueFee = Convert.ToInt32(ds.Tables[0].Rows[0][1].ToString());
                TextBox1.Text = DueFee.ToString();
                lblErr.Text = "Updated Successfully";
            }
            else
            {
                lblErr.Text = "Enter Correct Value";
            }
        }
        //else
        //{
        //    lblErr.Text = "Enter Correct Value";
        //}

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        TextBox1.Enabled = true;
    }
}
