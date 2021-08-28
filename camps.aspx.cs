using System;
using System.Data;
using System.Data.SqlClient;


public partial class camps : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;


    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("Server=DESKTOP-MNTQP6V\\SQLEXPRESS; Integrated security=True; Initial catalog=bloodmanagement");
        con.Open();
        cmd = new SqlCommand("select Camp_Date,Camp_Venue from Campdetail_DB", con);
        dr = cmd.ExecuteReader();



        if (dr.HasRows == true)
        {
            GridView1.DataSource = dr;
            GridView1.DataBind();
        }
        con.Close();
    }
}