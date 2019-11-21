﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="ExpansiveNDB.User" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap-theme.min.css" rel="stylesheet" />
    <script src="scripts/jquery-3.1.1.min.js"></script>
    <script src="scripts/bootstrap.min.js"></script>
    <style type="text/css">
        .auto-style1 {
            width: 411px;
        }
    </style>
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
                            <li><a href="#">View Projects</a></li>
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

    <form id="form1" runat="server">
    <div>
    
        <asp:Panel ID="pnlProtectedContent" runat="server">
            <table class="table">
                <tr>
                    <td>UserName:</td>
                    <td class="auto-style1">
                        <asp:Label ID="lblUserName" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Random:</td>
                    <td class="auto-style1">
                        <asp:Label ID="lblTwo" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
