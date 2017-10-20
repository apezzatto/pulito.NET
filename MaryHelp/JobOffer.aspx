<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="JobOffer.aspx.cs" Inherits="JobOffer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            display: inline-block;
            border-radius: 4px;
            background-color: #d4b34a;
            color: white;
            text-align: center;
            font-size: 12px;
            padding: 8px;
            transition: all 0.5s;
            cursor: pointer;
            margin: 5px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table id="jobcreation">
		<tr>
			<th class="header" colspan="2">
				Job Creation
			</th>
		</tr>
        <tr>
            <td>
                <table>
				    <tr>
					    <td class="label">Rooms</td>
					    <td>
                            <asp:TextBox ID="txtRooms" runat="server" Width="45px" TextMode="Number" MaxLength="1" OnTextChanged="txtRooms_TextChanged">0</asp:TextBox>
                        </td>
				    </tr>
				    <tr>
					    <td class="label">Bathrooms</td>
					    <td>
                            <asp:TextBox ID="txtBaths" runat="server" TextMode="Number" Width="45px" MaxLength="1">0</asp:TextBox>
                        </td>
				    </tr>
				    <tr>
					    <td class="label">Windows</td>
					    <td>
                            <asp:TextBox ID="txtWindows" runat="server" TextMode="Number" Width="45px" MaxLength="2">0</asp:TextBox>
                        </td>
				    </tr>
                    <tr>
					    <td class="label">Mirrors</td>
					    <td>
                                <asp:TextBox ID="txtMirrors" runat="server" TextMode="Number" Width="45px" MaxLength="2">0</asp:TextBox>
                        </td>
				    </tr>
		            <tr>
			            <td>Date Required</td>
			            <td>
			                <asp:TextBox ID="txtDtRequired" runat="server" TextMode="DateTime" Width="64px" required></asp:TextBox>
                            
			            </td>
		            </tr>
			    </table>
            </td>
            <td>
                <table>
				    <tr>
					    <td class="label">Vacuum</td>
					    <td>

                            <asp:CheckBox ID="chkVacuum" runat="server" />

                        </td>
				    </tr>
                    <tr>
					    <td class="label">Laundry</td>
					    <td>

                            <asp:CheckBox ID="chkLaundry" runat="server" />

                        </td>
				    </tr>
				    <tr>
					    <td class="label">Garage</td>
					    <td>

                            <asp:CheckBox ID="chkGarage" runat="server" />

                        </td>
				    </tr>
                    <tr>
					    <td class="label">Dishes</td>
					    <td>

                            <asp:CheckBox ID="chkDishes" runat="server" />

                        </td>
				    </tr>
		            <tr>
			            <td>Start time</td>
			            <td>
			                <asp:TextBox ID="txtStartTime" runat="server" TextMode="DateTime" Width="45px" required></asp:TextBox>
                            
			            </td>
		            </tr>
                </table>
            </td>                        
        </tr>
		<tr>
			<td colspan="2" class="bottom">
				<asp:Button ID="btnCalculate" runat="server" OnClick="btnCalculate_Click" Text="Calculate" CssClass="auto-style2" Width="82px" />
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
			</td>
		</tr>
		<tr>
			<td colspan="2" class="bottom">
				<asp:Button ID="Button1" runat="server" CssClass="fancybuttoncancel" Text="Cancel" />
                <asp:Button ID="btnCreateJob" runat="server" Text="Create Job" CssClass="auto-style2" OnClick="btnCreateJob_Click" Width="82px" />
			</td>
		</tr>
    </table>
    <p id="message">
        <asp:Label ID="lblError" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label><br />
        <asp:Label ID="lblMessage" runat="server" ForeColor="#006600" Font-Bold="True"></asp:Label><br />
        <asp:RegularExpressionValidator ID="rexTime" runat="server" ControlToValidate="txtStartTime" ErrorMessage="Start time must be in 'HH:MM' format" ValidationExpression="^(([0]?[0-9]|1[0-2]):[0-5][0-9])|((1[3-9]|2[0-3]):[0-5][0-9])$" ForeColor="Red"></asp:RegularExpressionValidator><br />
        <asp:RegularExpressionValidator ID="rexDate" runat="server" ControlToValidate="txtDtRequired" ErrorMessage="Date must be in 'mm/dd/yyyy' format" ValidationExpression="^((((0[13578])|(1[02]))[\/]?(([0-2][0-9])|(3[01])))|(((0[469])|(11))[\/]?(([0-2][0-9])|(30)))|(02[\/]?[0-2][0-9]))[\/]?\d{4}$" ForeColor="Red"></asp:RegularExpressionValidator>
    </p>
</asp:Content>

