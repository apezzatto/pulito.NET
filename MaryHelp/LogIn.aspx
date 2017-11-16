<%@ Page Title="Log In" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LogIn.aspx.cs" Inherits="LogIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <%--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>--%>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="css/Content/bootstrap.css"/>
    <%--<link rel="stylesheet" type="text/css" href="css/Content/bootstrap.min.css"/>--%>
    <link rel="stylesheet" type="text/css" href="css/style1.css"/>
    <script src="js/functions.js"></script>
    <script src="js/slideshow.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="log" class="main_content" runat="server">   
        <div class="form-group">
            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="E-Mail" autofocus required TabIndex="1"></asp:TextBox>
        </div>
        <div class="form-group">
            <%--<label for="exampleInputEmail1" class="text-uppercase">Email</label>--%>
            <asp:TextBox ID="txtPass" runat="server" CssClass="form-control" placeholder="Password" TextMode="Password" required TabIndex="2"></asp:TextBox>
        </div>
        <asp:Button CssClass="btn btn-login float-right" ID="btnLogin" runat="server" Text="Log In" OnClick="btnLogin_Click" TabIndex="3" />
    </div>
   <%-- <div class="slideshow-container">
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
    </div>--%>
    <%--<br/>

    <div style="text-align:center">
      <span class="dot"></span>
      <span class="dot"></span>
      <span class="dot"></span>
    </div>--%>
    <p id="message" class="error_msg">
        <asp:Label ID="lblError" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label><br />
    </p>
</asp:Content>
