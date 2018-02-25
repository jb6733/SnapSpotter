<%@ Page Title="Browse with Filter" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="BrowseFilter.aspx.cs" Inherits="BrowseFilter010" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
  <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="City" DataValueField="City">
    <asp:ListItem>Select a city</asp:ListItem>
  </asp:DropDownList>
  <br />
  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SnapSpotterConnectionString1 %>" SelectCommand="SELECT DISTINCT [City] FROM [Spot] ORDER BY [City]"></asp:SqlDataSource>
  <br />
  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" CellPadding="4" ForeColor="#333333" GridLines="None" Width="840px">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
      <asp:HyperLinkField DataNavigateUrlFields="RowID" DataNavigateUrlFormatString="DisplaySpot.aspx?SpotID={0}" DataTextField="Name" HeaderText="Name" />
      <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
    </Columns>
    <EditRowStyle BackColor="#2461BF" />
    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#EFF3FB" />
    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#F5F7FB" />
    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
    <SortedDescendingCellStyle BackColor="#E9EBEF" />
    <SortedDescendingHeaderStyle BackColor="#4870BE" />
  </asp:GridView>
  <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SnapSpotterConnectionString1 %>" SelectCommand="SELECT RowID, [Name], [City] FROM [Spot] WHERE ([City] = @City)">
    <SelectParameters>
      <asp:ControlParameter ControlID="DropDownList1" Name="City" PropertyName="SelectedValue" Type="String" />
    </SelectParameters>
  </asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpClientScript" Runat="Server">
</asp:Content>

