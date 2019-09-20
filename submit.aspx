<%@ Page Title="" Language="C#" MasterPageFile="~/JournalsMasterPage.master" AutoEventWireup="true" CodeFile="submit.aspx.cs" Inherits="submit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 99%;
        }
        .style2
        {
            width: 298px;
            text-align: right;
        }
        .style4
        {
            width: 218px;
        }
    </style>
    <style type="text/css">
#main{background:#fff;padding:20px;}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="main">
    <table class="style1">
        <tr>
            <td class="style2">
                <span style="color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: medium;  display: inline !important; float: none;">
                Select a journals</span></td>
            <td class="style4">
                <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" 
                    AutoPostBack="True" DataSourceID="SqlDataSourcejournal" 
                    DataTextField="journals" DataValueField="jid" Width="200px">
                    <asp:ListItem Value="0">select</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSourcejournal" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:journalsString %>" 
                    SelectCommand="SELECT * FROM [journal]"></asp:SqlDataSource>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="DropDownList1" ErrorMessage="please select the journal"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                
                                <label for="Select_Stream" 
                                    style="margin: 0px 0px 5px; padding: 0px; box-sizing: border-box; display: inline-block; max-width: 100%; font-weight: 700; width: 292px;">
                                Select a Stream</label>
            </td>
            <td class="style4">
                <asp:DropDownList ID="DropDownList2" runat="server" 
                    DataSourceID="SqlDataSourcestream" DataTextField="stram_name" 
                    DataValueField="sid" Width="200px">
                    <asp:ListItem Value="0">select</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSourcestream" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:journalsString %>" 
                    SelectCommand="SELECT * FROM [stream] WHERE ([jid] = @jid)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" DefaultValue="" Name="jid" 
                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="DropDownList2" ErrorMessage="please select the streams"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <label for="File name" 
                    style="margin: 0px 0px 5px; padding: 0px; box-sizing: border-box; display: inline-block; max-width: 100%; font-weight: 700;">
                Paper Name</label></td>
            <td class="style4">
                <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="paper name is required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <label for="File name" 
                    style="margin: 0px 0px 5px; padding: 0px; box-sizing: border-box; display: inline-block; max-width: 100%; font-weight: 700;">
                Author names</label></td>
            <td class="style4">
                <asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="author names is required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <label for="Keyword" 
                    style="margin: 0px 0px 5px; padding: 0px; box-sizing: border-box; display: inline-block; max-width: 100%; font-weight: 700;">
                Enter Keywords</label></td>
            <td class="style4">
                <asp:TextBox ID="TextBox3" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="Keywords is required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <label for="Issue Descriprtion" 
                    style="margin: 0px 0px 5px; padding: 0px; box-sizing: border-box; display: inline-block; max-width: 100%; font-weight: 700;">
                Enter Paper Description</label></td>
            <td class="style4">
                <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" Width="200px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="description is required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <label for="File_uplaod" 
                    style="box-sizing: border-box; display: inline-block; max-width: 100%; font-weight: 700;">
                Select File to upload</label></td>
            <td class="style4">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="200px" />
            </td>
            <td>
                    <asp:Button ID="Button1" runat="server" Text="Upload" onclick="Button1_Click" />   
                        <asp:Label ID="Label2" runat="server" Text="label"></asp:Label>  
                    </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style4">
                <asp:Button ID="Button4" runat="server" Text="Submit" onclick="Button4_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </div>
</asp:Content>

