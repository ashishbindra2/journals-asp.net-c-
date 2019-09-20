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
using System.IO;
using System.Text;
using System.Threading.Tasks;

public partial class viewpdf : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["NEW"] == null) { Response.Redirect("login.aspx"); }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string a = Session["NEW"].ToString();
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["journalsString"].ConnectionString);
        con.Open();
        Label2.Visible = true;
        string filePath = FileUpload1.PostedFile.FileName; // getting the file path of uploaded file  
        string filename1 = Path.GetFileName(filePath); // getting the file name of uploaded file  
        string ext = Path.GetExtension(filename1); // getting the file extension of uploaded file  
        string type = String.Empty;
        if (!FileUpload1.HasFile)
        {
            Label2.Text = "Please Select File"; //if file uploader has no file selected  
        }
        else
            if (FileUpload1.HasFile)
            {
                try
                {
                    switch (ext) // this switch code validate the files which allow to upload only PDF file   
                    {
                        case ".pdf":
                            type = "application/pdf";
                            break;
                    }
                    if (type != String.Empty)
                    {
                        
                        Stream fs = FileUpload1.PostedFile.InputStream;
                        BinaryReader br = new BinaryReader(fs); //reads the binary files  
                        Byte[] bytes = br.ReadBytes((Int32)fs.Length); //counting the file length into bytes  
                      string  query = "insert into pdf (pname,ptype,data,author)" + " values (@Name, @type, @Data,'"+a+"')"; //insert query  
                        SqlCommand com = new SqlCommand(query, con);
                        com.Parameters.Add("@Name", SqlDbType.VarChar).Value = filename1;
                        com.Parameters.Add("@type", SqlDbType.VarChar).Value = type;
                        com.Parameters.Add("@Data", SqlDbType.Binary).Value = bytes;
                        com.ExecuteNonQuery();
                        Label2.ForeColor = System.Drawing.Color.Green;
                        Label2.Text = "File Uploaded Successfully";
                    }
                    else
                    {
                        Label2.ForeColor = System.Drawing.Color.Red;
                        Label2.Text = "Select Only PDF Files "; // if file is other than speified extension   
                    }
                }
                catch (Exception ex)
                {
                    Label2.Text = "Error: " + ex.Message.ToString();
                } con.Close();
            }  
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["journalsString"].ConnectionString);
        con.Open();
       string query = "Select *from pdf";
        SqlDataAdapter da = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        con.Close(); 
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["journalsString"].ConnectionString);
        con.Open();
        SqlCommand com = new SqlCommand("select pname,ptype,data from pdf where pid=@id", con);
        com.Parameters.AddWithValue("pid", GridView1.SelectedRow.Cells[1].Text);
        SqlDataReader dr = com.ExecuteReader();
        if (dr.Read())
        {
            Response.Clear();
            Response.Buffer = true;
            Response.ContentType = dr["ptype"].ToString();
            Response.AddHeader("content-disposition", "attachment;filename=" + dr["pname"].ToString()); // to open file prompt Box open or Save file  
            Response.Charset = "";
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.BinaryWrite((byte[])dr["data"]);
            Response.End();
        }
    }
}