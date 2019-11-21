<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewDesignBid.aspx.cs" Inherits="ExpansiveNDB.NewDesignBid" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap-theme.min.css" rel="stylesheet" />
    <script src="scripts/jquery-3.1.1.min.js"></script>
    <script src="scripts/bootstrap.min.js"></script>
    <script src="scripts/NewDesignBid.js"></script>
</head>
<body class="backgroundColorGreen">
    <%--Nav  --%>
    <nav class="navbar navbar-collapse navbar-inverse navbar-fixed-top">
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
                    <%--Projects--%>
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
                            <li><a href="DesignBid.aspx">View Design Bids</a></li>
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

                    <%--DWR--%>
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

    <asp:Panel ID="pnlProtectedContent" runat="server">
        <div class="container">
            <form id="NewDesignForm" class="bodyBackground" runat="server">


                <br />
                <br />
                <br />
                <br />
                Client&nbsp;
        <asp:DropDownList ID="ddlSelectClient" runat="server">
        </asp:DropDownList>
                &nbsp;<asp:Button ID="btnNewClient" runat="server" OnClick="btnNewClient_Click" Text="New Client" />
                <br />
                <br />
                NBD Staff<br />
                <table id="tblStaff" class="table">
                    <tr>
                        <th class="row">Sales Associate</th>
                        <th class="row">
                            <asp:DropDownList ID="ddlChooseSales" runat="server">
                            </asp:DropDownList>
                        </th>
                    </tr>
                    <tr>
                        <th class="row">Designer</th>
                        <th class="row">
                            <asp:DropDownList ID="ddlChooseDesigner" runat="server">
                            </asp:DropDownList>
                        </th>
                    </tr>
                </table>
                <br />
                Project<br />
                Bid Date:
        <asp:Label ID="lblBidDate" runat="server"></asp:Label>
                <table id="tblPlant0" class="table">
                    <tr>
                        <th class="row">Name:</th>
                        <th class="row">
                            <asp:TextBox ID="tbProjName" runat="server"></asp:TextBox>
                        </th>
                        <th class="row">Project Site:</th>
                        <th class="row">
                            <asp:TextBox ID="tbProjSite" runat="server"></asp:TextBox>
                        </th>
                    </tr>
                    <tr>
                        <th class="row">Estimated Begin Date:</th>
                        <th class="row">
                            <asp:TextBox ID="tbBeginDate" runat="server" TextMode="Date"></asp:TextBox>

                        </th>
                        <th class="row">Estimated Completion Date:</th>
                        <th class="row">
                            <asp:TextBox ID="tbCompDate" runat="server" TextMode="Date"></asp:TextBox>
                        </th>
                    </tr>
                </table>
                <br />
                Materials Required:<br />
                <div id="MatRequires">
                    Plants:<br />
                    <input id="btnAddPlant" type="button" value="Add" />
                    <br />
                    <table id="tblPlant" class="table">
                        <tr>
                            <th class="row">Quantity</th>
                            <th class="row">Desctription</th>
                            <th class="row">Size</th>
                            <th class="row">Unit Price</th>
                            <th class="row">Extended Price</th>
                            <th class="row"></th>
                        </tr>
                    </table>
                    Pottery:<br />
                    <input class="btn btn-info" id="btnAddPot" type="button" value="Add" />
                    <br />
                    <table id="tblPot" class="table">
                        <tr>
                            <th class="row">Quantity</th>
                            <th class="row">Desctription</th>
                            <th class="row">Size</th>
                            <th class="row">Unit Price</th>
                            <th class="row">Extended Price</th>
                            <th class="row"></th>
                        </tr>
                    </table>
                    Materials:<br />
                    <input class="btn btn-default" id="btnAddMat" type="button" value="Add" />
                    <table id="tblMat" class="table">
                        <tr>
                            <th class="row">Quantity</th>
                            <th class="row">Desctription</th>
                            <th class="row">Size</th>
                            <th class="row">Unit Price</th>
                            <th class="row">Extended Price</th>
                            <th class="row"></th>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                <br />
                <br />
            </form>
        </div>
    </asp:Panel>
</body>
</html>
