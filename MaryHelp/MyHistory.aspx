<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MyHistory.aspx.cs" Inherits="MyHistory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="hist">
    <div>
		<h2 class="header">My History</h2>
        <asp:Button ID="btnCity" CssClass="btn btn-info btn-city" runat="server" Text="My City" Width="105px" OnClick="btnCity_Click" />
        <asp:Button ID="btnNeighborhood" CssClass="btn btn-info btn-ngh" runat="server" Text="My Neighborhood" Width="165px" OnClick="btnNeighborhood_Click" /><br />
        <asp:Label ID="lblError" ForeColor="Red" runat="server" Font-Bold="True"></asp:Label><br />
        <asp:Label ID="lblMessage" ForeColor="#006600" runat="server" Font-Bold="True"></asp:Label>
	</div>
    
    <table>
        <tr>
            <td class="bottom">
                <asp:GridView ID="grdHistory" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" Font-Size="10px" AllowPaging="True" AllowSorting="True" CellSpacing="1">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:HiddenField ID="idJob" runat="server" Value='<%# Bind("Id") %>'></asp:HiddenField>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="price" HeaderText="$" />
                        <asp:BoundField DataField="DateTimeJobStarts" DataFormatString="{0:MM/dd/yyyy HH:mm}" HeaderText="Date&amp;Time Required" />
                        <asp:BoundField DataField="DateTimeJobEnd" DataFormatString="{0:MM/dd/yyyy HH:mm}" HeaderText="Date&amp;Time End" NullDisplayText="-" />
                        <asp:BoundField DataField="Client.Name" HeaderText="Client Name" />
                        <asp:BoundField DataField="Client.City.Name" HeaderText="City" />
                        <asp:BoundField DataField="Client.Neighborhood.Name" HeaderText="Neighborhood" />
                        <asp:BoundField DataField="QtyRooms" HeaderText="Rooms" />
                        <asp:BoundField DataField="QtyBaths" HeaderText="Baths" />
                        <asp:BoundField DataField="QtyWindows" HeaderText="Windows" />
                        <asp:BoundField DataField="QtyMirrors" HeaderText="Mirrors" />
                        <asp:CheckBoxField DataField="Dishes" HeaderText="Dishes" />
                        <asp:CheckBoxField DataField="Laundry" HeaderText="Laundry" />
                        <asp:CheckBoxField DataField="Garage" HeaderText="Garage" />
                        <asp:CheckBoxField DataField="Vacuum" HeaderText="Vacuum" />
                        <asp:BoundField DataField="Status" HeaderText="Status" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" Font-Size="11px" HorizontalAlign="Center" VerticalAlign="Middle" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" VerticalAlign="Middle" CssClass="gridRow" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
			</td>
        </tr>
    </table>
</div>
</asp:Content>

