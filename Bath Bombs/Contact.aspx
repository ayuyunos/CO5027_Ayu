<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Bath_Bombs.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="index.css" rel="stylesheet" type="text/css" media="screen" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="TB">  
        <p class="form-row form-row-wide">&nbsp;</p>
        <p class="form-row form-row-wide">&nbsp;</p>
        <p class="form-row form-row-wide">
            Name:<span class="required">*</span>
        </p>
        <p>
            <asp:TextBox ID="TxtName" runat="server" Width="256px"></asp:TextBox>
        </p>
         <p>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtName" ErrorMessage="enter name."></asp:RequiredFieldValidator>
         </p>
        <p class="form-row form-row-wide">
        Subject:<span class="required">*</span>

        </p>
        <p>
            <asp:TextBox ID="TxtSubject" runat="server" Width="256px"></asp:TextBox>
        </p>
          <p>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtSubject" ErrorMessage="enter subject"></asp:RequiredFieldValidator>
         </p>

        <p class="form-row form-row-wide">
        E-mail:<span class="required">*</span>

        </p>
        <p>
            <asp:TextBox ID="TxtEmail" runat="server" Width="256px" ValidateRequestMode="Enabled" ValidationGroup="Email"></asp:TextBox>
            &nbsp;</p>
         <p>
                                   <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtEmail" ErrorMessage="Invalid Email!" ValidationExpression="^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*\s*$"></asp:RegularExpressionValidator>
         </p>

        <p class="form-row form-row-wide">

        Message:<span class="required">*</span>

        </p>
        <asp:TextBox ID="TxtMessage" runat="server" Height="60px" TextMode="MultiLine" Width="256px"></asp:TextBox>


         <br />

         <br />
         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TxtMessage" ErrorMessage="Please enter message" ForeColor="#FF3300"></asp:RequiredFieldValidator>

        <br />
        <br />
        <asp:Button ID="BtnSendEmail_Click" runat="server" Text="Submit" OnClick="BtnSendEmail_Click_Click" />

         <br />

         <br />

    <asp:Literal ID="litResult" runat="server"></asp:Literal>
   </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="googleMap" runat="server">
    <div id="map"></div>
    <script>
      function initMap() {
        var uluru = {lat: -25.363, lng: 131.044};
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 4,
          center: uluru
        });
        var marker = new google.maps.Marker({
          position: uluru,
          map: map
        });
      }
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDos9mZDIV7W4bgSsS-Ie0hLMykr4KOBJY&callback=initMap"async defer>
    </script>
             </asp:Content>