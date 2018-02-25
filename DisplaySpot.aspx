<%@ Page Title="Display Spot" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="DisplaySpot.aspx.cs" Inherits="DisplaySpot" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
  <asp:button id="backButton" runat="server" text="Back" OnClientClick="JavaScript:window.history.back(1);return false;"></asp:button>
<br />
<br />
  <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource2">
    <EmptyDataTemplate>
      <span>No data was returned.</span>
    </EmptyDataTemplate>
     <ItemTemplate>
      <span style="">
      <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' Font-Name="Arial" Bold="false" Font-Size="Larger"/>
      <br />
      <br /></span>
    </ItemTemplate>
  </asp:ListView>
  <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SnapSpotterConnectionString1 %>" SelectCommand="SELECT [Name] FROM [Spot] WHERE ([RowID] = @RowID)">
    <SelectParameters>
      <asp:QueryStringParameter Name="RowID" QueryStringField="SpotID" Type="Int32" />
    </SelectParameters>
  </asp:SqlDataSource>
  <asp:ListView ID="ListView3" runat="server" DataSourceID="SqlDataSource1">
    <EmptyDataTemplate>
      <span>No data was returned.</span>
    </EmptyDataTemplate>
    <ItemTemplate>
      <asp:Image ID="DirectoryandFileLabel" runat="server" ImageURL='<%# Eval("DirectoryandFile") %>' BorderStyle="Solid" BorderColor="Gray" BorderWidth="2" />
      <br />
      <asp:Label ID="NotesLabel" runat="server" Text='<%# Eval("Notes") %>' />
      <br />
      <br />
      <asp:Hyperlink ID="DeepLinkURLLink" runat="server" Text='<%# Eval("DeepLinkName") %>' NavigateURL='<%# Eval("DeepLinkURL") %>' />
      <br />
      <br />
      </span>
    </ItemTemplate>
    <LayoutTemplate>
      <div id="itemPlaceholderContainer" runat="server" style="">
        <span runat="server" id="itemPlaceholder" />
      </div>
      <div style="">
      </div>
    </LayoutTemplate>
  </asp:ListView>
  <asp:button id="Button2" runat="server" text="Back" OnClientClick="JavaScript:window.history.back(1);return false;"></asp:button>
  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SnapSpotterConnectionString1 %>" SelectCommand="SELECT * FROM vDisplaySpot WHERE ([SpotID] = @SpotID)">
    <SelectParameters>
      <asp:QueryStringParameter Name="SpotID" QueryStringField="SpotID" Type="Int32" />
    </SelectParameters>
  </asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpClientScript" Runat="Server">
</asp:Content>

