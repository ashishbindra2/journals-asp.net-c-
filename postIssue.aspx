﻿<%@ Page Title="" Language="C#" MasterPageFile="~/JournalsMasterPage.master" AutoEventWireup="true" CodeFile="postIssue.aspx.cs" Inherits="postIssue" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
    
    <asp:Timer ID="Timer1" runat="server" Interval="1000" ontick="Timer1_Tick">
    </asp:Timer>
    <asp:Label ID="Label1" runat="server" ></asp:Label>
        <br />
        <br />
        <br />
    </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

