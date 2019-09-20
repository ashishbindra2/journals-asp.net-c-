using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class journals_JournalsMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["NEW"] != null) {
            Button1.Visible = false;
            Button2.Visible = false;
            Button3.Visible = true;
            Label1.Visible = true;
            Label1.Text = Session["NEW"].ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("signup.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Session["NEW"] = null;
        Response.Redirect("login.aspx");
    }
}
