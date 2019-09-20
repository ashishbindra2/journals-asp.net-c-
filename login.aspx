<%@ Page Title="" Language="C#" MasterPageFile="JournalsMasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="journals_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
  
body {font-family: Arial, Helvetica, sans-serif;}
form {border: 3px solid #f1f1f1;}

input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}

.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}

img.avatar {
  width: 40%;
  border-radius: 50%;
}

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}
#main{background:#fff;padding:20px}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="main">
<div style="padding-left:30%; padding-right:30%;">
 <div class="imgcontainer">
     
    <img src="images/img_avatar2.png" alt="Avatar" class="avatar"/>
  </div>

  <div class="container">
    <label for="uname"><b>Username</b></label>
   <asp:Textbox runat="server" placeholder="Enter email" name="uname" required 
          ID="txtUname" ></asp:Textbox>

    <label for="psw"><b>Password</b></label>
    <asp:Textbox runat="server" placeholder="Enter Password" name="psw" required 
          ID="txtPass" TextMode="Password" ></asp:Textbox>
        <div class="button">
            <asp:CheckBox ID="CheckBox1" runat="server" Text="Remember me" />
            &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink1" runat="server" 
                NavigateUrl="~/journals/signup.aspx">Register here</asp:HyperLink>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;
      </div>
      <br />
    <asp:Button runat="server" ID="btnLogin" Text="Login" onclick="btnLogin_Click" 
          style="margin-bottom: 0px" />
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" ForeColor="Red" 
                Text=" password or email is invalid" Visible="False"></asp:Label>
  </div>

  </div>
  </div>
</asp:Content>

