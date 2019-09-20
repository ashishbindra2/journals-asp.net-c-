<%@ Page Title="" Language="C#" MasterPageFile="~/JournalsMasterPage.master" AutoEventWireup="true" CodeFile="test.aspx.cs" Inherits="test" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:FormView ID="FormView1" runat="server">
    </asp:FormView>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        DataKeyNames="aid" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="aid" HeaderText="aid" ReadOnly="True" 
                SortExpression="aid" />
            <asp:BoundField DataField="author_name" HeaderText="author_name" 
                SortExpression="author_name" />
            <asp:BoundField DataField="author_lname" HeaderText="author_lname" 
                SortExpression="author_lname" />
            <asp:BoundField DataField="author_email" HeaderText="author_email" 
                SortExpression="author_email" />
            <asp:BoundField DataField="author_mobile" HeaderText="author_mobile" 
                SortExpression="author_mobile" />
            <asp:BoundField DataField="author_password" HeaderText="author_password" 
                SortExpression="author_password" />
            <asp:BoundField DataField="author_gender" HeaderText="author_gender" 
                SortExpression="author_gender" />
            <asp:BoundField DataField="author_designation" HeaderText="author_designation" 
                SortExpression="author_designation" />
            <asp:BoundField DataField="author_inst_name" HeaderText="author_inst_name" 
                SortExpression="author_inst_name" />
            <asp:BoundField DataField="author_city" HeaderText="author_city" 
                SortExpression="author_city" />
            <asp:BoundField DataField="author_state" HeaderText="author_state" 
                SortExpression="author_state" />
        </Fields>
    </asp:DetailsView>
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
    <asp:DataList ID="DataList1" runat="server">
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:journalsString %>" 
        SelectCommand="SELECT * FROM [authorTable]"></asp:SqlDataSource>
    <asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="Button" />
</asp:Content>

