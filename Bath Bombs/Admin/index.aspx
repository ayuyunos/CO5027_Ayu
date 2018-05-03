<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Bath_Bombs.Admin.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>Admin Panel</p>

    <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click"  />
    <asp:Button ID="btnList" runat="server" Text="List" OnClick="btnList_Click"  />
    <asp:Button ID="btnLogOut" runat="server" Text="Logout" OnClick="btnLogOut_Click" />

    </asp:Content>

