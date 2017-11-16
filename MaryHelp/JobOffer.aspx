<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="JobOffer.aspx.cs" Inherits="JobOffer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
       
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="contentJobOffer">

	<h2>Job Creation</h2>
        <div class="clearfix">
        <div class="form-group">
            <ul>
                <li class="form-control">
                    <span class="label">Rooms</span>
                    <asp:TextBox ID="txtRooms" runat="server" Width="45px" TextMode="Number" MaxLength="1" OnTextChanged="txtRooms_TextChanged" CssClass="rightAlign">0</asp:TextBox>
                </li>
                <li class="form-control">
                    <span class="label">Bathrooms</span>
                    <asp:TextBox ID="txtBaths" CssClass="rightAlign" runat="server" TextMode="Number" Width="45px" MaxLength="1">0</asp:TextBox>
                </li> 
                <li class="form-control">
                    <span class="label">Windows</span>
                    <asp:TextBox ID="txtWindows" CssClass="rightAlign" runat="server" TextMode="Number" Width="45px" MaxLength="2">0</asp:TextBox>
                </li>
                <li class="form-control">
                    <span class="label">Mirrors</span>
                    <span class="right_align"><asp:TextBox ID="txtMirrors" CssClass="rightAlign" runat="server" TextMode="Number" Width="45px" MaxLength="2">0</asp:TextBox></span>
                </li>
                
            </ul>
            
        </div>
					   
        <div class="blocks rightBlock">
            <div class="clearfix">
            <ul>
                <li class="form-control">
                    <span class="label">Vacuum</span>
                    <span class="right_align"><asp:CheckBox ID="chkVacuum" runat="server" /></span>
                </li>
			    <li class="form-control">
                    <span class="label">Laundry</span>	
                    <span class="right_align"><asp:CheckBox ID="chkLaundry" runat="server" /></span>
			    </li>		               
                <li class="form-control">
                    <span class="label">Garage&nbsp;</span>
                    <span class="right_align"><asp:CheckBox ID="chkGarage" runat="server" /></span>
                </li>
                <li class="form-control">
                    <span class="label">Dishes</span>               
                    <span class="right_align"><asp:CheckBox ID="chkDishes" runat="server" /></span>
                </li>
		    </ul>
            </div>
        </div>
        </div>
					    
        <div class="first">
            <span class="flbl">Date Required</span>
			<span class=""><asp:TextBox ID="txtDtRequired" CssClass="rightAlign" runat="server" TextMode="DateTime" Width="64px" required></asp:TextBox></span>
        </div>
        <div class="second">
			<span class="slbl">Start time</span>
			<span class=""><asp:TextBox ID="txtStartTime" CssClass="rightAlign" runat="server" TextMode="DateTime" Width="64px" required></asp:TextBox></span>
        </div>
                        
				<asp:Button ID="btnCalculate" runat="server" OnClick="btnCalculate_Click" Text="Calculate" CssClass="btn btn-info" />
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>			    
                <asp:UpdatePanel ID="updPrice" runat="server">
                    <ContentTemplate>
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Your price: " Visible="False"></asp:Label>
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#006600" Text="CAD$ " Visible="False"></asp:Label>
                        <asp:Label ID="lblPrice" runat="server" Font-Bold="True" ForeColor="#006600" Font-Size="Large"></asp:Label><br />
                        <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="We gonna need " Visible="False"></asp:Label>
                        <asp:Label ID="lblHours" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
                        <asp:Label ID="Label4" runat="server" Font-Bold="True" Text=" hours to finish the job!" Visible="False"></asp:Label>
                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="btnCalculate" EventName="Click" />
                    </Triggers>
                </asp:UpdatePanel>

				<asp:Button ID="Button1" runat="server" class="btn btn-info" CssClass="btn btn-info" Text="Cancel" />
                <asp:Button ID="btnCreateJob" runat="server" Text="Create Job" CssClass="btn btn-info" OnClick="btnCreateJob_Click" />
    </div>
    <p id="message">
        <asp:Label ID="lblError" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label><br />
        <asp:Label ID="lblMessage" runat="server" ForeColor="#006600" Font-Bold="True"></asp:Label><br />
        <asp:RegularExpressionValidator ID="rexTime" runat="server" ControlToValidate="txtStartTime" ErrorMessage="Start time must be in 'HH:MM' format" ValidationExpression="^(([0]?[0-9]|1[0-2]):[0-5][0-9])|((1[3-9]|2[0-3]):[0-5][0-9])$" ForeColor="Red"></asp:RegularExpressionValidator><br />
        <asp:RegularExpressionValidator ID="rexDate" runat="server" ControlToValidate="txtDtRequired" ErrorMessage="Date must be in 'mm/dd/yyyy' format" ValidationExpression="^((((0[13578])|(1[02]))[\/]?(([0-2][0-9])|(3[01])))|(((0[469])|(11))[\/]?(([0-2][0-9])|(30)))|(02[\/]?[0-2][0-9]))[\/]?\d{4}$" ForeColor="Red"></asp:RegularExpressionValidator>
    </p>
</asp:Content>

