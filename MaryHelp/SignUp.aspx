<%@ Page Title="Sign Up" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" type="text/css" href="css/styles.css" title="Style1">
    <script src="js/functions.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="lblError" CssClass="error" runat="server" Text=""></asp:Label>
    <br />
    <br />
    <table id="signup">
		<tr>
			<th class="header" colspan="2">
				Sign Up
			</th>
		</tr>
        <tr>
            <td>
                <table>
				    <tr>
					    <td class="label">Name</td>
					    <td>
                            <asp:TextBox ID="txtName" runat="server" TextMode="SingleLine" MaxLength="20" Width="180px" required></asp:TextBox>
                        </td>
				    </tr>
				    <tr>
					    <td class="label">Middle Name</td>
					    <td>
                            <asp:TextBox ID="txtMiddle" runat="server" TextMode="SingleLine" MaxLength="30" Width="180px"></asp:TextBox>
                        </td>
				    </tr>
				    <tr>
					    <td class="label">Last Name</td>
					    <td>
                            <asp:TextBox ID="txtLast" runat="server" TextMode="SingleLine" MaxLength="30" Width="180px" required></asp:TextBox>
                        </td>
				    </tr>
                    <tr>
					    <td class="label">E-Mail</td>
					    <td>
                                <asp:TextBox ID="txtEmail" runat="server" TextMode="SingleLine" MaxLength="50" Width="180px" required></asp:TextBox>
                        </td>
				    </tr>
                    <tr>
					    <td class="label">Confirm E-Mail</td>
					    <td>
                            <asp:TextBox ID="txtEmailConf" runat="server" TextMode="SingleLine" MaxLength="50" Width="180px" required></asp:TextBox>
                        </td>
				    </tr>
				    <tr>
					    <td class="label">Password</td>
					    <td>
                            <asp:TextBox ID="txtPass" runat="server" TextMode="Password" MaxLength="8" Width="180px" required></asp:TextBox>
                        </td>
				    </tr>
				    <tr>
					    <td class="label">Confirm Password</td>
					    <td>
                            <asp:TextBox ID="txtPassConf" runat="server" TextMode="Password" MaxLength="8" Width="180px" required></asp:TextBox>
                        </td>
				    </tr>
			    </table>
            </td>
            <td>
                <table>
				    <tr>
					    <td class="label">Address Line 1</td>
					    <td>
                            <asp:TextBox ID="txtAddress1" runat="server" TextMode="SingleLine" MaxLength="100" Width="180px" required></asp:TextBox>
                        </td>
				    </tr>
                    <tr>
					    <td class="label">Address Line 2 <em>(optional)</em></td>
					    <td>
                            <asp:TextBox ID="txtAddress2" runat="server" TextMode="SingleLine" MaxLength="50" Width="180px"></asp:TextBox>
                        </td>
				    </tr>
				    <tr>
					    <td class="label">Province</td>
					    <td>
                            <asp:DropDownList ID="ddlProvince" runat="server" DataTextField="Name" DataValueField="Id" OnSelectedIndexChanged="ddlProvince_SelectedIndexChanged" AutoPostBack="True" required>
                            </asp:DropDownList>
                        </td>
				    </tr>
                    <tr>
					    <td class="label">City</td>
					    <td>
                            <asp:DropDownList ID="ddlCity" runat="server" DataTextField="Name" DataValueField="Id" AutoPostBack="True" OnSelectedIndexChanged="ddlCity_SelectedIndexChanged" required>
                            </asp:DropDownList>
                        </td>
				    </tr>
                    <tr>
					    <td class="label">Neighborhood</td>
					    <td>
                            <asp:DropDownList ID="ddlNeighborhood" runat="server" required>
                            </asp:DropDownList>
                        </td>
				    </tr>
				    <tr>
					    <td class="label">Zip Code</td>
					    <td>
                            <asp:TextBox ID="txtZip" runat="server" TextMode="SingleLine" MaxLength="6" Width="180px" required></asp:TextBox>
                        </td>
				    </tr>
                </table>
            </td>                        
        </tr>
		<tr>
			<td colspan="2" class="bottom">
				<input type="reset" value="Reset" class="fancybutton" /><asp:Button ID="btnCreateAccount" runat="server" Text="Create Account" CssClass="fancybutton" OnClick="btnCreateAccount_Click" />
			    <asp:Button ID="btnSave" runat="server" CssClass="fancybutton" OnClick="btnSave_Click" Text="Save" />
			</td>
		</tr>
    </table>
</asp:Content>
