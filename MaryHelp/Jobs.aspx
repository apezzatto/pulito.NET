<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Jobs.aspx.cs" Inherits="Jobs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table id="jobs">
		<tr>
			<th class="header">
				Jobs
			</th>
		</tr>
        <tr>
            <td>
                <asp:Button ID="btnCity" CssClass="fancybutton" runat="server" Text="Jobs in my city" Width="105px" OnClick="btnCity_Click" /><asp:Button ID="btnNeighborhood" CssClass="fancybutton" runat="server" Text="Jobs in my neighborhood" Width="165px" OnClick="btnNeighborhood_Click" /><br />
                <asp:Label ID="lblError" ForeColor="Red" runat="server" Font-Bold="True" Width="1090px"></asp:Label><br />
                <asp:Label ID="lblMessage" ForeColor="#006600" runat="server" Font-Bold="True" Width="1090px"></asp:Label>
            </td>
        </tr>
		<tr>
			<td class="bottom">
                <asp:GridView ID="grdJobs" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" Font-Size="10px" AllowPaging="True" AllowSorting="True" OnRowDataBound="grdJobs_RowDataBound" CellSpacing="1">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:HiddenField ID="idJob" runat="server" Value='<%# Bind("Id") %>'></asp:HiddenField>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:templatefield>
                            <itemtemplate>
                                <asp:checkbox CssClass="chkGrid" ID="cbSelect" runat="server"></asp:checkbox>
                            </itemtemplate>
                        </asp:templatefield>
                        <asp:BoundField DataField="price" HeaderText="$" />
                        <asp:BoundField DataField="DateTimeJobCreation" DataFormatString="{0:MM/dd/yyyy HH:mm}" HeaderText="Date&amp;Time Posted" />
                        <asp:BoundField DataField="DateTimeJobStarts" DataFormatString="{0:MM/dd/yyyy HH:mm}" HeaderText="Date&amp;Time Required" />
                        <asp:BoundField DataField="HoursForConclusion" HeaderText="Hours to Finish" />
                        <asp:BoundField DataField="EstimatedEndTime" DataFormatString="{0:MM/dd/yyyy HH:mm}" HeaderText="Estimated End Time" />
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
		<tr>
			<td class="bottom">
                <asp:Button ID="btnApply" CssClass="fancybutton" runat="server" Text="Apply" OnClick="btnApply_Click" />
			</td>
		</tr>
    </table>
</asp:Content>

