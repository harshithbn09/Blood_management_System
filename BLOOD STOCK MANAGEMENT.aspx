<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="BLOOD STOCK MANAGEMENT.aspx.cs" Inherits="BLOOD_STOCK_MANAGEMENT" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="6" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">   
            <Columns>   
                <asp:TemplateField>   
                    <ItemTemplate>   
                        <asp:Button ID="btn_Edit" runat="server" Text="Edit" CommandName="Edit" />   
                    </ItemTemplate>   
                    <EditItemTemplate>   
                        <asp:Button ID="btn_Update" runat="server" Text="Update" CommandName="Update"/>   
                        <asp:Button ID="btn_Cancel" runat="server" Text="Cancel" CommandName="Cancel"/>   
                    </EditItemTemplate>   
                </asp:TemplateField>   
                <asp:TemplateField HeaderText="ID">   
                    <ItemTemplate>   
                        <asp:Label ID="lbl_ID" runat="server" Text='<%#Eval("ID") %>'></asp:Label>   
                    </ItemTemplate>   
                </asp:TemplateField>   
                <asp:TemplateField HeaderText="blood_group">   
                    <ItemTemplate>   
                        <asp:Label ID="lbl_blood_group" runat="server" Text='<%#Eval("blood_group") %>'></asp:Label>   
                    </ItemTemplate>   
                      
                </asp:TemplateField>   
                <asp:TemplateField HeaderText="Blood_amount(mL)">   
                    <ItemTemplate>   
                        <asp:Label ID="lbl_Blood_amount" runat="server" Text='<%#Eval("Blood_amount") %>'></asp:Label>   
                    </ItemTemplate>   
                    <EditItemTemplate>   
                        <asp:TextBox ID="txt_Blood_amount" runat="server" Text='<%#Eval("Blood_amount") %>'></asp:TextBox>   
                    </EditItemTemplate>   
                </asp:TemplateField>   
            </Columns>   
            <HeaderStyle BackColor="RED" ForeColor="#ffffff"/>   
        </asp:GridView>
</asp:Content>

