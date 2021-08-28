using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

public partial class Manage_Donor_seeker : System.Web.UI.Page
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
            cmd = new SqlCommand("select *from Donor_DB", con);
            dr = cmd.ExecuteReader();

            GridView1.DataSource = dr;
            GridView1.DataBind();
            dr.Close();
           
            cmd = new SqlCommand("select *from seeker_DB", con);
            dr = cmd.ExecuteReader();

            GridView2.DataSource = dr;
            GridView2.DataBind();
            dr.Close();

            cmd = new SqlCommand("select *from registration_DB", con);
            dr = cmd.ExecuteReader();

            GridView3.DataSource = dr;
            GridView3.DataBind();
            dr.Close();

            con.Close();

        }
       

    }
    protected void GridView1_RowDeleting(Object sender, GridViewDeleteEventArgs e)
    {
        String ar = ((HiddenField)GridView1.Rows[e.RowIndex].FindControl("HiddenField1")).Value;
        con.Open();
        cmd = new SqlCommand("delete from Donor_DB where u_id = '" + ar + "' ", con);
        int x = cmd.ExecuteNonQuery();
        if (x > 0)

            Label1.Text = "Row Deleted";
        else
            Label1.Text = "";
        con.Close();
    }
    protected void GridView2_RowDeleting(Object sender, GridViewDeleteEventArgs e)
    {
        String vice = ((HiddenField)GridView2.Rows[e.RowIndex].FindControl("HiddenField2")).Value;
        con.Open();
        cmd = new SqlCommand("delete from seeker_DB where u_id = '" + vice + "' ", con);
        int x = cmd.ExecuteNonQuery();
        if (x > 0)

            Label2.Text = "Row Deleted";
        else
            Label2.Text = "";
        con.Close();
    }
    protected void GridView3_RowDeleting(Object sender, GridViewDeleteEventArgs e)
    {
        String vi = ((HiddenField)GridView3.Rows[e.RowIndex].FindControl("HiddenField3")).Value;
        con.Open();
        cmd = new SqlCommand("delete from registration_DB where u_id = '" + vi + "' ", con);
        int x = cmd.ExecuteNonQuery();
        if (x > 0)

            Label3.Text = "Row Deleted";
        else
            Label3.Text = "";
        con.Close();
    }
}