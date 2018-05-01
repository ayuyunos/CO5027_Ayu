<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="Bath_Bombs.Admin.admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p>
        <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1"></asp:FormView>
    </p>
     
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ProductId" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="609px" ShowHeaderWhenEmpty="True">
            <Columns>
                <asp:BoundField DataField="ProductId" HeaderText="ProductId" InsertVisible="False" ReadOnly="True" SortExpression="ProductId" />
                <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                <asp:BoundField DataField="ProductDesc" HeaderText="ProductDesc" SortExpression="ProductDesc" />
                <asp:ButtonField ButtonType="Button" CommandName="Delete" HeaderText="Action" ShowHeader="True" Text="Delete" />
                <asp:HyperLinkField DataNavigateUrlFields="ProductId" DataNavigateUrlFormatString="Edit.aspx?Id=0" Text="Edit" />
            </Columns>
        </asp:GridView>
    </p>
     <p>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1626481_wpd_asgConnectionString %>" SelectCommand="SELECT * FROM [TableProduct1]"></asp:SqlDataSource>
    </p>
    </asp:Content>
