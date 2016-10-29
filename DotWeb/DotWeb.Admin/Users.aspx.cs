using DevExpress.Web;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DotWeb.Admin
{
    public partial class Users : System.Web.UI.Page
    {
        protected void Page_Init(object sender, EventArgs e)
        {
            //gridView.DataSource = GetUsers();
        }
        
        protected void Page_Load(object sender, EventArgs e)
        {
            gridView.DataBind();
        }

    }
}