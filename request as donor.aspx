<%@ Page Title="" Language="C#" MasterPageFile="~/donor.master" AutoEventWireup="true" CodeFile="request as donor.aspx.cs" Inherits="Request_Blood_Donation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style12 {
            text-align: center;
            color: #FF0000;
            text-decoration: underline;
            width: 1121px;
            font-size: x-large;
        }
        .auto-style13 {
            width: 185px;
        }
        .auto-style14 {
            width: 1121px;
        }
        .auto-style15 {
            text-align: left;
            color: #000000;
            width: 1121px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style6">
        <tr>
            <td class="auto-style12"><strong>REQUEST FOR BLOOD DONATION</strong></td>
        </tr>
        <tr>
            <td class="auto-style15"><strong>Read your information carefully, edit the necessary details like Mobile number and select your blood group , In case you don&#39;t know your blood group then select your option &quot;I don&#39;t Know my Blood group&quot; our blood camp executive will call you.</strong></td>
        </tr>
        <tr>
            <td class="auto-style14">
                <table class="auto-style6">
                    <tr>
                        <td class="auto-style13">Name </td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" Width="194px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13">Date of Birth</td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server" Width="194px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13">Gender</td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server" Width="190px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13">Mobile number</td>
                        <td>
                            <asp:TextBox ID="TextBox4" runat="server" Width="191px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13">Email_id</td>
                        <td>
                            <asp:TextBox ID="TextBox5" runat="server" Width="188px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13">State</td>
                        <td>
                            <asp:Label ID="Label1" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13">City</td>
                        <td>
                            <asp:Label ID="Label2" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13">Blood_Group</td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server" Width="206px">
                                <asp:ListItem>Select Blood Group</asp:ListItem>
                                <asp:ListItem>A+</asp:ListItem>
                                <asp:ListItem>A-</asp:ListItem>
                                <asp:ListItem>B+</asp:ListItem>
                                <asp:ListItem>B-</asp:ListItem>
                                <asp:ListItem>AB+</asp:ListItem>
                                <asp:ListItem>AB-</asp:ListItem>
                                <asp:ListItem>O+</asp:ListItem>
                                <asp:ListItem>O-</asp:ListItem>
                                <asp:ListItem>I don&#39;t Know my Blood group</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13">&nbsp;</td>
                        <td>
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Cancel" />
                            <asp:Label ID="Label3" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

