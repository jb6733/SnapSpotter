<%@ Page Title="Browse with Filter" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="BrowseListview.aspx.cs" Inherits="BrowseFilter010" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
  <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="RowID">
    <asp:ListItem Value="0">Select a Collection</asp:ListItem>
  </asp:DropDownList>
  <br />
  <br />
  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SnapSpotterConnectionString1 %>" SelectCommand="SELECT RowID, Name FROM Collection ORDER BY Name"></asp:SqlDataSource>
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="RowID" DataSourceID="SqlDataSource2">
    <EmptyDataTemplate>
      <span></span>
    </EmptyDataTemplate>
    <ItemTemplate>
      <span style="">
	    <asp:ImageButton ID="ThumbnailURLImageButton" runat="server" ImageURL='<%# Eval("ThumbnailURL") %>' PostBackUrl='<%#"~/DisplaySpot.aspx?SpotID="+Eval("RowID")%>' BorderStyle="Solid" BorderColor="Gray" BorderWidth="2"></asp:ImageButton>
      <br />
	    <asp:LinkButton ID="DisplaySpotLink" runat="server" Text='<%# Eval("Name") %>' PostBackUrl='<%#"~/DisplaySpot.aspx?SpotID="+Eval("RowID")%>'></asp:LinkButton>
      <br />
	    <br /></span>
    </ItemTemplate>
    <LayoutTemplate>
      <div id="itemPlaceholderContainer" runat="server" style="">
        <span runat="server" id="itemPlaceholder" />
      </div>
      <div style="">
      </div>
    </LayoutTemplate>
  </asp:ListView>
  <br />
  <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SnapSpotterConnectionString1 %>" SelectCommand="SELECT Spot.RowID, Spot.[Name], Spot.[CollectionID], Spot.ThumbnailURL 
FROM [Spot], SpotToCollection 
WHERE Spot.RowID = SpotToCollection.SpotID
  AND SpotToCollection.CollectionID = @CollectionID">
    <SelectParameters>
      <asp:ControlParameter ControlID="DropDownList1" Name="CollectionID" PropertyName="SelectedValue" DefaultValue="1" />
    </SelectParameters>
  </asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpClientScript" Runat="Server">
</asp:Content>

