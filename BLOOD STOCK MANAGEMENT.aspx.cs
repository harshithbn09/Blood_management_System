using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls;   

public partial class BLOOD_STOCK_MANAGEMENT : System.Web.UI.Page
{
    SqlConnection con;
    SqlDataAdapter adapt;
    DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("Server=DESKTOP-MNTQP6V\\SQLEXPRESS; Integrated security=True; Initial catalog=bloodmanagement");

        if (Session["un"] == null)
            Response.Redirect("Login.aspx");
        
        if (!IsPostBack)
        {
            ShowData();
        }
    }
    protected void ShowData()
    {
        dt = new DataTable();
        con.Open();
        adapt = new SqlDataAdapter("Select  ID,blood_group,Blood_amount from bloodstock_DB", con);
        adapt.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        con.Close();
    }
    protected void GridView1_RowEditing(object sender, System.Web.UI.WebControls.GridViewEditEventArgs e)
    {    
        GridView1.EditIndex = e.NewEditIndex;
        ShowData();
    }
    protected void GridView1_RowUpdating(object sender, System.Web.UI.WebControls.GridViewUpdateEventArgs e)
    {  
        Label id = GridView1.Rows[e.RowIndex].FindControl("lbl_ID") as Label;
        Label blood_group = GridView1.Rows[e.RowIndex].FindControl("lbl_blood_group") as Label;
        TextBox Blood_amount = GridView1.Rows[e.RowIndex].FindControl("txt_Blood_amount") as TextBox;
        con.Open();
        
        SqlCommand cmd = new SqlCommand("Update bloodstock_DB set Blood_amount ='" + Blood_amount.Text + "' where ID=" + Convert.ToInt32(id.Text), con);
        cmd.ExecuteNonQuery();
        con.Close();
        GridView1.EditIndex = -1;
        ShowData();
    }
    protected void GridView1_RowCancelingEdit(object sender, System.Web.UI.WebControls.GridViewCancelEditEventArgs e)
    { 
        GridView1.EditIndex = -1;
        ShowData();
    }
}