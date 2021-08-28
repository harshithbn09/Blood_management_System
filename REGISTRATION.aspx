<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="REGISTRATION.aspx.cs" Inherits="REGISTRATION" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style16 {
            color: #FFFFFF;
            font-size: large;
            background-color: #333333;
            width: 258px;
        }
        .auto-style17 {
            height: 47px;
            color: #FFFFFF;
            font-size: large;
            background-color: #FF0000;
        }
        .auto-style19 {
            color: #FFFFFF;
            font-size: large;
            background-color: #333333;
            height: 33px;
            width: 258px;
        }
        .auto-style20 {
            background-color: #333333;
            height: 33px;
        }
        .auto-style21 {
            font-size: large;
            color: #FFFFFF;
        }
        .auto-style48 {
            width: 100%;
            height: 774px;
        }
        .auto-style49 {
            width: 52%;
            height: 612px;
        }
        .auto-style50 {
            text-align: center;
            background-color: #FF0000;
        }
        .auto-style51 {
            width: 496px;
        }
        .auto-style52 {}
        .auto-style53 {
            width: 496px;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style48">
        <tr>
            <td style="background-color: #FFFFFF">
                <table align="center" class="auto-style49" style="background-color: #000000">
                    <tr>
                        <td class="auto-style50" colspan="2"><strong>SIGN UP</strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style51">First name:</td>
                        <td>
                            <asp:TextBox ID="TextBox11" runat="server" Width="135px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox11" ErrorMessage="PLEASE ENTER THE DATA" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style51">Last name:</td>
                        <td>
                            <asp:TextBox ID="TextBox12" runat="server" Width="139px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox12" ErrorMessage="PLEASE ENTER THE DATA" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style51">Gender:</td>
                        <td>
                            <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" style="text-align: left; margin-left: 0px" Width="190px">
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:RadioButtonList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                    </tr>
                    <tr>
                        <td class="auto-style51">State:</td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="u_id" DataValueField="u_id">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bloodmanagementConnectionString %>" SelectCommand="SELECT * FROM [registration_DB]"></asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style51">City:</td>
                        <td>
                            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="u_id" DataValueField="u_id">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style51">Address:</td>
                        <td>
                            <asp:TextBox ID="TextBox13" runat="server" TextMode="MultiLine" Width="133px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox13" ErrorMessage="PLEASE ENTER THE DATA" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style51">Mobile number:</td>
                        <td>
                            <asp:TextBox ID="TextBox14" runat="server" Width="137px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox14" ErrorMessage="PLEASE ENTER THE DATA" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style51">E-Mail:</td>
                        <td>
                            <asp:TextBox ID="TextBox15" runat="server" Width="128px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox15" ErrorMessage="PLEASE ENTER THE DATA" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style51">Date Of Birth:</td>
                        <td>
                            <asp:TextBox ID="TextBox16" runat="server" TextMode="Date"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style51">Password:</td>
                        <td>
                            <asp:TextBox ID="TextBox17" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style51">Confirm Password:</td>
                        <td>
                            <asp:TextBox ID="TextBox18" runat="server" TextMode="Password" Width="118px"></asp:TextBox>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox17" ControlToValidate="TextBox18" ErrorMessage="PASSWORD NOT MATCHED!" SetFocusOnError="True"></asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style53">
                            <asp:Button ID="Button1" runat="server" BackColor="Red" ForeColor="White" OnClick="Button1_Click1" style="text-align: left" Text="Submit " />
                        </td>
                        <td class="auto-style52">
                            <asp:Label ID="Label1" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="background-color: #CC0000">&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

