using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

public partial class mybookings : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("Server=DESKTOP-MNTQP6V\\SQLEXPRESS; Integrated security=True; Initial catalog=bloodmanagement");
        if (Session["un"] == null)
            Response.Redirect("Login.aspx");
        if (Page.IsPostBack == false)
        {
            con.Open();
            cmd = new SqlCommand("select *from Bookingdetail_DB where u_id = '" + Session["uid"].ToString() + "'", con);
            dr = cmd.ExecuteReader();

            if (dr.HasRows == true)
            {
                GridView1.DataSource = dr;
                GridView1.DataBind();
            }
            else
                Label1.Text = "No booking done by you";
        }
        
            else
            Label1.Text = "";
    
    }
    protected void GridView1_RowDeleting(Object sender, GridViewDeleteEventArgs e)
    {
        String vice = ((HiddenField)GridView1.Rows[e.RowIndex].FindControl("HiddenField1")).Value;
        con.Open();
        cmd = new SqlCommand("delete from Bookingdetail_DB where u_id = '" + vice + "' ", con);
        int x = cmd.ExecuteNonQuery();
        if (x > 0)

            Label1.Text = "Booking Cancelled";
        else
            Label1.Text = "";
        con.Close();

    }
}