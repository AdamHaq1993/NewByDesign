using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;


namespace ExpansiveNDB
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            tbUsername.Focus();
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            UserStore<IdentityUser> userStore = new UserStore<IdentityUser>();
            UserManager<IdentityUser> manager = new UserManager<IdentityUser>(userStore);

            IdentityUser user = manager.Find(tbUsername.Text, tbPassword.Text);

            if (user == null)
            {
                lblStatus.Text = "Username or password is incorrect.";
            }
            else
            {
                var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;

                var userIdentity = manager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);

                authenticationManager.SignIn(userIdentity);

                Response.Redirect("~/MainMenu.aspx");

            }

            //switch (tbUsername.Text)
            //{
            //    case "Designer":
            //        Server.Transfer("DesignBid.aspx", true);
            //        break;
            //    case "Manager":
            //        Server.Transfer("MainMenu.aspx", true);
            //        break;
            //    default:
            //        lblStatus.Text = "Invalid Username";
            //        break;
            //}
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            Server.Transfer("Register.aspx");
        }
    }
}