using System;
using System.Data;
using System.Data.SqlClient;

public partial class REGISTRATION : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("Server=DESKTOP-MNTQP6V\\SQLEXPRESS; Integrated security=True; Initial catalog=bloodmanagement");
        if (IsPostBack == false)
        { 
        con.Open();
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
   
   
    protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
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
    protected void Button1_Click1(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("details", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@f_name", TextBox11.Text);
        cmd.Parameters.Add("@l_name", TextBox12.Text);
        cmd.Parameters.Add("@gender", RadioButtonList1.SelectedValue);
        cmd.Parameters.Add("@st", DropDownList1.SelectedItem.Text);
        cmd.Parameters.Add("@city", DropDownList2.SelectedItem.Text);
        cmd.Parameters.Add("@addrs", TextBox13.Text);
        cmd.Parameters.Add("@mobile_no", TextBox14.Text);
        cmd.Parameters.Add("@e_mail", TextBox15.Text);
        cmd.Parameters.Add("@pswd", TextBox17.Text);
        cmd.Parameters.Add("@dob", TextBox16.Text);

        int x = cmd.ExecuteNonQuery();
        if (x > 0)
        {
            Label1.Text = "Done!";
            Response.Redirect("login.aspx");
        }
        else
            Label1.Text = "Not Done!";
        con.Close();


    }
}