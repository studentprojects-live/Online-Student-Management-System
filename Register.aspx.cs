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

public partial class Register : System.Web.UI.Page
{
    SqlConnection con=new SqlConnection(ConfigurationSettings.AppSettings["conn"].ToString());
    SqlDataAdapter sda;
    SqlCommand cmd1,cmd2,cmd3;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            filldropdown();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        // inserting into userdetails table
        cmd1 = new SqlCommand();
        cmd1.CommandText = "insert into userdetails values('"+txtUserName.Text+"','"+txtPassword.Text+"')";
        cmd1.CommandType = CommandType.Text;
        cmd1.Connection = con;
        cmd1.ExecuteNonQuery();
        //end of inserting into userdetails table

        //selecting userid to insert into studentdetails
        cmd2 = new SqlCommand();
        cmd2.CommandText = "select userid from userdetails where username='"+txtUserName.Text+"' and pswd='"+txtPassword.Text+"'";
        cmd2.CommandType = CommandType.Text;
        cmd2.Connection = con;
        object o;
        o=cmd2.ExecuteScalar();
        int userid = Convert.ToInt32(o);
        //end selecting userid to insert into studentdetails


        //inserting into studentdetails table

        cmd3 = new SqlCommand();
        cmd3.CommandText = "insert into studentdetails(firstname,lastname,fathername,phoneno,emailid,rollno,address,userid,branchid,yr) values('" + txtName.Text + "','" + txtLastName.Text + "','" + txtFather.Text + "','" + txtphone.Text + "','" + txtEmail.Text + "','" + txtrollno.Text + "','" + txtAddress.Text + "'," + userid + "," + Convert.ToInt32(ddlBranch.SelectedItem.Value) + ",'" + ddlYear.SelectedItem.Text + "')";
        cmd3.CommandType = CommandType.Text;
        cmd3.Connection = con;
        cmd3.ExecuteNonQuery();
        //end inserting into studentdetails table
        lblStatus.Text ="Registered successfully";
        con.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        txtName.Text = "";
        txtLastName.Text = "";
        txtFather.Text = "";
        txtphone.Text = "";
        txtEmail.Text = "";
        txtrollno.Text = "";
        txtUserName.Text = "";
        txtPassword.Text = "";
        TextBox1.Text = "";
        txtAddress.Text = "";
    }
    public void filldropdown()
    {
        sda = new SqlDataAdapter("select * from branchdetails",con);
        ds = new DataSet();
        sda.Fill(ds);
        ddlBranch.DataSource = ds;
        ddlBranch.DataTextField = "Branch";
        ddlBranch.DataValueField = "BranchId";
        ddlBranch.DataBind();
        ddlBranch.Items.Insert(0,"Select...");


        //GridView1.DataSource = ds;
        //GridView1.DataBind();
    
    }
    protected void txtName_TextChanged(object sender, EventArgs e)
    {

    }
}
