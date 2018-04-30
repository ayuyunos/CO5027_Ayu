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

         <p>Google Map</p>

        <script src='https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyBhclm5GLoCFg766ilv-fJ1fUNsGx3SGuU'></script>
        <div style='overflow:hidden;height:340px; width:814px;'>
        <div id='gmap_canvas' style='height:340px; width:816px; margin-right:0px; margin-left: 0px;'></div>


     </div>

    

         <a href='https://add-map.org/'>We Are Here</a>
        <script type='text/javascript' src='https://embedmaps.com/google-maps-authorization/script.js?id=6cfcf792b726fcc030a1ee19d6d4ce7409dadf52'></script>
        <script type='text/javascript'>function init_map(){var myOptions = {zoom:12,center:new google.maps.LatLng(4.8833,114.93330000000003),mapTypeId: google.maps.MapTypeId.ROADMAP};map = new google.maps.Map(document.getElementById('gmap_canvas'), myOptions);marker = new google.maps.Marker({map: map,position: new google.maps.LatLng(4.8833,114.93330000000003)});infowindow = new google.maps.InfoWindow({content:'<strong>We\'re Here!</strong><br><br> Bandar Seri Begawan<br>'});google.maps.event.addListener(marker, 'click', function(){infowindow.open(map,marker);});infowindow.open(map,marker);}google.maps.event.addDomListener(window, 'load', init_map);</script>
     </div>
    
         <div id="map-static">
         <p>Static Map</p>
         <img src="images/Static%20Google%20Maps1.jpg" alt="Static Google Maps" />
     </div>

        
   
</asp:Content>
