using System;
using System.Data;
using System.Data.SqlClient;

public partial class change_password : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
  
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["un"] == null)
            Response.Redirect("Login.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con = new SqlConnection("Server=DESKTOP-MNTQP6V\\SQLEXPRESS; Integrated security=True; Initial catalog=bloodmanagement");
        con.Open();
        cmd = new SqlCommand("update Login_DB set l_pswd = '" + TextBox3.Text + "' where l_pswd = '" + TextBox1.Text + "'", con);
        int x = cmd.ExecuteNonQuery();
        
        if (x == 0)
        {
            Label1.Text = "INCORRECT OLD PASSWORD";
        }
            else
        {
            Label1.Text = "Password Changed";
        }
        con.Close();
        TextBox3.Text = "";
        TextBox2.Text = "";
        TextBox1.Focus();
    }
}