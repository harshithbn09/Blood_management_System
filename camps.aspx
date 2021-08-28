<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="camps.aspx.cs" Inherits="camps" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style9 {
            width: 100%;
        }
    p.MsoNormal
	{margin-top:0cm;
	margin-right:0cm;
	margin-bottom:10.0pt;
	margin-left:0cm;
	line-height:115%;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style9">
        <tr>
            <td>
                <table class="auto-style9">
                    <tr>
                        <td>
                            <p align="center" class="MsoNormal" style="text-align:center">
                                <b style="mso-bidi-font-weight:
normal"><u><span style="font-size: 20.0pt; line-height: 115%; color: red; text-align: right;">Requirements for Donating Blood in Camps<o:p></o:p></span></u></b></p>
                            <p class="MsoNormal">
                                Before donating, there are some basic requirements that all donors must meet. Eligible donors will need to:<o:p></o:p></p>
                            <p class="MsoNormal">
                                <o:p>&nbsp;</o:p></p>
                            <p class="MsoNormal">
                                Be at least 17 years old*<o:p></o:p></p>
                            <p class="MsoNormal">
                                Weigh at least 110 pounds<o:p></o:p></p>
                            <p class="MsoNormal">
                                Be in good health generally and feel well on the day of donation<o:p></o:p></p>
                            <p class="MsoNormal">
                                Bring a current photo ID on the day of donation<o:p>.</o:p></p>
                        </td>
                    </tr>
                    <tr>
            <td>
                <strong>LATEST CAMPS</strong>&nbsp;&nbsp;
                <br />
                <asp:GridView ID="GridView1" runat="server">
                </asp:GridView>
            &nbsp;<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx">Request as Blood Donor</asp:HyperLink>
            </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

