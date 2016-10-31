using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using DotWeb;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity;
using Microsoft.Owin.Security;

namespace DotWeb_Admin {
    public partial class Login : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {
            
        }

        protected void btnLogin_Click(object sender, EventArgs e) 
        {
            using (var context = new IdentityDb())
            {
                var userStore = new UserStore<IdentityUser>(context);
                var userManager = new UserManager<IdentityUser>(userStore);
                var user = userManager.Find(tbUserName.Text, tbPassword.Text);

                if (user == null)
                {
                    lblError.Text = "Invalid username or password!";
                    divError.Attributes["class"] = "form-field visible";
                }
                else
                {
                    using (var dotweb = new DotWebDb())
                    {
                        var members = dotweb.UserGroupMembers.Include(m => m.Group).Where(m => m.UserId == user.Id && m.Group.GroupName.Equals("Administrators")).ToList();
                        if (members.Count == 0)
                        {
                            lblError.Text = "Only Administrators allowed!";
                            divError.Attributes["class"] = "form-field visible";
                        }
                        else
                        {
                            var authMgr = HttpContext.Current.GetOwinContext().Authentication;
                            var userIdentity = userManager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);
                            authMgr.SignIn(new AuthenticationProperties() { IsPersistent = false }, userIdentity);
                            using (var appContext = new DotWebDb())
                            {
                                var appUser = appContext.Users.SingleOrDefault(u => u.UserName.Equals(user.UserName, StringComparison.InvariantCultureIgnoreCase));
                                if (appUser != null)
                                {
                                    Session["user"] = appUser;
                                }
                            }
                            Response.Redirect("~/");
                        }
                    }
                }
            }
        }
    }
}