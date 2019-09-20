using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class callForPaper : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["NEW"] == null) { Response.Redirect("login.aspx"); }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel1.Visible = !Panel1.Visible;
    }
}