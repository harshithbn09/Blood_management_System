using System;
using System.Data;
using System.Data.SqlClient;


public partial class searchdonor : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("Server=DESKTOP-MNTQP6V\\SQLEXPRESS; Integrated security=True; Initial catalog=bloodmanagement");
       
        if (Session["un"] == null)
            Response.Redirect("Login.aspx");
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        con.Open();
        
            cmd = new SqlCommand("select Name,gender,DOB,B_group,mobile_no,e_mail,state_,city from Donor_DB where B_group='" + DropDownList1.SelectedValue + "'", con);
            dr = cmd.ExecuteReader();
            ;



            if (dr.HasRows == true)
            {
                GridView1.Visible = true;
                GridView1.DataSource = dr;
                GridView1.DataBind();
                Label1.Visible = false;  
            }
            else
            {
                Label1.Visible = true;
                GridView1.Visible = false;
                Label1.Text = "Currently person of this blood group is not available";
            }
        
        con.Close();
    }
}
