using System;
using System.Data;
using System.Data.SqlClient;

public partial class bookingforappointment : System.Web.UI.Page
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
            cmd = new SqlCommand("select name,dob,gender,mobile_no,e_mail,state_,city,b_group from seeker_DB where u_id ='" + Session["uid"].ToString() + "'", con);
            dr = cmd.ExecuteReader();

            dr.Read();
            if (dr.HasRows == true)
            {
                Label1.Text = dr["name"].ToString();
                Label2.Text = dr["dob"].ToString();
                Label3.Text = dr["gender"].ToString();
                Label4.Text = dr["mobile_no"].ToString();
                Label5.Text = dr["e_mail"].ToString();
                Label6.Text = dr["state_"].ToString();
                Label7.Text = dr["city"].ToString();
                Label8.Text = dr["b_group"].ToString();

            }
            con.Close();
            dr.Close();

            con.Open();
            cmd = new SqlCommand("select Branch_name,Branch_ID from Bloodbank_Detail_DB where B_state='" + Label6.Text + "' and B_city='"+Label7.Text+"'", con);
            dr = cmd.ExecuteReader();

            if (dr.HasRows == true)
            {
                DropDownList1.DataSource = dr;
                DropDownList1.DataValueField = "Branch_ID";
                DropDownList1.DataTextField = "Branch_name";
                DropDownList1.DataBind();

                DropDownList1.Items.Insert(0, "select Nearest branch");


            } con.Close();


        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("insert into Bookingdetail_DB (Branch,Booking_date,u_id,name,dob,gender,mobile_no,e_mail,state_,city,b_group) values('" + DropDownList1.SelectedItem.Text + "','" + TextBox1.Text + "','" + Session["uid"].ToString() + "','" + Label1.Text + "','" + Label2.Text + "','" + Label3.Text + "','" + Label4.Text + "','" + Label5.Text + "','" + Label6.Text + "','" + Label7.Text + "','" + Label8.Text + "')", con);
        int x = cmd.ExecuteNonQuery();
        if (x > 0)
        {
            Label9.Text = "150/-";
            Session["arv"] = Label9.Text;
            Response.Redirect("MakePayment.aspx");
        }
        else
            Response.Redirect("HomeDS.aspx");
        con.Close();

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("HomeDS.aspx");
    }
}