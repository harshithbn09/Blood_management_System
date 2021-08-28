<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="Manage Camps.aspx.cs" Inherits="Manage_Camps" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style12 {
            color: #FF0000;
            text-align: center;
        }
        .auto-style15 {
            color: #FF0000;
            text-align: center;
            width: 1109px;
            height: 45px;
        }
        .auto-style16 {
            height: 17px;
        }
        .auto-style17 {
            height: 167px;
        }
        .auto-style18 {
            color: #FF0000;
            height: 38px;
        }
        .auto-style19 {
            width: 196px;
        }
        .auto-style20 {
            width: 196px;
            height: 29px;
        }
        .auto-style21 {
            height: 29px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style3">
        <tr>
            <td class="auto-style15">
                <strong>MANAGE BLOOD CAMPS</strong></td>
        </tr>
        <tr>
            <td class="auto-style17">
                <asp:GridView ID="GridView1" runat="server">
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td class="auto-style16">
                <table class="auto-style3">
                    <tr>
                        <td class="auto-style18" colspan="2"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            CREATE NEW CAMP FOR BLOOD DONATION</strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style19">select State for Camps:</td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="129px">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style19">Select City for Camps:</td>
                        <td>
                            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" Width="127px">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style20">Select Branch:</td>
                        <td class="auto-style21">
                            <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" Width="157px">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style19">camp Date &amp; Time :&nbsp;</td>
                        <td>
                <asp:TextBox ID="TextBox1" runat="server" TextMode="Date"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style19">&nbsp;</td>
                        <td>
                <asp:Button ID="Button1" runat="server" BackColor="Red" ForeColor="White" OnClick="Button1_Click" Text="UPDATE" Width="160px" />
                <asp:Label ID="Label1" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        </table>
</asp:Content>

