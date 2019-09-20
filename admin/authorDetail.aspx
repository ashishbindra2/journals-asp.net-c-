<%@ Page Title="" Language="C#" MasterPageFile="JournalsMasterPage.master" AutoEventWireup="true" CodeFile="authorDetail.aspx.cs" Inherits="journals_admin_authorDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css"> #main{background:#fff;padding:20px;}</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="main">
    <p>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="author_name" HeaderText="author_name" 
                SortExpression="author_name" />
            <asp:BoundField DataField="author_lname" HeaderText="author_lname" 
                SortExpression="author_lname" />
            <asp:BoundField DataField="author_email" HeaderText="author_email" 
                SortExpression="author_email" />
            <asp:BoundField DataField="author_gender" HeaderText="author_gender" 
                SortExpression="author_gender" />
            <asp:BoundField DataField="author_designation" HeaderText="author_designation" 
                SortExpression="author_designation" />
            <asp:BoundField DataField="author_state" HeaderText="author_state" 
                SortExpression="author_state" />
            <asp:BoundField DataField="author_city" HeaderText="author_city" 
                SortExpression="author_city" />
            <asp:BoundField DataField="author_inst_name" HeaderText="author_inst_name" 
                SortExpression="author_inst_name" />
            <asp:BoundField DataField="author_mobile" HeaderText="author_mobile" 
                SortExpression="author_mobile" />
            <asp:BoundField DataField="author_password" HeaderText="author_password" 
                SortExpression="author_password" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:journalsString %>" 
        SelectCommand="SELECT [author_name], [author_lname], [author_email], [author_gender], [author_designation], [author_state], [author_city], [author_inst_name], [author_mobile], [author_password] FROM [authorTable]">
    </asp:SqlDataSource>
</p>
<p>
</p>
</div>
</asp:Content>

