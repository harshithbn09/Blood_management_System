<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="Manage blood bank.aspx.cs" Inherits="Manage_blood_bank" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style12 {
            height: 26px;
        }
        .auto-style13 {
            color: #FF0000;
            text-align: left;
        }
        .auto-style14 {
            color: #FF0000;
            height: 26px;
        }
        .auto-style15 {
            height: 20px;
            width: 1109px;
        }
        .auto-style16 {
            height: 7px;
            width: 1109px;
        }
        .auto-style17 {
            color: #FF0000;
            height: 43px;
            width: 345px;
            margin-left: 44px;
            margin-top: 0px;
        }
        .auto-style18 {
            height: 5px;
            width: 1109px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style3">
        <tr>
            <td>
    <table class="auto-style3">
        <tr>
            <td>
    <table class="auto-style3">
        <tr>
            <td>
    <table class="auto-style3">
        <tr>
            <td class="auto-style13">
                <strong>MANAGE BLOOD BANK BRANCH</strong></td>
        </tr>
        <tr>
            <td class="auto-style18">
                 <asp:GridView ID="GridView1" runat="server" OnRowDeleting="GridView1_RowDeleting">
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button ID="Button1" runat="server" CommandName="Delete" Text="Delete Branch Details" />
                                <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("Branch_ID")%>'/>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>

                </asp:GridView>
                 <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
            </td>
        </tr>
        <tr>
            <td class="auto-style17">ADD NEW BRANCH DETAILS:</td>
        </tr>
    </table>
            </td>
        </tr>
        <tr>
            <td class="auto-style16">Branch Name:&nbsp;
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style15">Branch state:&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>Branch City:&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList2" runat="server">
                </asp:DropDownList>
&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button2" runat="server" BackColor="Red" ForeColor="White" OnClick="Button2_Click" Text="Submit" />
                <asp:Label ID="Label2" runat="server"></asp:Label>
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

