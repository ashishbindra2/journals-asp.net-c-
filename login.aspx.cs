using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;
using System.Data;

public partial class journals_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["journalsString"].ConnectionString);
        con.Open();
        String checkuser = "SELECT count(*) FROM authorTable WHERE author_email='" + txtUname.Text + "' AND author_password='" + txtPass.Text + "'";
        SqlCommand com = new SqlCommand(checkuser, con);
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());

        if (temp == 1)
        {

            Session["NEW"] = txtUname.Text;
            Response.Redirect("Default.aspx");
        }
        else {
            Label1.Visible = true;
        }
    }
}