<%@ Page Title="Add New Spot" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="NewSpot.aspx.cs" Inherits="NewSpot" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
  <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="RowID" DataSourceID="EntityDataSource1" DefaultMode="Insert" Height="50px" Width="125px">
    <Fields>
      <asp:BoundField DataField="RowID" HeaderText="RowID" ReadOnly="True" SortExpression="RowID" InsertVisible="false" />
      <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
      <asp:BoundField DataField="Latitude" HeaderText="Latitude" SortExpression="Latitude" />
      <asp:BoundField DataField="Longitude" HeaderText="Longitude" SortExpression="Longitude" />
      <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
      <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
      <asp:BoundField DataField="ZipCode" HeaderText="ZipCode" SortExpression="ZipCode" />
      <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Notes" />
      <asp:BoundField DataField="CollectionID" HeaderText="CollectionID" SortExpression="CollectionID" />
      <asp:BoundField DataField="TourID" HeaderText="TourID" SortExpression="TourID" />
      <asp:CommandField ShowInsertButton="True" />
    </Fields>
  </asp:DetailsView>
  <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=SnapSpotterEntities" DefaultContainerName="SnapSpotterEntities" EnableFlattening="False" EnableInsert="True" EntitySetName="Spots" OnInserted="EntityDataSource1_Inserted">
  </asp:EntityDataSource>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpClientScript" Runat="Server">
</asp:Content>

