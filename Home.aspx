<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style8 {
        font-size: x-large;
        text-decoration: underline;
        color: #FF0000;
    }
    .auto-style9 {
        width: 555px;
        height: 206px;
        margin-left: 397px;
    }
    .auto-style10 {
        font-size: x-large;
        color: #FF0000;
        width: 981px;
        height: 183px;
        text-align: center;
        margin-left: 103px;
    }
    .auto-style11 {
        font-size: large;
        color: rgb(0, 0, 0);
        font-family: "Times New Roman", Times, serif;
    }
        .auto-style12 {
            font-size: x-large;
            color: #FF0000;
            width: 1763px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style12">
        <strong>
    <em>HOME:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </em>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx">Request as Blood Seeker</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Login.aspx" style="font-weight: 700">Request as Blood Donor</asp:HyperLink>
    </p>
    <p class="auto-style12">
        &nbsp;</p>
    <p class="auto-style12">
        &nbsp;</p>
<p class="auto-style8">
    <img alt="" class="auto-style9" src="image/download.png" /></p>
<p class="auto-style10">
    <span class="auto-style11" style="font-family: &quot;Helvetica Neue&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">The software system is an online blood bank management system that helps in managing various blood bank operations effectively. The project consists of a central repository containing various blood deposits available along with associated details. These details include blood type, storage area and date of storage. These details help in maintaining and monitoring the blood deposits. The project is an online system that allows to check weather required blood deposits of a particular group are available 
    in the blood bank. Moreover the system also has added features such as patient name and contacts, blood booking and even need foe certain blood group is posted on the website to find available donors for a blood emergency. This online system is developed on .net platform and supported by an Sql database to store blood and user specific details.</span><br class="Apple-interchange-newline" />
</p>
<p class="auto-style8">
    &nbsp;</p>
</asp:Content>

