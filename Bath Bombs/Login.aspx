<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Bath_Bombs.Login" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link href="index.css" rel="stylesheet" type="text/css" media="screen" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <p>&nbsp;</p>
<p>&nbsp;</p>
<p>Login</p>
    <p>&nbsp;Username:</p>
    <p>
        <asp:TextBox ID="Txt_Username" runat="server" Width="300px"></asp:TextBox>
    </p>

<p>Password:</p>
    <p>
        <asp:TextBox ID="Txt_Password" runat="server" Width="300px"></asp:TextBox>
    </p>

<p><asp:Button ID="Button_1" runat="server" Text="Login" OnClick="Button1_Click" style="height: 29px" /></p>

    <asp:Literal ID="Login_Error" runat="server"></asp:Literal>

    <p>Registration</p>

    <p>Fullname:</p>
    <p>
        <asp:TextBox ID="Txt_Full_name" runat="server" Width="300px"></asp:TextBox>
    </p>

    <p>Password:</p>
    <p>
        <asp:TextBox ID="Txt_Pswd" runat="server" Width="300px"></asp:TextBox>
    </p>

    <p>Confirm Password:</p>
    <p>
        <asp:TextBox ID="Txt_CnfmPswd" runat="server" Width="300px"></asp:TextBox>
    </p>
   
    <asp:Button ID="Button_2" runat="server" Text="Register" OnClick="Button2_Click" />

    <br />
    <br />
    <asp:Literal ID="RegisterError" runat="server"></asp:Literal>
</asp:Content>
