<%@ Page Title="" Language="C#" MasterPageFile="~/donor.master" AutoEventWireup="true" CodeFile="bookingforappointment.aspx.cs" Inherits="bookingforappointment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style12 {
            text-align: center;
            color: #FF0000;
            text-decoration: underline;
            font-size: x-large;
        }
        .auto-style13 {
            text-align: center;
        }
        .auto-style14 {
            width: 226px;
        }
        .auto-style15 {
            width: 226px;
            height: 26px;
            text-align: center;
        }
        .auto-style16 {
            height: 26px;
        }
        .auto-style17 {
            width: 226px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style6">
        <tr>
            <td class="auto-style12"><strong>Booking for appointment</strong></td>
        </tr>
        <tr>
            <td class="auto-style13"><strong>Your request for blood is accepted, our executive will call you and this booking is for instant blood need, select your nearest branch and book appointment, 
                <asp:Label ID="Label9" runat="server"></asp:Label>
&nbsp;fee apply for instant need of blood otherwise click to cancel.</strong></td>
        </tr>
        <tr>
            <td class="auto-style16"></td>
        </tr>
        <tr>
            <td>select nearest branch:
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <table class="auto-style6">
                    <tr>
                        <td class="auto-style14">select date for appointment</td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" TextMode="Date"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style17">Name :</td>
                        <td>
                            <asp:Label ID="Label1" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style15">&nbsp;DOB:</td>
                        <td class="auto-style16">
                            <asp:Label ID="Label2" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style17">Gender:</td>
                        <td>
                            <asp:Label ID="Label3" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style17">Mobile number:</td>
                        <td>
                            <asp:Label ID="Label4" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style17">E-mail:</td>
                        <td>
                            <asp:Label ID="Label5" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style17">State:</td>
                        <td>
                            <asp:Label ID="Label6" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style17">City:</td>
                        <td>
                            <asp:Label ID="Label7" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style15">Blood Group:</td>
                        <td class="auto-style16">
                            <asp:Label ID="Label8" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style14">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style14">&nbsp;</td>
                        <td>
                            <asp:Button ID="Button1" runat="server" BackColor="Red" ForeColor="White" OnClick="Button1_Click" Text="booking for appointment" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button2" runat="server" BackColor="Red" ForeColor="White" Text="Cancel" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style14">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

