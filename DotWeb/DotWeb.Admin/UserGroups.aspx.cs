﻿using DevExpress.Web;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DotWeb.Admin
{
    public partial class UserGroups : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void appFilterComboBox_DataBound(object sender, EventArgs e)
        {
            if (Session["AppId"] != null)
            {
                foreach (ListEditItem item in appFilterComboBox.Items)
                {
                    if (item.Value.ToString() == Session["AppId"].ToString())
                    {
                        appFilterComboBox.SelectedItem = item;
                        break;
                    }
                }
            }
        }

        protected void gridView_Init(object sender, EventArgs e)
        {
            var gridView = (sender as ASPxGridView);
            gridView.ForceDataRowType(typeof(UserGroup));
        }

        protected void gridView_CustomCallback(object sender, DevExpress.Web.ASPxGridViewCustomCallbackEventArgs e)
        {
            if ((string)Session["AppId"] == e.Parameters) return;
            Session["AppId"] = e.Parameters;
            gridView.DataBind();
        }

        protected void gridView_RowUpdating(object sender, DevExpress.Web.Data.ASPxDataUpdatingEventArgs e)
        {

        }

        protected void gridView_CellEditorInitialize(object sender, DevExpress.Web.ASPxGridViewEditorEventArgs e)
        {

        }

        protected void membersGridView_CellEditorInitialize(object sender, DevExpress.Web.ASPxGridViewEditorEventArgs e)
        {

        }

        protected void membersGridView_BeforePerformDataSelect(object sender, EventArgs e)
        {
            Session["GroupId"] = (sender as ASPxGridView).GetMasterRowKeyValue();
        }

        protected void membersGridView_RowUpdating(object sender, DevExpress.Web.Data.ASPxDataUpdatingEventArgs e)
        {

        }

    }
}