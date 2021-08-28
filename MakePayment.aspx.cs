using System;
using System.Data;
using System.Data.SqlClient;
public partial class MakePayment : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;
  
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("Server=DESKTOP-MNTQP6V\\SQLEXPRESS; Integrated security=True; Initial catalog=bloodmanagement");
        if (Session["un"] == null)
            Response.Redirect("Login.aspx");

        if (!IsPostBack)
        {
            con.Open();
            cmd = new SqlCommand("select Booking_ID from Bookingdetail_DB where u_id ='" + Session["uid"].ToString() + "'", con);
            dr = cmd.ExecuteReader();

            dr.Read();
            if (dr.HasRows == true)
            {
                Label2.Text = dr["Booking_ID"].ToString();

            }
            con.Close();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("insert into Paymentdetail_DB(Booking_ID,u_id,name,P_value,P_date,Card_no,Cvv,Name_on_card,c_expiry) values('" +Label2.Text+ "','" + Session["uid"].ToString() + "','" + Session["un"].ToString() + "','" + Session["arv"].ToString() + "','"+DateTime.Now+"','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "')", con);
        int x = cmd.ExecuteNonQuery();
        if (x > 0)
        {
          Response.Redirect("DS Payment.aspx");
        }
        else
            Response.Redirect("HomeDS.aspx");
        con.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("Delete from Bookingdetail_DB where u_id ='" + Session["uid"].ToString() + "'", con);
        int x = cmd.ExecuteNonQuery();

        dr.Read();
        if (x > 0)
            Response.Redirect("HomeDS.aspx");
        else
            Label1.Text = "";
        con.Close();
        
    }
}