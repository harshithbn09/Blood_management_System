using System;
using System.Data;
using System.Data.SqlClient;

public partial class Request_Blood_Donation : System.Web.UI.Page
{

    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("Server=DESKTOP-MNTQP6V\\SQLEXPRESS; Integrated security=True; Initial catalog=bloodmanagement");
       
        if (Session["un"] == null)
            Response.Redirect("Login.aspx");
 
        if (!IsPostBack)
        {
            con.Open();
            cmd = new SqlCommand("select f_name,gender,mobile_no,e_mail,dob,st,city  from registration_DB where u_id ='" + Session["uid"].ToString() + "'", con);
            dr = cmd.ExecuteReader();

            dr.Read();
            if (dr.HasRows == true)
            {
                TextBox1.Text = dr["f_name"].ToString();
                TextBox2.Text = dr["dob"].ToString();
                TextBox3.Text = dr["gender"].ToString();
                TextBox4.Text = dr["mobile_no"].ToString();
                TextBox5.Text = dr["e_mail"].ToString();
                Label1.Text = dr["st"].ToString();
                Label2.Text = dr["city"].ToString();
 
            }
            con.Close();


        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("insert into Donor_DB (u_id,Name,DOB,gender,mobile_no,e_mail,state_,city,B_group) values('" + Session["uid"].ToString() + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + Label1.Text + "','" + Label2.Text + "','"+DropDownList1.SelectedValue+"')", con);
        int x = cmd.ExecuteNonQuery();
        if (x > 0)
        {
            Label3.Text = "Your request for blood donation is accepted";
             Response.Redirect("searchdonor.aspx");
        }
        else

            Label3.Text = "not submitted";
       
        con.Close();

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("HomeDS.aspx", true);
    }
}
