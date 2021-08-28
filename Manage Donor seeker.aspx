<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="Manage Donor seeker.aspx.cs" Inherits="Manage_Donor_seeker" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style12 {
            text-decoration: underline;
            text-align: center;
            color: #FF0000;
        }
        .auto-style13 {
            color: #FF0000;
        }
        .auto-style15 {
            text-decoration: underline;
            text-align: center;
            color: #FF0000;
            width: 1109px;
            height: 14px;
        }
        .auto-style16 {
            color: #FF0000;
            height: 15px;
        }
        .auto-style17 {
            height: 12px;
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
    <table class="auto-style3" style="height: 54px">
        <tr>
            <td class="auto-style15"><strong>MANAGE BLOOD DONORS &amp; SEEKERS</strong></td>
        </tr>
        <tr>
            <td class="auto-style16">DONOR LIST:</td>
        </tr>
    </table>
            </td>
        </tr>
        <tr>
            <td>
    <table class="auto-style3">
        <tr>
            <td>
    <table class="auto-style3">
        <tr>
            <td class="auto-style17"> 
                <asp:GridView ID="GridView1" runat="server" OnRowDeleting="GridView1_RowDeleting">
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button ID="Button1" runat="server" CommandName="Delete" Text="Delete" />
                                <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("u_id")%>'/>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>

                </asp:GridView>
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">SEEKER LIST:</td>
        </tr>
    </table>
            </td>
        </tr>
    </table>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView2" runat="server" OnRowDeleting="GridView2_RowDeleting">
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button ID="Button1" runat="server" CommandName="Delete" Text="Delete" />
                                <asp:HiddenField ID="HiddenField2" runat="server" Value='<%# Eval("u_id")%>'/>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>

                </asp:GridView>
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">
                TOTAL REGISTRATION LIST:</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView3" runat="server" OnRowDeleting="GridView3_RowDeleting">
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button ID="Button1" runat="server" CommandName="Delete" Text="Delete" />
                                <asp:HiddenField ID="HiddenField3" runat="server" Value='<%# Eval("u_id")%>'/>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>

                </asp:GridView>
                <asp:Label ID="Label3" runat="server"></asp:Label>
            </td>
        </tr>
        </table>
</asp:Content>

