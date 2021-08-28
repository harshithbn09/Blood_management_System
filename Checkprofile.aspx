<%@ Page Title="" Language="C#" MasterPageFile="~/donor.master" AutoEventWireup="true" CodeFile="Checkprofile.aspx.cs" Inherits="Checkprofile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style12 {
            color: #FF0000;
        }
        .auto-style13 {
            width: 164px;
        }
        .auto-style14 {
            width: 164px;
            height: 26px;
        }
        .auto-style15 {
            height: 26px;
        }
        .auto-style16 {
            width: 164px;
            height: 34px;
        }
        .auto-style17 {
            height: 34px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style6">
        <tr>
            <td class="auto-style12">
                <strong>VIEW PROFILE</strong></td>
        </tr>
        <tr>
            <td>
                <table class="auto-style6">
                    <tr>
                        <td class="auto-style13">First Name </td>
                        <td>
                            <asp:Label ID="Label1" runat="server"></asp:Label>
                            <asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13">Last Name </td>
                        <td>
                            <asp:Label ID="Label2" runat="server"></asp:Label>
                            <asp:TextBox ID="TextBox2" runat="server" Visible="False"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style14">DOB </td>
                        <td class="auto-style15">
                            <asp:Label ID="Label3" runat="server"></asp:Label>
                            <asp:TextBox ID="TextBox3" runat="server" TextMode="Date" Visible="False"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13">Mobile No.</td>
                        <td>
                            <asp:Label ID="Label4" runat="server"></asp:Label>
                            <asp:TextBox ID="TextBox4" runat="server" Visible="False"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13">State </td>
                        <td>
                            <asp:Label ID="Label5" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style14">City</td>
                        <td class="auto-style15">
                            <asp:Label ID="Label6" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13">Email Id</td>
                        <td>
                            <asp:Label ID="Label7" runat="server"></asp:Label>
                            <asp:TextBox ID="TextBox5" runat="server" Visible="False"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16">Address</td>
                        <td class="auto-style17">
                            <asp:Label ID="Label8" runat="server"></asp:Label>
                            <asp:TextBox ID="TextBox6" runat="server" Visible="False"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style14">Gender</td>
                        <td class="auto-style15">
                            <asp:Label ID="Label9" runat="server" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13">&nbsp;</td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="Red" OnClick="LinkButton1_Click">Edit Profile</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button1" runat="server" BackColor="#FF3300" ForeColor="White" OnClick="Button1_Click" Text="SAVE" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button2" runat="server" BackColor="Red" ForeColor="White" OnClick="Button2_Click" Text="Cancel" />
                            <asp:Label ID="Label10" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

