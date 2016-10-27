<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="DotWeb.Admin.Users" %>
<asp:Content ID="pageTitle" ContentPlaceHolderID="PageTitle" runat="server">Users</asp:Content>
<asp:Content ID="content" ContentPlaceHolderID="MainContent" runat="server">
	<dx:ASPxGridView ID="gridView" runat="server" AutoGenerateColumns="false" ClientInstanceName="gridView"
		KeyFieldName="Id" CssClass="gridView">
		<Columns>
			<dx:GridViewCommandColumn ShowDeleteButton="false" ShowEditButton="true" ShowNewButtonInHeader="true" VisibleIndex="0"></dx:GridViewCommandColumn>
            <dx:GridViewDataTextColumn FieldName="UserName" Caption="UserName" Visible="true">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="FirstName" Caption="First Name">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="LastName" Caption="Last Name">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Email" Caption="Email" ReadOnly="true">
            </dx:GridViewDataTextColumn>
		</Columns>
		<Settings ShowGroupPanel="false" />
        <SettingsDetail ShowDetailRow ="true" />
		<SettingsPager PageSize="25" />
        <SettingsBehavior ConfirmDelete="true" />
		<Paddings Padding="0px" />
		<Border BorderWidth="0px" />
		<BorderBottom BorderWidth="1px" />
	</dx:ASPxGridView>

    <ef:EntityDataSource ID="usersDataSource" runat="server" ContextTypeName="DotWeb.IdentityDb" EntitySetName="Users"
        EnableInsert="false" EnableUpdate="true" EnableDelete="false" OrderBy="it.Username">
    </ef:EntityDataSource>
</asp:Content>
