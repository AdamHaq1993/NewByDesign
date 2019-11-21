<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClientEntry.aspx.cs" Inherits="ExpansiveNDB.ClientEntry" %>

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
            width: 731px;
        }
        .auto-style2 {
            width: 179px;
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
    <h1>New Client</h1>
    <form id="clientEntryForm" runat="server">
        <asp:Panel ID="pnlProtectedContent" runat="server" Height="40px">
               <asp:Table ID="ClientTable" CssClass="table" runat="server">
                    <asp:TableRow runat="server" ID="NameRow">
                        <asp:TableCell>Name:</asp:TableCell>
                        <asp:TableCell><asp:TextBox ID="txtEditName" runat="server"></asp:TextBox></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server" ID="AddressRow">
                        <asp:TableCell>Address:</asp:TableCell>
                       <asp:TableCell> <asp:TextBox ID="txtEditAddress" runat="server"></asp:TextBox></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server" ID="CityRow">
                        <asp:TableCell>City:</asp:TableCell>
                       <asp:TableCell><asp:DropDownList ID="ddlEditCity" runat="server" DataSourceID="odsClientCity" DataTextField="city" DataValueField="ID"></asp:DropDownList></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server" ID="ProvRow">
                        <asp:TableCell>Province:</asp:TableCell>
                       <asp:TableCell><asp:TextBox ID="txtEditProvince" runat="server"></asp:TextBox></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server" ID="PCodeRow">
                        <asp:TableCell>Postal Code:</asp:TableCell>
                       <asp:TableCell><asp:TextBox ID="txtEditPCode" runat="server"></asp:TextBox></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server" ID="PhoneRow">
                        <asp:TableCell>Phone Number:</asp:TableCell>
                       <asp:TableCell><asp:TextBox ID="txtEditPhone" runat="server"></asp:TextBox></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server" ID="ConFirstRow">
                        <asp:TableCell>Contact First Name:</asp:TableCell>
                       <asp:TableCell><asp:TextBox ID="txtEditConFirst" runat="server"></asp:TextBox></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server" ID="ConLastRow">
                        <asp:TableCell>Contact Last Name:</asp:TableCell>
                       <asp:TableCell><asp:TextBox ID="txtEditConLast" runat="server"></asp:TextBox></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server" ID="ConPosRow">
                        <asp:TableCell>Contact First Name:</asp:TableCell>
                       <asp:TableCell><asp:TextBox ID="txtEditConPos" runat="server"></asp:TextBox></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server" ID="ButtonRow">
                        <asp:TableCell><asp:Button ID="btnSaveChanges" runat="server" Text="Save Changes" onclick="btnSaveChanges_Click" /></asp:TableCell>
                        <asp:TableCell><asp:Button ID="btnClear" runat="server" Text="Cancel" onclick="btnClear_Click"/></asp:TableCell>                        
                    </asp:TableRow>
                </asp:Table>
        </asp:Panel>
        <asp:ObjectDataSource ID="odsClientCity" runat="server" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="NBDLibrary.NBDViewClientDataSetTableAdapters.CITYTableAdapter">
            <InsertParameters>
                <asp:Parameter Name="city" Type="String" />
            </InsertParameters>
        </asp:ObjectDataSource>
    </form>
</div>
</body>
</html>
