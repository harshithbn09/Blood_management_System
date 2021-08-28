using System;
using System.Data;
using System.Data.SqlClient;

public partial class Payment_Donor : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("Server=DESKTOP-MNTQP6V\\SQLEXPRESS; Integrated security=True; Initial catalog=bloodmanagement");
        if (Session["un"] == null)
            Response.Redirect("Login.aspx");
        else
        {

            con.Open();
            cmd = new SqlCommand("select Booking_ID,u_id,name,P_value,P_date from Paymentdetail_DB where U_ID ='" + Session["uid"].ToString() + "' ", con);
            dr = cmd.ExecuteReader();



            if (dr.HasRows == true)
            {
                GridView1.DataSource = dr;
                GridView1.DataBind();
            }
            else
                Label1.Text = "No Payment done by you";

            

        }
        con.Close();
    }
}