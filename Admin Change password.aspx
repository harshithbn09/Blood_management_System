<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="Admin Change Password.aspx.cs" Inherits="Admin_Change_Password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style12 {
            width: 160px;
            text-decoration: underline;
        }
        .auto-style15 {
            width: 219px;
            text-decoration: underline;
            height: 40px;
        }
        .auto-style16 {
            width: 1010px;
            height: 40px;
        }
        .auto-style17 {
            width: 219px;
            text-decoration: underline;
            height: 38px;
        }
        .auto-style18 {
            width: 1010px;
            height: 38px;
        }
        .auto-style19 {
            width: 219px;
            text-decoration: underline;
            height: 37px;
        }
        .auto-style20 {
            width: 1010px;
            height: 37px;
        }
        .auto-style21 {
            height: 279px;
        }
        .auto-style22 {
            width: 219px;
            text-decoration: underline;
            height: 32px;
        }
        .auto-style23 {
            width: 1010px;
            height: 32px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style3">
        <tr>
            <td class="auto-style21">
    <table class="auto-style6">
        <tr>
            <td class="auto-style15">Old Password:</td>
            <td class="auto-style16">
                <asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style17">New password:</td>
            <td class="auto-style18">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style19">Confirm Password:</td>
            <td class="auto-style20">
                <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="Password not match" SetFocusOnError="True"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style22"></td>
            <td class="auto-style23">
                <asp:Button ID="Button1" runat="server" Text="Change Password" OnClick="Button1_Click" BackColor="Red" ForeColor="White" />
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
    </asp:Content>

