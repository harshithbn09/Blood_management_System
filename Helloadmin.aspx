<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="Helloadmin.aspx.cs" Inherits="Hello_admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

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
    <table class="auto-style3">
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" BackColor="#CC3300" ForeColor="White" Height="45px" OnClick="Button1_Click" Text="Logout" Width="151px" />
            </td>
        </tr>
        <tr>
            <td>
                <p align="center" class="MsoNormal" style="text-align:center">
                    <b style="mso-bidi-font-weight:
normal"><span style="font-size:22.0pt;line-height:115%;color:red">Hello Admin!<o:p></o:p></span></b></p>
                <p class="MsoNormal">
                    This is app is develop by Arvind Shrivastava, If you have any query or any problem about the Website then contact at <a href="mailto:arvindshrivastava1919@gmail.com">arvindshrivastava1919@gmail.com</a>
<o:p></o:p>
                </p>
                <span style="font-size:11.0pt;line-height:115%;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;
mso-ascii-theme-font:minor-latin;mso-fareast-font-family:Calibri;mso-fareast-theme-font:
minor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;
mso-bidi-theme-font:minor-bidi;mso-ansi-language:EN-IN;mso-fareast-language:
EN-US;mso-bidi-language:AR-SA">Or you feel free to call : 8218874324</span></td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

