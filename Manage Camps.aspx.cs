using System;
using System.Data;
using System.Data.SqlClient;


public partial class Manage_Camps : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;


    protected void Page_Load(object sender, EventArgs e)
    {
       
        con = new SqlConnection("Server=DESKTOP-MNTQP6V\\SQLEXPRESS; Integrated security=True; Initial catalog=bloodmanagement");
        if (Session["un"] == null)
            Response.Redirect("Login.aspx");
        if(!IsPostBack)
        {
            con.Open();
            cmd = new SqlCommand("select *from Campdetail_DB", con);
            dr = cmd.ExecuteReader();
            


            if (dr.HasRows == true)
            {
                GridView1.DataSource = dr;
                GridView1.DataBind();
            }
            
            dr.Close();
            
            cmd = new SqlCommand("select *from state_DB order by S_name", con);
            dr = cmd.ExecuteReader();

            if (dr.HasRows == true)
            {
                DropDownList1.DataSource = dr;
                DropDownList1.DataValueField = "S_code";
                DropDownList1.DataTextField = "S_name";
                DropDownList1.DataBind();

                DropDownList1.Items.Insert(0, "select State");

            } con.Close();


        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
        con.Open();
        cmd = new SqlCommand("insert into Campdetail_DB(Camp_Date,state_,city,Camp_Venue) values('" + TextBox1.Text + "','" + DropDownList1.SelectedItem.Text + "','" + DropDownList2.SelectedItem.Text + "','" + DropDownList3.SelectedItem.Text + "')", con);
        int x = cmd.ExecuteNonQuery();
        if (x > 0)
        {
            Label1.Text = "Camp Updated!";
            
        }
        else
            Label1.Text = "Not Done!";
        con.Close();

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("select *from city_DB where S_code = '" + DropDownList1.SelectedValue + "' order by C_name", con);
        dr = cmd.ExecuteReader();

        if (dr.HasRows == true)
        {
            DropDownList2.DataSource = dr;
            DropDownList2.DataValueField = "C_code";
            DropDownList2.DataTextField = "C_name";
            DropDownList2.DataBind();

            DropDownList2.Items.Insert(0, "select city");
        }
        con.Close();

    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("select Branch_name,Branch_ID from Bloodbank_Detail_DB where B_state='" + DropDownList1.SelectedItem.Text + "' and B_city='" + DropDownList2.SelectedItem.Text + "'", con);
        dr = cmd.ExecuteReader();

        if (dr.HasRows == true)
        {
            DropDownList3.DataSource = dr;
            DropDownList3.DataValueField = "Branch_ID";
            DropDownList3.DataTextField = "Branch_name";
            DropDownList3.DataBind();

            DropDownList3.Items.Insert(0, "select Venue");


        } con.Close();


    }
}