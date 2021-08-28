using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

public partial class Manage_blood_bank : System.Web.UI.Page
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
            cmd = new SqlCommand("select *from Bloodbank_Detail_DB", con);
            dr = cmd.ExecuteReader();
            dr.Read();
            GridView1.DataSource = dr;
            GridView1.DataBind();
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
    protected void GridView1_RowDeleting(Object sender, GridViewDeleteEventArgs e)
    {
        String vice = ((HiddenField)GridView1.Rows[e.RowIndex].FindControl("HiddenField1")).Value;
        con.Open();
        cmd = new SqlCommand("delete from Bloodbank_Detail_DB where Branch_ID = '" + vice + "' ", con);
        int x = cmd.ExecuteNonQuery();
        if (x > 0)

            Label1.Text = "Details Deleted";
        else
            Label1.Text = "";
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
    protected void Button2_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("insert into Bloodbank_Detail_DB (Branch_name,B_state,B_city) values('" + TextBox1.Text + "','" + DropDownList1.SelectedItem.Text + "','" + DropDownList2.SelectedItem.Text + "')", con);
        int x = cmd.ExecuteNonQuery();

        if (x == 0)
            Label2.Text = "details not Submitted";
        else
            Label2.Text = "details Submitted";
        con.Close();
        TextBox1.Text = "";
        
    }
}