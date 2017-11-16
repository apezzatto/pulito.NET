<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>
<%@ MasterType virtualpath="~/MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="form-group" id="home">
        <a href="JobOffer.aspx" class="homeMenu">
            <asp:image runat="server" CssClass="imgHome" Height="36px" ImageUrl="icons\cleaning.png" Width="42px" ID="image1"></asp:image>
            &nbsp;&nbsp;Clean me now!
        </a>
    </div>
    <div class="form-group" id="myjobs">
        <a href="Jobs.aspx" class="homeMenu">
            <asp:image runat="server" CssClass="imgHome" Height="36px" ImageUrl="icons\job1.png" Width="42px"></asp:image>
            &nbsp;&nbsp;<span class="">My Jobs</span>
        </a>
    </div>
    <div class="form-group" id="myhistory">
        <a href="MyHistory.aspx" class="homeMenu">
            <asp:image runat="server" CssClass="imgHome" Height="36px" ImageUrl="icons\history.png" Width="42px"></asp:image>
            &nbsp;&nbsp;My History
        </a>
    </div>
    <div class="form-group" id="myprofile">
        <a href="SignUp.aspx?mode=profile" class="homeMenu">
            <asp:image runat="server" CssClass="imgHome" Height="36px" ImageUrl="icons\profile1.png" Width="42px"></asp:image>
            &nbsp;&nbsp;My Profile
        </a>
    </div>
</asp:Content>



<%--<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>
<%@ MasterType virtualpath="~/MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
            <div class="panel panel-primary">
                <div class="container">
                    <div class="row">
                            <a href="#" class="btn btn-primary btn-lg btn-block btn-huge" role="button"><span class="glyphicon glyphicon-list-lock"></span>Clean Me Now</a>
                    </div>
                        <hr />
                    <div class="row">
                            <a href="#" class="btn btn-primary btn-lg btn-block btn-huge" role="button"><span class="glyphicon glyphicon-list-briefcase"></span>My Jobs</a>
                    </div>
                        <hr />
                    <div class="row">
                              <a href="#" class="btn btn-primary btn-lg btn-block btn-huge" role="button"><span class="glyphicon glyphicon-list-time"></span>My History</a>
                    </div>
                        <hr />
                    <div class="row">
                              <a href="#" class="btn btn-primary btn-lg btn-block btn-huge" role="button"><span class="glyphicon glyphicon-list-user"></span>My Profile</a>
                    </div>
                </div>
            </div>
</asp:Content>--%>
