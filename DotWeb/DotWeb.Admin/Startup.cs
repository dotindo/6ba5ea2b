using DotWeb_Admin;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.Owin;
using Microsoft.Owin.Security.Cookies;
using Owin;
using System;
using System.Threading.Tasks;

[assembly: OwinStartup(typeof(DotWeb.Admin.Startup))]

namespace DotWeb.Admin
{
    public class Startup
    {
        public void Configuration(IAppBuilder app)
        {

        }
    }
}
