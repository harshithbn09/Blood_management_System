using System;
using System.Data;
using System.Data.SqlClient;


public partial class Feedbackdonor : System.Web.UI.Page
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
        cmd = new SqlCommand("insert into Feedback_DB (u_id,FEED_MESSAGE) values('" +Session["uid"].ToString()+ "','" + TextBox2.Text + "')", con);
        int x = cmd.ExecuteNonQuery();

        if(x == 0)
        Label1.Text = "Feedback not Submitted";
            else
            Label1.Text = "Feedback Submitted";
        con.Close();
        TextBox2.Text = "";
        TextBox2.Focus();
        
        }
   
}
