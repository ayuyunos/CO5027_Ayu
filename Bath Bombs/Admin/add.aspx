﻿<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="add.aspx.cs" Inherits="Bath_Bombs.Admin.add" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p>
        <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" DefaultMode="Insert" DataKeyNames="ProductId">
            <EditItemTemplate>
                ProductId:
                <asp:Label ID="ProductIdLabel1" runat="server" Text='<%# Eval("ProductId") %>' />
                <br />
                ProductName:
                <asp:TextBox ID="ProductNameTextBox" runat="server" Text='<%# Bind("ProductName") %>' />
                <br />
                ProductDesc:
                <asp:TextBox ID="ProductDescTextBox" runat="server" Text='<%# Bind("ProductDesc") %>' />
                <br />
                ProductImage:
                <asp:TextBox ID="ProductImageTextBox" runat="server" Text='<%# Bind("ProductImage") %>' />
                <br />
                Quantity:
                <asp:TextBox ID="QuantityTextBox" runat="server" Text='<%# Bind("Quantity") %>' />
                <br />
                Price:
                <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                ProductName:
                 <asp:TextBox ID="ProductNameTextBox" runat="server" Text='<%# Bind("ProductName") %>' />
                <br />
                ProductDesc:
                <asp:TextBox ID="ProductDescTextBox" runat="server" Text='<%# Bind("ProductDesc") %>' />
                <br />
                ProductImage:
                <asp:FileUpload ID="FileUpload1" runat="server" />
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Save Image</asp:LinkButton>
                <asp:Label ID="Label1" runat="server" Text='<%# Bind("ProductImage") %>'></asp:Label>
                <br />
                Quantity:
                <asp:TextBox ID="QuantityTextBox" runat="server" Text='<%# Bind("Quantity") %>' />
                <br />
                Price:
                <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                ProductId:
                <asp:Label ID="ProductIdLabel" runat="server" Text='<%# Eval("ProductId") %>' />
                <br />
                ProductName:
                <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Bind("ProductName") %>' />
                <br />
                ProductDesc:
                <asp:Label ID="ProductDescLabel" runat="server" Text='<%# Bind("ProductDesc") %>' />
                <br />
                ProductImage:
                <asp:Label ID="ProductImageLabel" runat="server" Text='<%# Bind("ProductImage") %>' />
                <br />
                Quantity:
                <asp:Label ID="QuantityLabel" runat="server" Text='<%# Bind("Quantity") %>' />
                <br />
                Price:
                <asp:Label ID="PriceLabel" runat="server" Text='<%# Bind("Price") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />

            </ItemTemplate>
        </asp:FormView>
        &nbsp;</p>
     
     <p>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1626481_wpd_asgConnectionString %>" SelectCommand="SELECT * FROM [wpd_asg]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [wpd_asg] WHERE [ProductId] = @original_ProductId AND (([ProductName] = @original_ProductName) OR ([ProductName] IS NULL AND @original_ProductName IS NULL)) AND (([ProductDesc] = @original_ProductDesc) OR ([ProductDesc] IS NULL AND @original_ProductDesc IS NULL)) AND (([ProductImage] = @original_ProductImage) OR ([ProductImage] IS NULL AND @original_ProductImage IS NULL)) AND (([Quantity] = @original_Quantity) OR ([Quantity] IS NULL AND @original_Quantity IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL))" InsertCommand="INSERT INTO [wpd_asg] ([ProductName], [ProductDesc], [ProductImage], [Quantity], [Price]) VALUES (@ProductName, @ProductDesc, @ProductImage, @Quantity, @Price)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [wpd_asg] SET [ProductName] = @ProductName, [ProductDesc] = @ProductDesc, [ProductImage] = @ProductImage, [Quantity] = @Quantity, [Price] = @Price WHERE [ProductId] = @original_ProductId AND (([ProductName] = @original_ProductName) OR ([ProductName] IS NULL AND @original_ProductName IS NULL)) AND (([ProductDesc] = @original_ProductDesc) OR ([ProductDesc] IS NULL AND @original_ProductDesc IS NULL)) AND (([ProductImage] = @original_ProductImage) OR ([ProductImage] IS NULL AND @original_ProductImage IS NULL)) AND (([Quantity] = @original_Quantity) OR ([Quantity] IS NULL AND @original_Quantity IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL))">
             <DeleteParameters>
                 <asp:Parameter Name="original_ProductId" Type="Int32" />
                 <asp:Parameter Name="original_ProductName" Type="String" />
                 <asp:Parameter Name="original_ProductDesc" Type="String" />
                 <asp:Parameter Name="original_ProductImage" Type="String" />
                 <asp:Parameter Name="original_Quantity" Type="Int32" />
                 <asp:Parameter Name="original_Price" Type="Double" />
             </DeleteParameters>
             <InsertParameters>
                  <asp:Parameter Name="ProductName" Type="String" />
                 <asp:Parameter Name="ProductDesc" Type="String" />
                 <asp:Parameter Name="ProductImage" Type="String" />  
                  <asp:Parameter Name="Quantity" Type="Int32" />
                  <asp:Parameter Name="Price" Type="Double" />
             </InsertParameters>
             <UpdateParameters>
                 <asp:Parameter Name="ProductName" Type="String" />
                 <asp:Parameter Name="ProductDesc" Type="String" />
                 <asp:Parameter Name="ProductImage" Type="String" />
                 <asp:Parameter Name="Quantity" Type="Int32" />
                 <asp:Parameter Name="Price" Type="Double" />
                 <asp:Parameter Name="original_ProductId" Type="Int32" />
                 <asp:Parameter Name="original_ProductName" Type="String" />
                 <asp:Parameter Name="original_ProductDesc" Type="String" />
                 <asp:Parameter Name="original_ProductImage" Type="String" />
                 <asp:Parameter Name="original_Quantity" Type="Int32" />
                 <asp:Parameter Name="original_Price" Type="Double" />
             </UpdateParameters>
         </asp:SqlDataSource>
    </p>
    </asp:Content>
