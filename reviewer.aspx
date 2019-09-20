<%@ Page Title="" Language="C#" MasterPageFile="~/JournalsMasterPage.master" AutoEventWireup="true" CodeFile="reviewer.aspx.cs" Inherits="reviewer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
#main{background:#fff;padding:20px;}
p {
    margin: 0 0 20px;
    line-height: 180%;
    text-align: justify;
    font-family: Georgia,"Times New Roman",Times,serif;
    font-size: 15px;
    color: #504849;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="main">
    
        <table cellspacing="0" cellpadding="10" id="content_table" border="0px" ">
            <tr >
                <td >
                <h2 >Reviewers: </h2>
               <p>    
                        Dr. Maninder Singh Sarkaria, Deputy Director, SCERT, Punjab.<br />
                        Dr. Sangeeta Pant, Chitkara University.<br />
                       Dr. Sukhwant Bajwa, Panjab University, Chandigarh.<br />
                       Dr. K. Venkata Ramana, Hyderabad.<br /></p> 

          <p>  We are seeking professionals to join our reveiwers' team. If you are   interested in becoming the reveiwer, please send your CV and a one-page  summary of your specific expertise and interests to Editor-in-Chief,   Dr. Shalu Goyal (Email: shalu.pup@gmail.com). We will review   your information and if appropriate, we will place you on our list of  Reveiwers.                    
</p>
              </td> 
          </tr>
        </table>
     

        <center>

<strong><span style="color: #ff6600;">Reviwer panel:-</span></strong>
  <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="send cookie" />

</center>
 <br />
</div>
</asp:Content>

