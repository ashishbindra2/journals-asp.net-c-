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

public partial class journals_images_signup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["journalsString"].ConnectionString);
            con.Open();
            String checkuser = "SELECT count(*) FROM authorTable WHERE author_email='" + txtEmail.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, con);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            if (temp == 1)
            {
                Response.Write("email alrady Register!!!");
            }
            con.Close();
        }
        
    }
    protected void RegisterBtn_Click(object sender, EventArgs e)
    {
        string gen="";
        if (RadioButton1.Checked) {
            gen = "male";
        }
        else if(RadioButton2.Checked){
            gen = "female";
        }
        else{
            gen = "other";
        }
     //   string EncriptPassword = FormsAuthentication.HashPasswordForStoringInConfigFile(txtPassword.Text, "SHA1");
        try
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["journalsString"].ConnectionString);
            con.Open();
            bool exists = false;

            // create a command to check if the username exists
            using (SqlCommand cmd = new SqlCommand("select count(*) from [authorTable] where author_email = @UserName", con))
            {
                cmd.Parameters.AddWithValue("UserName", txtEmail.Text);
                exists = (int)cmd.ExecuteScalar() > 0;
            }

            // if exists, show a message error
            if (exists)
               Label2.Text="email has been using by another user.";
            else
            {
                Guid newGUID = Guid.NewGuid();

                String insertQuery = "INSERT into [authorTable] (aid,author_name,author_lname,author_email,author_mobile,author_password,author_gender,author_designation,author_inst_name,author_city,author_state) values(@ID,@Uname,@Lname,@email,@mobile,@Password,'" + gen + "',@desi,@inst,@city,@state)";
                SqlCommand com = new SqlCommand(insertQuery, con);
                com.Parameters.AddWithValue("@ID", newGUID.ToString());
                com.Parameters.AddWithValue("@Uname", TextBoxName.Text);
                com.Parameters.AddWithValue("@Lname", TextBoxLname.Text);
                com.Parameters.AddWithValue("@email", txtEmail.Text);
                com.Parameters.AddWithValue("@mobile", TextBoxPhone.Text);
                com.Parameters.AddWithValue("@Password", txtPassword.Text);
                com.Parameters.AddWithValue("@desi", TextBoxDesig.Text);
                com.Parameters.AddWithValue("@inst", TextBoxInstName.Text);
                com.Parameters.AddWithValue("@city", TextBox6.Text);
                com.Parameters.AddWithValue("@state", TextBox7.Text);
            
                
                    com.ExecuteNonQuery();

                    Response.Write("susessfull");
                    Response.Redirect("login.aspx");
                
                con.Close();
            }
        }
        catch (Exception ex)
        {
            Response.Write("Error:" + ex.ToString());
        }
    }
}