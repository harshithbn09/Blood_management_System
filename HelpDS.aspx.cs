using System;
using System.Data;
using System.Data.SqlClient;


public partial class Help_donor : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["un"] == null)
            Response.Redirect("Login.aspx");
        con = new SqlConnection("Server=DESKTOP-MNTQP6V\\SQLEXPRESS; Integrated security=True; Initial catalog=bloodmanagement");
    
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("insert into query_DB (u_id,Q_message) values('" + Session["uid"].ToString() + "','" + TextBox1.Text + "')", con);
        int x = cmd.ExecuteNonQuery();

        if (x == 0)
            Label1.Text = "Query not Submitted";
        else
            Label1.Text = "Query Submitted";
        con.Close();
        TextBox1.Text = "";
        TextBox1.Focus();
        
    }
}