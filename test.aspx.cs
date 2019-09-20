using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
public partial class test : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["journalsString"].ConnectionString);
        SqlDataAdapter da = new SqlDataAdapter("select * from authorTable",con);
        DataSet ds = new DataSet();
        da.Fill(ds, "authorTable");
        GridView1.DataSource = ds;
        GridView1.DataMember = "authorTable";
    }
}