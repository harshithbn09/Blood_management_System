using System;
using System.Data;
using System.Data.SqlClient;

public partial class ManageQuery : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["un"] == null)
            Response.Redirect("Login.aspx");
        else
        {
            con = new SqlConnection("Server=DESKTOP-MNTQP6V\\SQLEXPRESS; Integrated security=True; Initial catalog=bloodmanagement");
            con.Open();
            cmd = new SqlCommand("select *from query_DB", con);
            dr = cmd.ExecuteReader();



            if (dr.HasRows == true)
            {
                GridView1.DataSource = dr;
                GridView1.DataBind();
            }
            con.Close();

        }
    }
}