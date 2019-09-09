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

public partial class fee_details_for_student : System.Web.UI.Page
{
    SqlConnection conn;
    //SqlCommand cmd;
    SqlDataAdapter da;
    DataSet ds;

    protected void Page_Load(object sender, EventArgs e)
    {
        lblErr.Text = "";
        if (!IsPostBack)
        {
            //string rollNumber = string.Empty;

            //if (Session["roleNo"] != null)
            //{
            //  rollNumber = Session["roleNo"].ToString();




            //if (Session["roleNo"] == null)
            //{
              //  if (Session["UserID"] != null)
                //{
                    //rollNumber = Session["UserName"].ToString();


                    //}
                    conn = new SqlConnection();
                    ds = new DataSet();
                    conn.ConnectionString = ConfigurationSettings.AppSettings["conn"].ToString();
                    da = new SqlDataAdapter("select firstName,rollno,admissionfeedue,busfeedue,libraryfeedue,tutionfeedue from studentdetails where userid= '" + Session["UserID"] + "'", conn);
                    ds = new DataSet();
                    da.Fill(ds);



                    if (ds.Tables.Count > 0)
                    {
                        if (ds.Tables[0].Rows.Count > 0)
                        {

                            TextBox1.Text = ds.Tables[0].Rows[0][0].ToString();
                            TextBox2.Text = ds.Tables[0].Rows[0][1].ToString();
                            TextBox3.Text = ds.Tables[0].Rows[0][2].ToString();
                            TextBox4.Text = ds.Tables[0].Rows[0][3].ToString();
                            TextBox5.Text = ds.Tables[0].Rows[0][4].ToString();
                            TextBox6.Text = ds.Tables[0].Rows[0][5].ToString();

                        }
                    }
                }
            }
       
    
    protected void  Button1_Click(object sender, EventArgs e)
    {
             Response.Redirect("studentHomePage.aspx");
    }
    protected void  Button2_Click(object sender, EventArgs e)
{
             Response.Redirect("studentHomePage.aspx");
}
}
    
   

