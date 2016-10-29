<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="DotWeb.Admin.Users" %>
<asp:Content ID="pageTitle" ContentPlaceHolderID="PageTitle" runat="server">Users</asp:Content>
<asp:Content ID="content" ContentPlaceHolderID="MainContent" runat="server">
	<dx:ASPxGridView ID="gridView" runat="server" AutoGenerateColumns="false" ClientInstanceName="gridView"
		KeyFieldName="Id" CssClass="gridView">
		<Columns>
			<%--<dx:GridViewCommandColumn ShowDeleteButton="false" ShowEditButton="false" ShowNewButtonInHeader="false" VisibleIndex="0"></dx:GridViewCommandColumn>--%>
            <dx:GridViewDataTextColumn FieldName="UserName" Caption="UserName" Visible="true">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="FirstName" Caption="First Name">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="LastName" Caption="Last Name">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Email" Caption="Email">
            </dx:GridViewDataTextColumn>
		</Columns>
		<Settings ShowGroupPanel="false" />
		<SettingsPager PageSize="25" />
        <SettingsBehavior ConfirmDelete="true" />
		<Paddings Padding="0px" />
		<Border BorderWidth="0px" />
		<BorderBottom BorderWidth="1px" />
	</dx:ASPxGridView>
</asp:Content>
