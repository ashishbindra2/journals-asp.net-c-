<%@ Page Title="" Language="C#" MasterPageFile="~/JournalsMasterPage.master" AutoEventWireup="true" CodeFile="callForPaper.aspx.cs" Inherits="callForPaper" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
#main{background:#fff;padding:20px;}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="main">
<div style="border:1px solid black;background:#FFFF00;padding:3px;font-size: 1.7vw;font-weight: bold;margin:10px; ">
            <span class="style1"><u>Next Issue due:</u></span> July - December 2017. 
        </div>
          <div style="font-weight:bold;font-size: 1.4vw;margin:10px; "><u> Research Paper Submission:</u><br />
            Authors interested in publishing their research work may send their research papers round the year to:</div>
          <div style="margin:10px; font-size: 1vw; margin-left:20%;line-height: 195%; ">
            Dr. Vishal Goyal - vishal.pup@gmail.com,editor.ijoes@gmail.com<br />
            Dr. Shubhnandan S. Jamwal - jamwalsnj@gmail.com<br />
            Dr.Rajeev R R - rajeev@iiitmk.ac.in<br />
            Dr. Arvind - arvind.cuj@gmail.com<br />
            Dr. Nagenrdra - nagendrakumardj@yahoo.co.in<br />
<br /></div>
          <p style="margin:10px;font-size: 0.8vw;">  Articles will be reviewed blindly and accordingly the authors will be informed. <u><b>There is no publication fees for the publication of your accepted paper in this journal.</b></u></p>


<asp:Panel ID="Panel1" runat="server" Width="200px">
        <asp:AdRotator ID="AdRotator1" runat="server" 
    AdvertisementFile="~/XMLFile.xml" />
    </asp:Panel>
    <br />
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" />
</div>
</asp:Content>

