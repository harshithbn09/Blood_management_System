<%@ Page Title="" Language="C#" MasterPageFile="~/donor.master" AutoEventWireup="true" CodeFile="MakePayment.aspx.cs" Inherits="MakePayment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style12 {
            text-align: center;
            text-decoration: underline;
            font-size: x-large;
            color: #FF0000;
        }
        .auto-style13 {
            width: 262px;
        }
        .auto-style14 {
            width: 262px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style6">
        <tr>
            <td class="auto-style12"><strong>PAYMENT</strong></td>
        </tr>
        <tr>
            <td>
                <table class="auto-style6">
                    <tr>
                        <td class="auto-style13">CARD Number</td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" MaxLength="16"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13">CVV Number</td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server" MaxLength="3" TextMode="Password"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13">Name on Card</td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13">Expiry date</td>
                        <td>
                            <asp:TextBox ID="TextBox4" runat="server" TextMode="Date"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style14">Your Booking ID is:</td>
                        <td>
                            <asp:Label ID="Label2" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13">&nbsp;</td>
                        <td>
                            <asp:Button ID="Button1" runat="server" BackColor="Red" ForeColor="White" OnClick="Button1_Click" Text="Pay" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button2" runat="server" BackColor="Red" ForeColor="White" Text="Cancel" />
                            <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

