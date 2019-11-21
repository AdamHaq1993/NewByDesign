using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExpansiveNDB
{
    public partial class DesignBud : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (User.Identity.IsAuthenticated)
            //    pnlProtectedContent.Visible = true;
            //else
            //    Response.Redirect("~/Login.aspx");

            if (Page.IsPostBack) return;

            lbDesignBidList.Items.Add("Design Bid One");
            lbDesignBidList.Items.Add("Design Bid Two");
            lbDesignBidList.Items.Add("Design Bid Three");
            lbDesignBidList.Items.Add("Design Bid Four");
        }
        protected void btnLogOut_Click(object sender, EventArgs e)
        {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;

            authenticationManager.SignOut();

            Response.Redirect("~/Login.aspx");
        }

        protected void btnCreateBid_Click(object sender, EventArgs e)
        {
            Server.Transfer("NewDesignBid.aspx", true);
        }

        protected void btnDesignEdit_Click(object sender, EventArgs e)
        {
            Server.Transfer("NewDesignBid.aspx", true);
        }
    }
}