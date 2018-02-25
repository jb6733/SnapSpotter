<%@ Page Title="All Snapshot Spots" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="Browse.aspx.cs" Inherits="Browse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
  <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="EntityDataSource1" DataTextField="Name" DataValueField="RowID">
  </asp:DropDownList>
  <br />
  <br />
  <asp:ListView ID="ListView1" runat="server" DataKeyNames="RowID" DataSourceID="EntityDataSource2" ItemType="SnapSpotterModel.Snapshot">

    <EmptyDataTemplate>
      <span>No data was returned.</span>
    </EmptyDataTemplate>

    <ItemTemplate>
      <span style="">
      <br />
      <asp:Image ID="Image1" runat="server" ImageUrl='<%# Item.DirectoryandFile %>' ToolTip='<%# Item.Name %>'/>
      <br />
      <asp:Label ID="NotesLabel" runat="server" Text='<%# Item.Notes %>' />
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
  <asp:EntityDataSource ID="EntityDataSource2" runat="server" AutoGenerateWhereClause="True" ConnectionString="name=SnapSpotterEntities1" DefaultContainerName="SnapSpotterEntities1" EnableFlattening="False" EntitySetName="Snapshots" Where="">
    <WhereParameters>
      <asp:ControlParameter ControlID="DropDownList1" Name="SpotID" PropertyName="SelectedValue" Type="Int32" />
    </WhereParameters>
  </asp:EntityDataSource>
  <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=SnapSpotterEntities1" DefaultContainerName="SnapSpotterEntities1" EnableFlattening="False" EntitySetName="Spots" Select="it.[RowID], it.[Name]">
  </asp:EntityDataSource>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpClientScript" Runat="Server">
</asp:Content>

