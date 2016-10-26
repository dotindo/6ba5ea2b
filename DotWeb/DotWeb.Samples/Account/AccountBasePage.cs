using DotWeb;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.Owin.Host.SystemWeb;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DotWeb_Samples
{
    public class AccountBasePage : System.Web.UI.Page
    {
        protected UserManager<ApplicationUser> userManager;
        protected SignInManager<ApplicationUser, string> signInManager;

        public virtual SignInManager<ApplicationUser, string> SignInManager
        {
            get { return signInManager ?? HttpContext.Current.GetOwinContext().Get<ApplicationSignInManager>(); }
            protected set { signInManager = value; }
        }

        public virtual UserManager<ApplicationUser> UserManager
        {
            get { return userManager ?? HttpContext.Current.GetOwinContext().GetUserManager<ApplicationUserManager>(); }
            protected set { userManager = value; }
        }

    }
}