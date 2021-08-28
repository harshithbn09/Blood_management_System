<%@ Page Title="" Language="C#" MasterPageFile="~/donor.master" AutoEventWireup="true" CodeFile="HomeDS.aspx.cs" Inherits="Homedonor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style12 {
            height: 474px;
        }
        .auto-style13 {
            height: 430px;
        }
        .auto-style14 {
            text-align: center;
        }
        .auto-style15 {
            height: 6px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style6">
        <tr>
            <td class="auto-style12">
                <table class="auto-style6">
                    <tr>
                        <td class="auto-style15">
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Logout" BackColor="Red" ForeColor="White" Width="182px" Height="39px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13">
                            <h2 style="box-sizing: border-box; color: rgb(29, 30, 33); font-family: inherit; font-size: 18px; font-style: normal; font-variant: normal; font-weight: 600; letter-spacing: normal; line-height: 1.1; margin-bottom: 50px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px; text-align: center; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;">Hello
                                <asp:Label ID="Label1" runat="server"></asp:Label>
                            </h2>
                            <h2 style="box-sizing: border-box; color: rgb(29, 30, 33); font-family: inherit; font-size: 18px; font-style: normal; font-variant: normal; font-weight: 600; letter-spacing: normal; line-height: 1.1; margin-bottom: 50px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px; text-align: center; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;">How to donate</h2>
                            <p class="auto-style14" style="padding: 0px; box-sizing: border-box; color: rgb(119, 119, 119); font-family: &amp;quot; Poppins&amp;quot;; font-size: 12px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; line-height: 24px; margin-bottom: 30px; margin-left: 0px; margin-right: 0px; margin-top: 0px; text-align: justify; text-align-last: center; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;">
                                Thank you for your humanitarian gesture to donate blood.</p>
                            <p style="box-sizing: border-box; color: rgb(119, 119, 119); font-family: &amp;quot;Poppins&amp;quot;; font-size: 12px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; line-height: 24px; margin-bottom: 30px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px; text-align: justify; text-align-last: center; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;">
                                You may please visit a Clinical Laboratory center and identify your blood group. The clinical test will cost you just ` 50-60. The result shall be provided within 2 hours time. In case you wish to donate blood now, please visit your nearest Blood Collection Center. <g class="gr_ gr_13 gr-alert gr_gramm gr_inline_cards gr_run_anim Punctuation only-ins replaceWithoutSep" id="13" style="box-sizing: border-box;" data-gr-id="13">Alternatively</g> you may use the Registration Form given here in the website and submit for registration. Recipient, relatives or Hospital authorities will contact you directly.</p>
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

