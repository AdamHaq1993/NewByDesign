﻿using System;
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
    public partial class Register : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {
            tbUsername.Focus();
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            UserStore<IdentityUser> userStore = new UserStore<IdentityUser>();
            UserManager<IdentityUser> manager = new UserManager<IdentityUser>(userStore);

            IdentityUser user = new IdentityUser(tbUsername.Text);
            IdentityResult idResult = manager.Create(user, tbPassword.Text);

            if (idResult.Succeeded)
            {
                lblStatus.Text = "User " + user.UserName + " was created successfully!";
                var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
                var userIdentity = manager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);

                authenticationManager.SignIn(userIdentity);

                Response.Redirect("~/MainMenu.aspx");
            }        
            else
                lblStatus.Text = idResult.Errors.FirstOrDefault();
        }
    }
}