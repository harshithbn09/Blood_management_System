using System;
using System.Data;
using System.Data.SqlClient;

public partial class Forgot_password : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
      con = new SqlConnection("Server=DESKTOP-MNTQP6V\\SQLEXPRESS; Integrated security=True; Initial catalog=bloodmanagement");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("update Login_DB set l_pswd = '" + TextBox3.Text + "' where userid = '" + TextBox1.Text + "'", con);
        int x = cmd.ExecuteNonQuery();

        if (x == 0)
        {
            Label1.Text = "INCORRECT USER ID";
        }
        else
        {
            Response.Redirect("Login.aspx");
        }
        con.Close();
        
    }
}