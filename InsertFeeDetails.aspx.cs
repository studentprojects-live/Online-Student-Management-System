using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;


public partial class InsertFeeDetails : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationSettings.AppSettings["conn"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            resultlbl.Visible = false;
            SqlDataAdapter sda = new SqlDataAdapter("SELECT rollno FROM studentdetails", cn);
            DataSet d1 = new DataSet();
            sda.Fill(d1);
            DropDownList1.DataSource = d1;
            DropDownList1.DataTextField = "rollno";
            DropDownList1.DataBind();
        }
    }
    //protected void btn_insert_Click(object sender, EventArgs e)
    //{
        
    //    cn.Open();
    //    SqlCommand cmd = new SqlCommand();
    //    SqlCommand cmd1 = new SqlCommand();

        
    //    cmd1.CommandType = CommandType.Text;
    //    cmd1.Connection = cn;
    //    //object o = cmd1.ExecuteScalar();
    //    //int addFee = Convert.ToInt32(o.ToString());
    //    DataSet ds = new DataSet();
    //    SqlDataAdapter sda = new SqlDataAdapter("Select admissionfeedue,busfeedue,libraryfeedue,tutionfeedue from studentdetails where rollno=" + txt_rollno.Text ,cn);
    //    sda.Fill(ds);

    //    int addFee =Convert.ToInt32(ds.Tables[0].Rows[0][0].ToString());
    //    int busFee =Convert.ToInt32(ds.Tables[0].Rows[0][1].ToString());
    //    int libFee =Convert.ToInt32(ds.Tables[0].Rows[0][2].ToString());
    //    int tutFee =Convert.ToInt32(ds.Tables[0].Rows[0][3].ToString());

    //    cmd.CommandText = "select rollno from studentdetails where rollno="+ txt_rollno.Text;
    //    SqlDataReader sdr;
    //    cmd.Connection = cn;
    //    sdr = cmd.ExecuteReader();
    //    if (sdr.Read())
    //    {
         
    //        int addFeeDue = addFee-Convert.ToInt32(txt_admissionfee.Text);
    //        int busFeeDue = busFee - Convert.ToInt32(txt_busfee.Text);
    //        int libFeeDue = libFee - Convert.ToInt32(txt_libraryfee.Text);
    //        int tutFeeDue = tutFee - Convert.ToInt32(txt_tutionfee.Text);


    //        cmd.CommandText = "update  studentdetails set admissionFee='" + txt_admissionfee.Text + "', admissionfeedue='"+addFeeDue+"', busfee='" + txt_busfee.Text + "', busfeedue="+busFeeDue+", libraryfee='" + txt_libraryfee.Text + "', libraryfeedue="+libFeeDue+", tutionfee='" + txt_tutionfee.Text + "' ,tutionfeedue="+tutFeeDue+" where rollno=" + txt_rollno.Text ;
    //        cn.Close();
    //        cn.Open();
    //        int result = cmd.ExecuteNonQuery();
    //        if (result > 0)
    //        {
    //            resultlbl.Text = "fees inserted successfully";
    //            resultlbl.Visible = true;

    //        } 
    //    }
    //    else
    //    {
            
    //        resultlbl.Text = "fees insertion not possible as fees as  rollno doesnot exists";
    //        resultlbl.Visible = true;

        
    //    }
    //    cn.Close();
    //}
    SqlCommand cmd1;
    protected void btn_insert_Click(object sender, EventArgs e)
    {
        if (cn.State == ConnectionState.Closed)
        {
            cn.Open();
        }
        cmd1 = new SqlCommand();
        cmd1.Connection = cn;
        cmd1.CommandType = CommandType.Text;
        cmd1.CommandText = "update studentdetails set admissionfee=" + txt_admissionfee.Text + ",admissionfeedue=" + txt_admissionfee.Text + ",busfee=" + txt_busfee.Text + ",busfeedue=" + txt_busfee.Text + ",tutionfee=" + txt_tutionfee.Text + ",tutionfeedue=" + txt_tutionfee.Text + ", libraryfee=" + txt_libraryfee.Text + ",libraryfeedue=" + txt_libraryfee.Text + " where rollno='" + DropDownList1.SelectedItem.Text + "'";
        int i = cmd1.ExecuteNonQuery();

        if (i > 0)
        {
            lblErr.Text = "inserted sucessfully";
        }

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {


        //SqlDataAdapter sda = new SqlDataAdapter("select tutionfee,busfee,admissionFee,libraryfee from  studentdetails where rollno='" + DropDownList1.SelectedItem.Text + "'", cn);
        //DataSet ds=new DataSet ();
        //sda.Fill(ds);
        //txt_tutionfee.Text = ds.Tables[0].Rows[0][0].ToString();
        //txt_busfee.Text = ds.Tables[0].Rows[0][1].ToString();
        //txt_admissionfee .Text= ds.Tables[0].Rows[0][2].ToString();
        //txt_libraryfee.Text  =ds.Tables[0].Rows[0][3].ToString();
        

        

    }
    protected void btn_clear_Click(object sender, EventArgs e)
    {
        txt_tutionfee.Text = "";
        txt_busfee.Text = "";
        txt_admissionfee.Text = "";
        txt_libraryfee.Text = "";
      

    }
}
