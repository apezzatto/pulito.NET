<%@ Page Title="Log In" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LogIn.aspx.cs" Inherits="LogIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" type="text/css" href="css/styles.css"/>
    <link rel="stylesheet" type="text/css" href="css/SlideShow.css"/>
    <script src="js/functions.js"></script>
    <script src="js/slideshow.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="slideshow-container">
        <div class="mySlides fade">
          <img class="imgbanner" src="img/banner1.jpg" style="width:100%"/>
          <div class="topleft">You need to focus. Leave the mess with us.</div>
        </div>

        <div class="mySlides fade">
          <img class="imgbanner" src="img/banner2.jpg" style="width:100%"/>
          <div class="topleft">You need a break. Leave the mess with us.</div>
        </div>

        <div class="mySlides fade">
          <img class="imgbanner" src="img/banner3.jpg" style="width:100%"/>
          <div class="topleft">You have done a lot. Leave the mess with us.</div>
        </div>
    </div>
    <br/>

    <div style="text-align:center">
      <span class="dot"></span>
      <span class="dot"></span>
      <span class="dot"></span>
    </div>
    <p id="message">
        <asp:Label ID="lblError" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label><br />
    </p>
</asp:Content>
