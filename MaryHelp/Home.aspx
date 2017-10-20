<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>
<%@ MasterType virtualpath="~/MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="homelinks" id="home">
        <a href="JobOffer.aspx" class="homeMenu">
            <asp:image runat="server" CssClass="imgHome" Height="36px" ImageUrl="icons\home.png" Width="42px" ID="image1"></asp:image>
            &nbsp;&nbsp;Clean me now!
        </a>
    </div>
    <div class="homelinks" id="myjobs">
        <a href="Jobs.aspx" class="homeMenu">
            <asp:image runat="server" CssClass="imgHome" Height="36px" ImageUrl="icons\myjobs.png" Width="42px"></asp:image>
            &nbsp;&nbsp;My Jobs
        </a>
    </div>
    <div class="homelinks" id="myhistory">
        <a href="MyHistory.aspx" class="homeMenu">
            <asp:image runat="server" CssClass="imgHome" Height="36px" ImageUrl="icons\myhistory.png" Width="42px"></asp:image>
            &nbsp;&nbsp;My History
        </a>
    </div>
    <div class="homelinks" id="myprofile">
        <a href="SignUp.aspx?mode=profile" class="homeMenu">
            <asp:image runat="server" CssClass="imgHome" Height="36px" ImageUrl="icons\myprofile.png" Width="42px"></asp:image>
            &nbsp;&nbsp;My Profile
        </a>
    </div>
</asp:Content>

