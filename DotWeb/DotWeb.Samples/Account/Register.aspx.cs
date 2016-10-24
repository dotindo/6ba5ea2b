using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity;

namespace DotWeb_Samples {
    public partial class Register : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {
            
        }

        protected void btnCreateUser_Click(object sender, EventArgs e)
        {
            try 
            {
                //MembershipUser user = Membership.CreateUser(tbUserName.Text, tbPassword.Text, tbEmail.Text);
                //Response.Redirect(Request.QueryString["ReturnUrl"] ?? "~/Account/RegisterSuccess.aspx");

                // Default UserStore constructor uses the default connection string named: DefaultConnection
                var userStore = new UserStore<IdentityUser>();
                var manager = new UserManager<IdentityUser>(userStore);

                var user = new IdentityUser() { UserName = tbUserName.Text, Email = tbEmail.Text };
                IdentityResult result = manager.Create(user, tbPassword.Text);

                if (result.Succeeded)
                {
                    Response.Redirect(Request.QueryString["ReturnUrl"] ?? "~/Account/RegisterSuccess.aspx");
                }
                else
                {
                    
                }
            }
            catch (MembershipCreateUserException exc)
            {
                if (exc.StatusCode == MembershipCreateStatus.DuplicateEmail || exc.StatusCode == MembershipCreateStatus.InvalidEmail)
                {
                    tbEmail.ErrorText = exc.Message;
                    tbEmail.IsValid = false;
                }
                else if (exc.StatusCode == MembershipCreateStatus.InvalidPassword)
                {
                    tbPassword.ErrorText = exc.Message;
                    tbPassword.IsValid = false;
                }
                else
                {
                    tbUserName.ErrorText = exc.Message;
                    tbUserName.IsValid = false;
                }
            }
        }
    }
}