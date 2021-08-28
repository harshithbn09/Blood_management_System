<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style17 {
            margin-left: 0px;
        }
        .auto-style19 {
            color: #FFFFFF;
        }
        .auto-style20 {
            background-color: #FF0000;
            width: 475px;
        }
        .auto-style21 {
            color: #FFFFFF;
            font-size: large;
            background-color: #333333;
            width: 475px;
            text-align: center;
        }
        .auto-style23 {
            background-color: #333333;
            width: 475px;
            text-align: center;
        }
        .auto-style28 {
            width: 100%;
        }
        .auto-style29 {
            font-size: x-large;
            background-color: #FF0000;
        }
        .auto-style30 {
            width: 482px;
            text-align: right;
        }
        .auto-style31 {
            width: 846px;
            text-align: left;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style28">
        <tr>
            <td colspan="2" style="font-weight: 700; font-size: x-large; background-color: #FF0000">LOGIN</td>
        </tr>
        <tr>
            <td class="auto-style30">USER ID:</td>
            <td class="auto-style31">
                <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter your E-Mail" style="text-align: left; margin-left: 0px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style30">PASSWORD:</td>
            <td class="auto-style31">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style30"><a href="Forgot password.aspx" style="color: #FFFFFF">forgot password?</a></td>
            <td class="auto-style31">
                <asp:Button ID="Button1" runat="server" BackColor="#006666" Font-Bold="True" Font-Size="Medium" ForeColor="White" Text="SUBMIT" OnClick="Button1_Click1" />
&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" BackColor="#006699" Font-Bold="True" Font-Size="Larger"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style29" colspan="2"><a href="REGISTRATION.aspx" style="color: #FFFFFF">NEW USER !</a></td>
        </tr>
    </table>
</asp:Content>

