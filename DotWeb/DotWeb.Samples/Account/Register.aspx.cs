using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity;
using Microsoft.Owin.Security;
using DotWeb;

namespace DotWeb_Samples {
    public partial class Register : AccountBasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnCreateUser_Click(object sender, EventArgs e)
        {
            try 
            {
                var appUser = new ApplicationUser { UserName = tbUserName.Text, FirstName = tbFirstName.Text, LastName = tbLastName.Text, Email = tbEmail.Text };
                var result = UserManager.Create(appUser, tbPassword.Text);

                if (result.Succeeded)
                {
                    Response.Redirect(Request.QueryString["ReturnUrl"] ?? "~/Account/RegisterSuccess.aspx");
                }
                else
                {
                    lblError.Text = "";
                    foreach (var error in result.Errors)
                        lblError.Text += error;
                    divError.Attributes["class"] = "form-field visible";
                }
            }
            catch (Exception ex)
            {
                lblError.Text = ex.Message;
            }
        }
    }
}