using System;
using System.Data;
using System.Data.SqlClient;


public partial class Checkprofile : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;


    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("Server=DESKTOP-MNTQP6V\\SQLEXPRESS; Integrated security=True; Initial catalog=bloodmanagement");
        if (!IsPostBack)
        {
            con.Open();
            cmd = new SqlCommand("select u_id,f_name,l_name,gender,mobile_no,addrs,e_mail,dob,st,city  from registration_DB where u_id ='" + Session["uid"].ToString() + "'", con);
            dr = cmd.ExecuteReader();

            dr.Read();
            if (dr.HasRows == true)
            {
                Label1.Text = dr["f_name"].ToString();
                Label2.Text = dr["l_name"].ToString();
                Label3.Text = dr["dob"].ToString();
                Label4.Text = dr["mobile_no"].ToString();
                Label5.Text = dr["st"].ToString();
                Label6.Text = dr["city"].ToString();
                Label7.Text = dr["e_mail"].ToString();
                Label8.Text = dr["addrs"].ToString();
                Label8.Text = dr["gender"].ToString();

                TextBox1.Text = dr["f_name"].ToString();
                TextBox2.Text = dr["l_name"].ToString();
                TextBox3.Text = dr["dob"].ToString();
                TextBox4.Text = dr["mobile_no"].ToString();
                TextBox5.Text = dr["e_mail"].ToString();
                TextBox6.Text = dr["addrs"].ToString();
            }
            con.Close();


        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("Update registration_DB set f_name='" + TextBox1.Text + "',l_name='"+ TextBox2.Text +"',mobile_no='" + TextBox4.Text + "',addrs='" + TextBox6.Text + "',e_mail='" + TextBox5.Text + "',dob='" + TextBox3.Text + "' ", con);
        int x = cmd.ExecuteNonQuery();
        if (x > 0)

            Label10.Text = "Profile Updated!";
        else
            Label10.Text = "Updation Fail";
        con.Close();

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Label1.Visible = true;
        Label3.Visible = true;
        Label4.Visible = true;
        Label5.Visible = true;
        Label6.Visible = true;
        Label7.Visible = true;
        Label8.Visible = true;
        Label9.Visible = true;

        TextBox1.Visible = false;
        TextBox2.Visible = false;
        TextBox3.Visible = false;
        TextBox4.Visible = false;
        TextBox5.Visible = false;
        TextBox6.Visible = false;
        Button1.Visible = false;
        Button2.Visible = false;
        LinkButton1.Visible = true; ;

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Label1.Visible = false;
        Label2.Visible = false;
        Label3.Visible = false;
        Label4.Visible = false;
        Label5.Visible = false;
        Label6.Visible = false;
        Label7.Visible = false;
        Label8.Visible = false;
        Label9.Visible = false;


        TextBox1.Visible = true;
        TextBox2.Visible = true;
        TextBox3.Visible = true;
        TextBox4.Visible = true;
        TextBox5.Visible = true;
        TextBox6.Visible = true;
        Button1.Visible = true;
        Button2.Visible = true;
        LinkButton1.Visible = false;

    }
}
