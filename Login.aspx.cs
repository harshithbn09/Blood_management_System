using System;
using System.Data;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
         
    }
    
  

    protected void Button1_Click1(object sender, EventArgs e)
    {
        con = new SqlConnection("Server=DESKTOP-MNTQP6V\\SQLEXPRESS; Integrated security=True; Initial catalog=bloodmanagement");
        con.Open();
        cmd = new SqlCommand("select name,u_type,userid from Login_DB where userid='" + TextBox1.Text + "'AND l_pswd='" + TextBox2.Text + "'", con);
        dr = cmd.ExecuteReader();
        dr.Read();
        if (dr.HasRows == true)
        {

           
                Session["un"] = dr["name"].ToString();
                Session["uid"] = dr["userid"].ToString();
                Session.Timeout = 10;

            


            string usertype = dr["u_type"].ToString();
            if (usertype == "DS")
                Response.Redirect("Homeds.aspx");
            else if (usertype == "admin")
                Response.Redirect("Helloadmin.aspx");
            else
                Label1.Text = "invalid user id and password";
        }
        else
        {
            Label1.Text = "invalid user id and password";

        }
        con.Close();
    }
}
