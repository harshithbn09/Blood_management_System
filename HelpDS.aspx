<%@ Page Title="" Language="C#" MasterPageFile="~/donor.master" AutoEventWireup="true" CodeFile="HelpDS.aspx.cs" Inherits="Help_donor" %>

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
    <table class="auto-style6">
        <tr>
            <td>
                <p align="center" class="MsoNormal" style="text-align:center">
                    <b style="mso-bidi-font-weight:
normal"><span style="font-size:22.0pt;line-height:115%;color:red">May I help you!<o:p></o:p></span></b></p>
                <p class="MsoNormal">
                    If you have any query or any problem about the Website then contact at BBMS.info@gmail.com</p>
                <span style="font-size:11.0pt;line-height:115%;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;
mso-ascii-theme-font:minor-latin;mso-fareast-font-family:Calibri;mso-fareast-theme-font:
minor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;
mso-bidi-theme-font:minor-bidi;mso-ansi-language:EN-IN;mso-fareast-language:
EN-US;mso-bidi-language:AR-SA">Or you feel free to call : 8732121248<br />
                </span></td>
        </tr>
        <tr>
            <td>Drop your query here:<br />
                <asp:TextBox ID="TextBox1" runat="server" Height="103px" TextMode="MultiLine" Width="627px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Invalid Field!" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

