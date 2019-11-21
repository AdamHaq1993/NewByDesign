<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateProject.aspx.cs" Inherits="ExpansiveNDB.CreateProject" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap-theme.min.css" rel="stylesheet" />
    <script src="scripts/jquery-3.1.1.min.js"></script>
    <script src="scripts/bootstrap.min.js"></script>
</head>
<body>
  <nav class="navbar navbar-collapse navbar-inverse">
      <div class="container-fluid">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>                        
              </button>
              <a class="navbar-brand" href="#">Natural by Design</a>
            </div>
            <div class="collapse navbar-collapse" id="myNavbar">
                  <ul class="nav navbar-nav">
                    <li><a href="MainMenu.aspx">Home</a></li>
                        <%--projects--%>
                     <li class="dropdown">
                        <a href="#" data-toggle="dropdown" class="dropdown-toggle">Projects <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="ViewProjects.aspx">View Projects</a></li>
  					                <li><a href="CreateProject.aspx">Create Project</a></li>
                        </ul>
                    </li>
                         <%--Clients--%>
                     <li class="dropdown">
                        <a href="#" data-toggle="dropdown" class="dropdown-toggle">Clients <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="ViewClients.aspx">View Clients</a></li>
  				            <li><a href="ClientEntry.aspx">New Client</a></li>
                        </ul>
                    </li>
        
                     <%--Design bid--%>
                    <li class="dropdown">
                        <a href="#" data-toggle="dropdown" class="dropdown-toggle">Design Bids <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="DesignBid.aspx">View Bids</a></li>
  				            <li><a href="NewDesignBid.aspx">New Design Bid</a></li>
                        </ul>
                    </li>

                     <%--production plan--%>
                     <li class="dropdown">
                        <a href="#" data-toggle="dropdown" class="dropdown-toggle">Production Plan <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="ProductionPlan.aspx">Production Plan</a></li>
                        </ul>
                    </li>

                     <%--dwr--%>
                     <li class="dropdown">
                        <a href="#" data-toggle="dropdown" class="dropdown-toggle">Daily Work Reports <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="#">Designer</a></li>
  				            <li><a href="#">Production Worker</a></li>
                        </ul>
                    </li>

                    <li><a href="#">PWR</a></li>
               </ul>
                <ul class="nav navbar-nav navbar-right">
                        <li><a href="login.aspx" onclick="btnLogOut_Click"><span class="glyphicon glyphicon-log-out"></span> Log Out</a></li>
                </ul>
            </div>
      </div>
</nav>
<div class="container">
    <form id="form1" runat="server">
        <asp:Panel ID="pnlProtectedContent" runat="server">
               <asp:Table ID="newProjectTable" CssClass="table" runat="server">
                    <asp:TableRow runat="server" ID="NameRow">
                        <asp:TableCell>Name:</asp:TableCell>
                        <asp:TableCell><asp:TextBox ID="txtProjName" runat="server"></asp:TextBox></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server" ID="SiteRow">
                        <asp:TableCell>Site:</asp:TableCell>
                       <asp:TableCell><asp:TextBox ID="txtProjSite" runat="server"></asp:TextBox></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server" ID="BidRow">
                        <asp:TableCell>Design Bid Date:</asp:TableCell>
                       <asp:TableCell><asp:TextBox ID="txtProjBidDate" runat="server" TextMode="Date" ReadOnly="true"></asp:TextBox></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server" ID="EstStartRow">
                        <asp:TableCell>Estimated Start Date:</asp:TableCell>
                       <asp:TableCell><asp:TextBox ID="txtProjEstStart" runat="server" TextMode="Date"></asp:TextBox></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server" ID="EstEndRow">
                        <asp:TableCell>Estimated End Date:</asp:TableCell>
                       <asp:TableCell><asp:TextBox ID="txtProjEstEnd" runat="server" TextMode="Date"></asp:TextBox></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server" ID="ActStartRow">
                        <asp:TableCell>Actual Start Date:</asp:TableCell>
                       <asp:TableCell><asp:TextBox ID="txtProjActStart" runat="server" TextMode="Date"></asp:TextBox></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server" ID="ActEndRow">
                        <asp:TableCell>Actual End Date:</asp:TableCell>
                       <asp:TableCell><asp:TextBox ID="txtProjActEnd" runat="server" TextMode="Date"></asp:TextBox></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server" ID="EstCostRow">
                        <asp:TableCell>Estimated Cost:</asp:TableCell>
                       <asp:TableCell><asp:TextBox ID="txtProjEstCost" runat="server"></asp:TextBox></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server" ID="ActCostRow">
                        <asp:TableCell>Actual Cost:</asp:TableCell>
                       <asp:TableCell><asp:TextBox ID="txtProjActCost" runat="server"></asp:TextBox></asp:TableCell>
                    </asp:TableRow>
                   <asp:TableRow runat="server" ID="CliAppRow">
                        <asp:TableCell>Customer Approval:</asp:TableCell>
                       <asp:TableCell><asp:CheckBox ID="chkProjCliApp" runat="server"/></asp:TableCell>
                    </asp:TableRow>
                   <asp:TableRow runat="server" ID="MgmtAppRow">
                        <asp:TableCell>Management Approval:</asp:TableCell>
                       <asp:TableCell><asp:CheckBox ID="chkProjMgmtApp" runat="server"/></asp:TableCell>
                    </asp:TableRow>
                   <asp:TableRow runat="server" ID="PhaseRow">
                        <asp:TableCell>Current Phase:</asp:TableCell>
                       <asp:TableCell><asp:TextBox ID="txtProjPhase" runat="server"></asp:TextBox></asp:TableCell>
                    </asp:TableRow>
                   <asp:TableRow runat="server" ID="FlagRow">
                        <asp:TableCell>Flag:</asp:TableCell>
                       <asp:TableCell><asp:CheckBox ID="chkProjFlag" runat="server"/></asp:TableCell>
                    </asp:TableRow>
                   <asp:TableRow runat="server" ID="ClientRow">
                       <asp:TableCell>Client:</asp:TableCell>
                       <asp:TableCell><asp:DropDownList ID="ddlClientID" runat="server"></asp:DropDownList></asp:TableCell>
                   </asp:TableRow>
                   <asp:TableRow runat="server" ID="DesignRow">
                       <asp:TableCell>Designer:</asp:TableCell>
                       <asp:TableCell><asp:DropDownList ID="ddlDesignerID" runat="server"></asp:DropDownList></asp:TableCell>
                   </asp:TableRow>
                    <asp:TableRow runat="server" ID="ButtonRow">
                        <asp:TableCell><asp:Button ID="btnSaveChanges" runat="server" Text="Save Changes" /></asp:TableCell>
                        <asp:TableCell><asp:Button ID="btnClear" runat="server" Text="Clear"/></asp:TableCell>                        
                    </asp:TableRow>
                </asp:Table>
        </asp:Panel>
    </form>
</div>
</body>
</html>
