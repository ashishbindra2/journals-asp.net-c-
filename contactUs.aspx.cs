using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class contactUs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["NEW"] == null) { Response.Redirect("login.aspx"); }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        string str1 = Request.Cookies["myCookie"].Value;
        Label2.Text = str1;
    }
}