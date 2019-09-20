<%@ Page Title="" Language="C#" MasterPageFile="~/JournalsMasterPage.master" AutoEventWireup="true" CodeFile="display.aspx.cs" Inherits="display" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
#main{background:#fff;padding:20px;}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="main">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
    CellPadding="2" DataSourceID="SqlDataSource1" ForeColor="Black" 
    GridLines="None">
    <AlternatingRowStyle BackColor="PaleGoldenrod" />
    <Columns>
        <asp:BoundField DataField="journal" HeaderText="journal" 
            SortExpression="journal" />
        <asp:BoundField DataField="stream" HeaderText="stream" 
            SortExpression="stream" />
        <asp:BoundField DataField="paperName" HeaderText="paperName" 
            SortExpression="paperName" />
        <asp:BoundField DataField="authorNames" HeaderText="authorNames" 
            SortExpression="authorNames" />
        <asp:BoundField DataField="keywords" HeaderText="keywords" 
            SortExpression="keywords" />
        <asp:BoundField DataField="descriptions" HeaderText="descriptions" 
            SortExpression="descriptions" />
    </Columns>
    <FooterStyle BackColor="Tan" />
    <HeaderStyle BackColor="Tan" Font-Bold="True" />
    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
        HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
    <SortedAscendingCellStyle BackColor="#FAFAE7" />
    <SortedAscendingHeaderStyle BackColor="#DAC09E" />
    <SortedDescendingCellStyle BackColor="#E1DB9C" />
    <SortedDescendingHeaderStyle BackColor="#C2A47B" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:journalsString %>" 
    SelectCommand="SELECT [journal], [stream], [paperName], [authorNames], [keywords], [descriptions] FROM [paperSubmition]">
</asp:SqlDataSource>
</div>
</asp:Content>

