using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using NBDLibrary;
using NBDLibrary.NBDViewClientDataSetTableAdapters;


namespace ExpansiveNDB
{
    public partial class ClientEntry : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (User.Identity.IsAuthenticated)
                pnlProtectedContent.Visible = true;
            else
                Response.Redirect("~/Login.aspx");
        }
        protected void btnLogOut_Click(object sender, EventArgs e)
        {
        var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;

        authenticationManager.SignOut();

        Response.Redirect("~/Login.aspx");
        }

        protected void btnSaveChanges_Click(object sender, EventArgs e)
        {

        }
        protected void btnClear_Click(object sender, EventArgs e)
        {
            this.txtEditName.Text = "";
            this.txtEditAddress.Text = "";
            this.ddlEditCity.SelectedIndex = 1;
            this.txtEditProvince.Text = "";
            this.txtEditPCode.Text = "";
            this.txtEditPhone.Text = "";
            this.txtEditConFirst.Text = "";
            this.txtEditConLast.Text = "";
            this.txtEditConPos.Text = "";
        }


    }

    
}