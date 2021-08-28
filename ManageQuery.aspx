<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="ManageQuery.aspx.cs" Inherits="ManageQuery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style12 {
            color: #FF0000;
            text-decoration: underline;
            text-align: center;
        }
        .auto-style15 {
            color: #FF0000;
            text-decoration: underline;
            text-align: left;
            width: 1109px;
        }
        .auto-style16 {
            height: 72px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style3">
        <tr>
            <td class="auto-style15">
                <strong>QUERY OF USER</strong></td>
        </tr>
        <tr>
            <td class="auto-style16">
                <asp:GridView ID="GridView1" runat="server" style="text-align: center">
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

