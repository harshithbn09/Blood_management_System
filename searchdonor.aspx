<%@ Page Title="" Language="C#" MasterPageFile="~/donor.master" AutoEventWireup="true" CodeFile="searchdonor.aspx.cs" Inherits="searchdonor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style12 {
        text-align: left;
        color: #FF0000;
        text-decoration: underline;
            font-size: large;
        }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style6">
    <tr>
        <td>&nbsp;<table class="auto-style6">
            <tr>
                <td class="auto-style12"><strong>Blood Donor List</strong></td>
            </tr>
            <tr>
                <td>
                    select Blood Group:&nbsp;
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="190px">
                        <asp:ListItem>Select Blood Group</asp:ListItem>
                        <asp:ListItem>A+</asp:ListItem>
                        <asp:ListItem>A-</asp:ListItem>
                        <asp:ListItem>B+</asp:ListItem>
                        <asp:ListItem>B-</asp:ListItem>
                        <asp:ListItem>AB+</asp:ListItem>
                        <asp:ListItem>AB-</asp:ListItem>
                        <asp:ListItem>O+</asp:ListItem>
                        <asp:ListItem>O-</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>
            </table>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
                    <asp:GridView ID="GridView1" runat="server">
                    </asp:GridView>
                </td>
    </tr>
</table>
</asp:Content>

