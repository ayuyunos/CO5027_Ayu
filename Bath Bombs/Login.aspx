<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Bath_Bombs.Login" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link href="index.css" rel="stylesheet" type="text/css" media="screen" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <p>&nbsp;</p>

<p>Login</p>
    <p>&nbsp;Username:</p>
    <p>
        <asp:TextBox ID="txt_UserName" runat="server"></asp:TextBox>
    </p>
<p>Password:</p>
    <p>
        <asp:TextBox ID="txt_Password" runat="server"></asp:TextBox>
    </p>

<p><asp:Button ID="btnLogin" runat="server" Text="Login" style="height: 29px" OnClick="btnLogin_Click" /></p>

    <asp:Literal ID="Login_Error" runat="server"></asp:Literal>

</asp:Content>
