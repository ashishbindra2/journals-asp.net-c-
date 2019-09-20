<%@ Page Title="" Language="C#" MasterPageFile="JournalsMasterPage.master" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="journals_images_signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
* {
  box-sizing: border-box;
}

/* Add padding to containers */
.container {
  padding: 16px;
  background-color: white;
}
#main{background:#fff;padding:25px}img{max-width:100%}
/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Overwrite default styles of hr */
hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* Set a style for the submit button */
.registerbtn {
  background-color: #4CAF50;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.registerbtn:hover {
  opacity: 1;
}

/* Add a blue text color to links */
a {
  color: dodgerblue;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin {
  background-color: #f1f1f1;
  text-align: center;
}
    .style1
    {
        width: 84%;
       
    }
    .style2
    {
        width: 431px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"><div id="main">
<center>
    <table class="style1">
        <tr>
            <td class="style2">
    <h1 style="width: 405px"><strong>Register</strong></h1>
    <p><strong>Please fill in this form to create an account.</strong></p>
            </td>
            <td>
                <strong></strong>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <strong>Name&nbsp; <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
                    runat="server" ErrorMessage="* Name is required" 
                    ControlToValidate="TextBoxName" ForeColor="Red"></asp:RequiredFieldValidator>
                </strong></td>
            <td>
                <strong>Last Name&nbsp;&nbsp;&nbsp; <asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
                    runat="server" ErrorMessage="* Last Name is  required" 
                    ControlToValidate="TextBoxLname" ForeColor="Red"></asp:RequiredFieldValidator>
                </strong></td>
        </tr>
        <tr>
            <td class="style2">
                <strong>
     <asp:TextBox runat="server" placeholder="Enter Name" name="name" 
                    ID="TextBoxName"></asp:TextBox>

                </strong>
            </td>
            <td>
                <strong>
     <asp:TextBox runat="server" placeholder="Enter Last Name" name="last" 
                    ID="TextBoxLname"></asp:TextBox>

                </strong>
            </td>
        </tr>
        <tr>
            <td class="style2">

    <label for="email"><strong>Email</strong></label><strong>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="* Email is required " ControlToValidate="txtEmail" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ErrorMessage="Invalid Email !" ControlToValidate="txtEmail" 
                    ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </strong>
            </td>
            <td>
                <strong>Mobile Number <asp:RequiredFieldValidator ID="RequiredFieldValidator4" 
                    runat="server" ErrorMessage="* Mobile number empty !" 
                    ControlToValidate="TextBoxPhone" ForeColor="Red"></asp:RequiredFieldValidator>
                </strong></td>
        </tr>
        <tr>
            <td class="style2">
                <strong>
     <asp:TextBox runat="server" placeholder="Enter Email" name="email" ID="txtEmail"></asp:TextBox>

                </strong>
            </td>
            <td>
                <strong>
     <asp:TextBox runat="server" placeholder="Enter mobile number" name="mobile" 
                    ID="TextBoxPhone"></asp:TextBox>

                </strong>
            </td>
        </tr>
        <tr>
            <td class="style2">

    <label for="psw"><strong>Password</strong></label><strong>&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ErrorMessage="* Password must not be empty" 
                    ControlToValidate="txtPassword" ForeColor="Red"></asp:RequiredFieldValidator>
                </strong>
            </td>
            <td>

    <label for="psw-repeat"><strong>Repeat Password</strong></label><strong>&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ErrorMessage="* repass is required" ControlToValidate="txtPassword" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ErrorMessage="CompareValidator" ControlToCompare="txtPassword" 
                    ControlToValidate="txtRpass" ForeColor="Red"></asp:CompareValidator>
                </strong>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <strong>
    <asp:TextBox runat="server" placeholder="Enter Password" name="psw"  
                    ID="txtPassword" TextMode="Password"></asp:TextBox>

                </strong>
            </td>
            <td>
                <strong>
    <asp:TextBox runat="server" placeholder="Repeat Password" name="psw-repeat" 
                    ID="txtRpass" TextMode="Password"></asp:TextBox>
                </strong>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <strong>Gender&nbsp;
                </strong></td>
            <td>
                <strong>Designation&nbsp; <asp:RequiredFieldValidator ID="RequiredFieldValidator8" 
                    runat="server" ErrorMessage="* empty field" 
                    ControlToValidate="TextBoxDesig" ForeColor="Red"></asp:RequiredFieldValidator>
                </strong></td>
        </tr>
        <tr>
            <td class="style2">
                <asp:RadioButton ID="RadioButton1" runat="server" GroupName="sex" Text="Male" />
                <asp:RadioButton ID="RadioButton2" runat="server" GroupName="sex" 
                    Text="Female" />
                <asp:RadioButton ID="RadioButton3" runat="server" GroupName="sex" 
                    Text="others" />
            </td>
            <td>
                <strong>
     <asp:TextBox runat="server" placeholder="Enter Designation" name="desi" 
                    ID="TextBoxDesig"></asp:TextBox>

                </strong>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <strong>Institude Name <asp:RequiredFieldValidator ID="RequiredFieldValidator9" 
                    runat="server" ErrorMessage="* empty field" 
                    ControlToValidate="TextBoxInstName" ForeColor="Red"></asp:RequiredFieldValidator>
                </strong></td>
            <td>
                <strong>City&nbsp; 
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ErrorMessage="* empty field" ControlToValidate="TextBox6" ForeColor="Red"></asp:RequiredFieldValidator>
                </strong>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <strong>
     <asp:TextBox runat="server" placeholder="Enter institude name" name="inst"  
                    ID="TextBoxInstName"></asp:TextBox>

                </strong>
            </td>
            <td>
                <strong>
     <asp:TextBox runat="server" placeholder="Enter City" name="City"  ID="TextBox6"></asp:TextBox>

                </strong>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <strong>State&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                    ControlToValidate="TextBox7" ErrorMessage="* Empty!" ForeColor="Red"></asp:RequiredFieldValidator>
                </strong></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <strong>
     <asp:TextBox runat="server" placeholder="Enter state" name="state"  ID="TextBox7"></asp:TextBox>

                </strong>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
   
    <p>By creating an account you agree to our r  <a href="#">Terms & Privacy</a>.</p>

            </td>
            <td>

    <asp:Button runat="server" class="registerbtn" ID="RegisterBtn" 
        Text="Register " onclick="RegisterBtn_Click" />
            </td>
        </tr>
    </table>

<div class="container">
   
  </div>
  
  <div class="container signin">
    <p>Already have an account? <a href="login.aspx">Sign in</a>.</p>
  </div></center></div>
</asp:Content>

