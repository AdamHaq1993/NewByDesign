using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExpansiveNDB
{
    public partial class NewDesignBid : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (User.Identity.IsAuthenticated)
                pnlProtectedContent.Visible = true;
            else
                Response.Redirect("~/Login.aspx");
            lblBidDate.Text = DateTime.Now.ToString("D");
            AddClients();
        }
        protected void btnLogOut_Click(object sender, EventArgs e)
        {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;

            authenticationManager.SignOut();

            Response.Redirect("~/Login.aspx");
        }
        protected void btnNewClient_Click(object sender, EventArgs e)
        {
            Server.Transfer("ClientEntry.aspx");
        }

        private void AddClients()
        {
            ddlSelectClient.Items.Add("Devin Tope");
            ddlSelectClient.Items.Add("Cameron Birch");
            ddlSelectClient.Items.Add("Cassey Fevriere");
            ddlSelectClient.Items.Add("Lucas Gauvreau");
            ddlSelectClient.Items.Add("Adam Haq");
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Server.Transfer("ReviewDesignBid.aspx");
        }
    }
}