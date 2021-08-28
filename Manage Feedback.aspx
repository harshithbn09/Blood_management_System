<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="Manage Feedback.aspx.cs" Inherits="Manage_Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style12 {
            text-align: center;
            color: #FF0000;
        }
        .auto-style15 {
            text-align: left;
            color: #FF0000;
            width: 1109px;
            height: 16px;
        }
        .auto-style16 {
            height: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style3">
        <tr>
            <td class="auto-style15"><strong>DONOR &amp; SEEKER FEEDBACKS</strong></td>
        </tr>
        <tr>
            <td class="auto-style16">
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
    </table>
</asp:Content>

