<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="Account.aspx.cs" Inherits="Bath_Bombs.Account" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h2>Welcome</h2>
    <p>
        <asp:Button ID="sOut" runat="server" OnClick="sOut_Click" Text="Sign out"/>
    </p>
</asp:Content>

