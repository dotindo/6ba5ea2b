<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeBehind="Roles.aspx.cs" Inherits="DotWeb.Admin.Roles" %>
<asp:Content ID="pageTitle" ContentPlaceHolderID="PageTitle" runat="server">Roles</asp:Content>
<asp:Content ID="content" ContentPlaceHolderID="MainContent" runat="server">
        <dx:ASPxFormLayout ID="filterLayout" runat="server" CssClass="filterFormLayout">
        <Items>
            <dx:LayoutItem Caption="Application:">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer runat="server">
                        <dx:ASPxComboBox ID="appFilterComboBox" runat="server"
                            DataSourceID="appsDataSource"
                            ValueField="Id"
                            ValueType="System.Int32"
                            TextField="Name"
                            DropDownStyle="DropDown"
                            OnDataBound="appFilterComboBox_DataBound">
                            <ClientSideEvents SelectedIndexChanged="function(s,e) { gridView.PerformCallback(s.GetValue()); }" />
                        </dx:ASPxComboBox>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
            </dx:LayoutItem>
        </Items>
    </dx:ASPxFormLayout>

	<dx:ASPxGridView ID="gridView" runat="server" AutoGenerateColumns="false" DataSourceID="rolesDataSource" ClientInstanceName="gridView"
		KeyFieldName="Id" CssClass="gridView" OnCustomColumnDisplayText="gridView_CustomColumnDisplayText" OnCustomCallback="gridView_CustomCallback"
        OnRowUpdating="gridView_RowUpdating" OnCellEditorInitialize="gridView_CellEditorInitialize">
		<Columns>
			<dx:GridViewCommandColumn ShowDeleteButton="false" ShowEditButton="true" ShowNewButtonInHeader="false" VisibleIndex="0"></dx:GridViewCommandColumn>
            <dx:GridViewDataTextColumn FieldName="Id" Caption="Id" Visible="false">
                <PropertiesTextEdit>
                    <ValidationSettings RequiredField-IsRequired="true" />
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Name" Caption="Name">
                <PropertiesTextEdit>
                    <ValidationSettings RequiredField-IsRequired="true" />
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Description" Caption="Description">
            </dx:GridViewDataTextColumn>
		</Columns>
        <Templates>
            <DetailRow>
                <div style="padding: 3px">
                    <dx:ASPxPageControl ID="pageControl" runat="server" Width="100%" EnableCallBacks="true">
                        <TabPages>
                            <dx:TabPage Text="Permissions" Visible="true">
                                <ContentCollection>
                                    <dx:ContentControl runat="server">
                                        <dx:ASPxGridView ID="permissionsGridView" runat="server" AutoGenerateColumns="false" DataSourceID="permissionsDataSource" 
                                            ClientInstanceName="permissionsGridView" KeyFieldName="Id" CssClass="gridView" OnCellEditorInitialize="permissionsGridView_CellEditorInitialize"
                                            OnBeforePerformDataSelect="permissionsGridView_BeforePerformDataSelect" OnRowUpdating="permissionsGridView_RowUpdating">
                                            <Columns>
			                                    <dx:GridViewCommandColumn ShowDeleteButton="true" ShowEditButton="false" ShowNewButtonInHeader="true" VisibleIndex="0"></dx:GridViewCommandColumn>
                                                <dx:GridViewDataTextColumn FieldName="Id" Caption="Id" Visible="false">
                                                    <PropertiesTextEdit>
                                                        <ValidationSettings RequiredField-IsRequired="true" />
                                                    </PropertiesTextEdit>
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn FieldName="Name" Caption="Name" ReadOnly="true">
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn FieldName="PermissionType" Caption="Permission">
                                                    <PropertiesTextEdit>
                                                        <ValidationSettings RequiredField-IsRequired="true" />
                                                    </PropertiesTextEdit>
                                                </dx:GridViewDataTextColumn>
                                            </Columns>
		                                    <Settings ShowGroupPanel="false" />
		                                    <SettingsPager PageSize="25" />
                                            <SettingsBehavior ConfirmDelete="true" />
		                                    <Paddings Padding="0px" />
		                                    <Border BorderWidth="0px" />
                                        </dx:ASPxGridView>
                                    </dx:ContentControl>
                                </ContentCollection>
                            </dx:TabPage>
                            <dx:TabPage Text="Children" Visible="true">
                                <ContentCollection>
                                    <dx:ContentControl runat="server">
                                        <dx:ASPxGridView ID="relationsGridView" runat="server" AutoGenerateColumns="false" DataSourceID="relationsDataSource" 
                                            ClientInstanceName="relationsGridView" KeyFieldName="Id" CssClass="gridView" 
                                            OnBeforePerformDataSelect="relationsGridView_BeforePerformDataSelect" OnRowUpdating="relationsGridView_RowUpdating">
                                            <Columns>
			                                    <dx:GridViewCommandColumn ShowDeleteButton="false" ShowEditButton="true" ShowNewButtonInHeader="false" VisibleIndex="0"></dx:GridViewCommandColumn>
                                                <dx:GridViewDataTextColumn FieldName="Id" Caption="Id" Visible="false">
                                                    <PropertiesTextEdit>
                                                        <ValidationSettings RequiredField-IsRequired="true" />
                                                    </PropertiesTextEdit>
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataComboBoxColumn FieldName="ChildId" Caption="Child Table" ReadOnly="true">
                                                    <PropertiesComboBox DataSourceID="tablesDataSource" ValueField="Id" TextField="Name">
                                                    </PropertiesComboBox>
                                                </dx:GridViewDataComboBoxColumn>
                                                <dx:GridViewDataTextColumn FieldName="ForeignKeyName" Caption="Foreign Key Name" ReadOnly="true">
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn FieldName="Name" Caption="Name" ReadOnly="true">
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataCheckColumn FieldName="IsRendered" Caption="Is Rendered">
                                                </dx:GridViewDataCheckColumn>
                                            </Columns>
		                                    <Settings ShowGroupPanel="false" />
		                                    <SettingsPager PageSize="25" />
                                            <SettingsBehavior ConfirmDelete="true" />
		                                    <Paddings Padding="0px" />
		                                    <Border BorderWidth="0px" />
                                        </dx:ASPxGridView>
                                    </dx:ContentControl>
                                </ContentCollection>
                            </dx:TabPage>
                        </TabPages>
                    </dx:ASPxPageControl>
                </div>
            </DetailRow>
        </Templates>
		<Settings ShowGroupPanel="false" />
        <SettingsDetail ShowDetailRow ="true" />
		<SettingsPager PageSize="25" />
        <SettingsBehavior ConfirmDelete="true" />
		<Paddings Padding="0px" />
		<Border BorderWidth="0px" />
		<BorderBottom BorderWidth="1px" />
	</dx:ASPxGridView>

    <ef:EntityDataSource ID="tablesDataSource" runat="server" ContextTypeName="DotWeb.DotWebDb" EntitySetName="Tables"
        EnableInsert="false" EnableUpdate="true" EnableDelete="true" AutoGenerateWhereClause="true" OrderBy="it.Name">
        <WhereParameters>
            <asp:SessionParameter Name="AppId" SessionField="AppId" DefaultValue="0" DbType="Int32" />
        </WhereParameters>
    </ef:EntityDataSource>
    <ef:EntityDataSource ID="columnsDataSource" runat="server" ContextTypeName="DotWeb.DotWebDb" EntitySetName="Columns"
        EnableInsert="false" EnableUpdate="true" EnableDelete="true" AutoGenerateWhereClause="true" OrderBy="it.Name">
        <WhereParameters>
            <asp:SessionParameter Name="TableId" SessionField="TableId" Type="Int32" />
        </WhereParameters>
    </ef:EntityDataSource>
    <ef:EntityDataSource ID="relationsDataSource" runat="server" ContextTypeName="DotWeb.DotWebDb" EntitySetName="TableRelations"
        EnableInsert="false" EnableUpdate="true" EnableDelete="true" Where="it.ParentId = @TableId" OrderBy="it.ForeignKeyName">
        <WhereParameters>
            <asp:SessionParameter Name="TableId" SessionField="TableId" Type="Int32" />
        </WhereParameters>
    </ef:EntityDataSource>

    <ef:EntityDataSource ID="appsDataSource" runat="server" ContextTypeName="DotWeb.DotWebDb" EntitySetName="Apps" />

</asp:Content>
