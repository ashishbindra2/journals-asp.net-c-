using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Configuration;

public partial class submit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["NEW"] == null) { Response.Redirect("login.aspx"); }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["journalsString"].ConnectionString);
            con.Open();
            
            
                Guid newGUID = Guid.NewGuid();

                String insertQuery = "INSERT into [paperSubmition] (paperid,journal,stream,paperName,authorNames,keywords,descriptions) values(@ID,@jid,@sid,@pname,@aname,@keyword,@des)";
                SqlCommand com = new SqlCommand(insertQuery, con);
                com.Parameters.AddWithValue("@ID", newGUID.ToString());
                com.Parameters.AddWithValue("@jid", DropDownList1.SelectedIndex.ToString());
                com.Parameters.AddWithValue("@sid", DropDownList2.SelectedIndex.ToString());
                com.Parameters.AddWithValue("@pname", TextBox1.Text);
                com.Parameters.AddWithValue("@aname", TextBox2.Text);
                com.Parameters.AddWithValue("@keyword", TextBox3.Text);
                com.Parameters.AddWithValue("@des", TextBox4.Text);
       
                com.ExecuteNonQuery();

                Response.Write("susessfull");
                Response.Redirect("display.aspx");

                con.Close();
            
        }
        catch (Exception ex)
        {
            Response.Write("Error:" + ex.ToString());
        }
         
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
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
                        string query = "insert into pdf (pname,ptype,data)" + " values (@Name, @type, @Data)"; //insert query  
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
}