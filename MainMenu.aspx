<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainMenu.aspx.cs" Inherits="ExpansiveNDB.MainMenu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Menu</title>
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
                    <li class="active"><a href="#">Home</a></li>
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
                    <li><a href="login.aspx" onclick="btnLogOut_Click"><span class="glyphicon glyphicon-log-out"></span>Log Out</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <form id="form1" runat="server">
        <asp:Panel ID="pnlProtectedContent" runat="server">
            <div class="container">
                <div class="well">
                    <div class="media">
                        <div class="media-left">
                            <img src="images/avator.png" class="media-object" style="width: 60px" />
                        </div>
                        <div class="media-body">
                            <h4 class="media-heading">Welcome!</h4>
                            <p>Natural by Design's first web based program. </p>
                        </div>
                    </div>
                </div>
                <div class="well">
                    <div class="media">
                        <div class="media-left">
                            <img src="images/avator.png" class="media-object" style="width: 60px">
                        </div>
                        <div class="media-body">
                            <h4 class="media-heading">John Doe</h4>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                        </div>
                        
                    </div>
                </div>
                <div class="well">
                    Natural by Design
                </div>
                <div class="well">
                    Natural by Design
                </div>
                <div class="well">
                    Natural by Design
                </div>
            </div>
        </asp:Panel>
    </form>
</body>
</html>
