<%@ Page Title="" Language="C#" MasterPageFile="~/donor.master" AutoEventWireup="true" CodeFile="FeedbackDS.aspx.cs" Inherits="Feedbackdonor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        FEEDBACK</p>
    <p>
        &nbsp;</p>
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
        <AlternatingItemTemplate>
            <span style="background-color: #FFFFFF;color: #284775;">u_id:
            <asp:Label ID="u_idLabel" runat="server" Text='<%# Eval("u_id") %>' />
            <br />
            FEED_MESSAGE:
            <asp:Label ID="FEED_MESSAGELabel" runat="server" Text='<%# Eval("FEED_MESSAGE") %>' />
            <br />
<br /></span>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <span style="background-color: #999999;">u_id:
            <asp:TextBox ID="u_idTextBox" runat="server" Text='<%# Bind("u_id") %>' />
            <br />
            FEED_MESSAGE:
            <asp:TextBox ID="FEED_MESSAGETextBox" runat="server" Text='<%# Bind("FEED_MESSAGE") %>' />
            <br />
            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
            <br /><br /></span>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <span>No data was returned.</span>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <span style="">u_id:
            <asp:TextBox ID="u_idTextBox" runat="server" Text='<%# Bind("u_id") %>' />
            <br />FEED_MESSAGE:
            <asp:TextBox ID="FEED_MESSAGETextBox" runat="server" Text='<%# Bind("FEED_MESSAGE") %>' />
            <br />
            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
            <br /><br /></span>
        </InsertItemTemplate>
        <ItemTemplate>
            <span style="background-color: #E0FFFF;color: #333333;">u_id:
            <asp:Label ID="u_idLabel" runat="server" Text='<%# Eval("u_id") %>' />
            <br />
            FEED_MESSAGE:
            <asp:Label ID="FEED_MESSAGELabel" runat="server" Text='<%# Eval("FEED_MESSAGE") %>' />
            <br />
<br /></span>
        </ItemTemplate>
        <LayoutTemplate>
            <div id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                <span runat="server" id="itemPlaceholder" />
            </div>
            <div style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF;">
                <asp:DataPager ID="DataPager1" runat="server">
                    <Fields>
                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                        <asp:NumericPagerField />
                        <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                    </Fields>
                </asp:DataPager>
            </div>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <span style="background-color: #E2DED6;font-weight: bold;color: #333333;">u_id:
            <asp:Label ID="u_idLabel" runat="server" Text='<%# Eval("u_id") %>' />
            <br />
            FEED_MESSAGE:
            <asp:Label ID="FEED_MESSAGELabel" runat="server" Text='<%# Eval("FEED_MESSAGE") %>' />
            <br />
<br /></span>
        </SelectedItemTemplate>
    </asp:ListView>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bloodbankConnectionString %>" SelectCommand="SELECT * FROM [Feedback_DB]"></asp:SqlDataSource>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p>
        <strong>Your Feedback</strong></p>
    <p>
        &nbsp;<asp:TextBox ID="TextBox2" runat="server" Height="99px" TextMode="MultiLine" Width="297px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server"></asp:Label>
&nbsp;</p>
<p>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Field invalid!" SetFocusOnError="True"></asp:RequiredFieldValidator>
</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    </asp:Content>

