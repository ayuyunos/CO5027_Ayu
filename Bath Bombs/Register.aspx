<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Bath_Bombs.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
   
    <asp:Button ID="Button_2" runat="server" Text="Register" OnClick="Button_2_Click" />

    <br />
    <br />
    <asp:Literal ID="RegisterError" runat="server"></asp:Literal>
</asp:Content>
