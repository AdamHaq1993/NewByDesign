using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using NBDLibrary;
using NBDLibrary.NBDViewClientDataSetTableAdapters;
using System.Data;

namespace ExpansiveNDB
{
    public partial class ViewClients : System.Web.UI.Page
    {
        //reference to the data that remains in memory for entire session
        private static NBDViewClientDataSet dsClient;

        private static DataRow[] rows;

        static ViewClients()
        {
            //load data at the beginning of the session
            dsClient = new NBDViewClientDataSet();
            CLIENTTableAdapter daClient = new CLIENTTableAdapter();
            PROJECTTableAdapter daProject = new PROJECTTableAdapter();
            try
            {
                daClient.Fill(dsClient.CLIENT);
                daProject.Fill(dsClient.PROJECT);
            }
            catch { }
        }

        //click event retrieves clients based on fields from the search criteria
        protected void btnSearchClient_Click(object sender, EventArgs e)
        {
            if (dsClient.CLIENT.Count > 0)
            {
                string criteria = GetClientCriteria();
                rows = (criteria.Length > 0) ? dsClient.CLIENT.Select(criteria) : dsClient.CLIENT.Select();
                DisplayClients();
            }
            else
                this.lblStatus.Text = "No Client Records";
        }
        //event method retrieves clients based on fields from project search
        protected void btnSearchClientProj_Click(object sender, EventArgs e)
        {
            if (dsClient.CLIENT.Count > 0)
            {
                string cliCrit = "";
                string criteria = GetProjectCriteria();
                DataRow[] proRow = (criteria.Length > 0) ? dsClient.PROJECT.Select(criteria) : dsClient.PROJECT.Select();
                foreach (DataRow row in proRow)
                    cliCrit = "cityID =" + row.ItemArray[14].ToString();
                rows = (criteria.Length > 0) ? dsClient.CLIENT.Select(cliCrit) : dsClient.CLIENT.Select();
                DisplayClients();
            }
            else
                this.lblStatus.Text = "No Client Records";
        }

        //get search criteria for the project section
        private string GetProjectCriteria()
        {
            string criteria = "";
            criteria = (this.txtSearchProjName.Text != "") ? "projName Like '*" + this.txtSearchProjName.Text + "*' ": "";
            criteria += (this.txtSearchProjSite.Text != "" && criteria.Length > 0) ? "And projSite Like '*" + this.txtSearchProjSite.Text + "*' "
                : (this.txtSearchProjSite.Text != "") ? "projSite Like '*" + this.txtSearchProjSite.Text + "*' " : "";
            criteria += (this.txtSearchProjPhase.Text != "" && criteria.Length > 0) ? "And projCurrentPhase Like '*" + this.txtSearchProjPhase.Text + "*' "
                : (this.txtSearchProjPhase.Text != "") ? "projCurrentPhase Like '*" + this.txtSearchProjPhase.Text + "*' " : "";
            
            return criteria;
        }

        //get search criteria for the client section
        private string GetClientCriteria()
        {
            string criteria = "";
            criteria = (this.txtSearchName.Text.Length > 0) ? "cliName Like '*" + this.txtSearchName.Text + "*' " : "";
            criteria += (this.txtSearchAddress.Text != "" && criteria.Length > 0) ? "And cliAddress Like '*" + this.txtSearchAddress.Text + "*' "
                : (this.txtSearchAddress.Text != "") ? "projSite Like '*" + this.txtSearchAddress.Text + "*' " : "";
            criteria += (this.ddlSearchCity.SelectedValue != "None" && criteria.Length > 0) ? "And cityID = " + this.ddlSearchCity.SelectedIndex.ToString() + ""
                : (this.ddlSearchCity.SelectedValue != "None") ? "cityID = " + this.ddlSearchCity.SelectedIndex.ToString() + "" : "";
            return criteria;
        }

        //method for displaying client search
        private void DisplayClients()
        {
            this.lbClients.Items.Clear();
            foreach (DataRow row in rows)
                this.lbClients.Items.Add(row.ItemArray[1].ToString() + " - " + row.ItemArray[2].ToString() + " - " + row.ItemArray[6].ToString() + " - " + row.ItemArray[8].ToString() + ", " + row.ItemArray[7].ToString());
            lblStatus.Text = "Search Results: " + ((rows.Length > 0) ? rows.Length.ToString() : "0");
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack) return;
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

        protected void btnClearLB_Click(object sender, EventArgs e)
        {
            lbClients.Items.Clear();
            ClientTable.Visible = false;
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            ClientTable.Visible = false;
        }
        protected void btnSaveChanges_Click(object sender, EventArgs e)
        {
            lblStatus.Text = "Worked";
        }


        //event method to retrieve the selected client
        protected void btnEdit_Click(object sender, EventArgs e)
        {
            ClientTable.Visible = true;
            if (rows.Length > 0 && this.lbClients.SelectedIndex != -1)
            {
                int id = Convert.ToInt32(rows[this.lbClients.SelectedIndex].ItemArray[0]);
                string message = "";
                lblStatus.Text = id.ToString();
                DataRow client = dsClient.CLIENT.FindByID(id);
                if (client != null)
                {
                    this.txtEditName.Text = client.ItemArray[1].ToString();
                    this.txtEditAddress.Text = client.ItemArray[2].ToString();
                    //this.ddlEditCity.SelectedIndex = Convert.ToInt32(client.ItemArray[3].ToString());
                    this.txtEditProvince.Text = client.ItemArray[4].ToString();
                    this.txtEditPCode.Text = client.ItemArray[5].ToString();
                    this.txtEditPhone.Text = client.ItemArray[6].ToString();
                    this.txtEditConFirst.Text = client.ItemArray[7].ToString();
                    this.txtEditConLast.Text = client.ItemArray[8].ToString();
                    this.txtEditConPos.Text = client.ItemArray[9].ToString();
                }
                else
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
            else
                lblStatus.Text = "Search Results: " + ((rows.Length > 0) ? rows.Length.ToString() : "0");
        }
    }
}