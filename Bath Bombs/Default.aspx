<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Bath_Bombs.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Styles.css" rel="stylesheet" type="text/css" media="screen" />

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <h1> Bath Bombs | Lush Fresh Handmade Cosmetics UK </h1>

    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
        <HeaderTemplate><div></HeaderTemplate>
        <ItemTemplate>
            <div class="classRepeater">
            <a href="<%# Eval ("ProductId", "Product.aspx?Id={0}") %>">
                <%#Eval("ProductName")%>

                <div>
                    <asp:Image ID="displayProductImage" runat="server" Height="180px" ImageUrl='<%# Eval("ProductImage") %>' Width ="180px" />
                </div>
            </a>

            </div>
        </ItemTemplate>
</asp:Repeater>
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1626481_wpd_asgConnectionString %>" SelectCommand="SELECT * FROM [wpd_asg]"></asp:SqlDataSource>

</asp:Content>
