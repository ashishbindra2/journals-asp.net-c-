<%@ Page Title="" Language="C#" MasterPageFile="~/JournalsMasterPage.master" AutoEventWireup="true" CodeFile="contactUs.aspx.cs" Inherits="contactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
#main{background:#fff;padding:20px;}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="main">
<p class="p2">
<h1 style="text-align: center;margin:0;">
    
    <span style="color: #648905;">Contact Us<br />
</span></h1>

Mr. Ashok Kumar<br />
Managing Editor,<br />
M/S Vidya Publications<br />
House No. 214<br />
Pine Homes, U.S. Estate, Dhakoli<br />
Zirakpur,Distt. SAS Nagar (Mohali)<br />
Punjab - 160104<br />
India<br />
Pin Code: 160047<br />
Mobile : +919417800927<br />
Email : <a href="mailto:vidyapublicationschd@gmail.com">vidyapublicationschd@gmail.com</a><br />
    <br />

    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>

<br />
        <asp:Button ID="Button4" runat="server" onclick="Button4_Click" 
            Text="get cookie" />
        <br />

Dr. Shalu Goyal<br />
Editor-in-Chief<br />
International Journal of Education<br />
Principal<br />
Asian College of Education, Patiala, Punjab.<br />
India<br />
Email : shalu.pup@gmail.com<br />
</p>
</div>
</asp:Content>

