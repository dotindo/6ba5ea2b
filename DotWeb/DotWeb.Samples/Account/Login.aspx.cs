using System;
using System.Collections.Generic;
using System.Linq;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using Microsoft.AspNet.Identity.Owin;

namespace DotWeb_Samples {
    public partial class Login : AccountBasePage {
        protected void Page_Load(object sender, EventArgs e) {
            if (!IsPostBack)
            {
                if (User.Identity.IsAuthenticated)
                {
                    //StatusText.Text = string.Format("Hello {0}!!", User.Identity.GetUserName());
                    //LoginStatus.Visible = true;
                    //LogoutButton.Visible = true;
                }
                else
                {
                    //LoginForm.Visible = true;
                }
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e) {
            // Require the user to have a confirmed email before they can log on.
            var userTask = UserManager.FindByNameAsync(tbUserName.Text);
            if (userTask.Result == null)
            {
                lblError.Text = "User not found!";
                divError.Attributes["class"] = "form-field visible";
            }
            else
            {
                // To enable password failures to trigger account lockout, change to shouldLockout: true
                var signInTask = SignInManager.PasswordSignInAsync(tbUserName.Text, tbPassword.Text, isPersistent: false, shouldLockout: false);
                switch (signInTask.Result)
                {
                    case SignInStatus.Success:
                        Session["user"] = userTask.Result;
                        Response.Redirect("~/");
                        break;
                    case SignInStatus.LockedOut:
                        lblError.Text = "Account was locked. Please contact Administrator to unlock it.";
                        break;
                    case SignInStatus.RequiresVerification:
                        lblError.Text = "Account requires verification. Please contact Administrator for assistance.";
                        break;
                    case SignInStatus.Failure:
                    default:
                        lblError.Text = "Sign-in failed. Please check your username and password.";
                        break;
                }
                divError.Attributes["class"] = "form-field visible";
            }
        }
    }
}