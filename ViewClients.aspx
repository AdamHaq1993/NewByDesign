<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewClients.aspx.cs" Inherits="ExpansiveNDB.ViewClients" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Clients</title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap-theme.min.css" rel="stylesheet" />
    <script src="scripts/jquery-3.1.1.min.js"></script>
    <script src="scripts/bootstrap.min.js"></script>
    <style type="text/css">
        .auto-style2 {
            width: 131px;
            height: 20px;
        }
        .auto-style3 {
            height: 20px;
        }
        .auto-style4 {
            width: 10px;
        }
        .auto-style5 {
            height: 20px;
            width: 10px;
        }
        .auto-style7 {
            height: 22px;
        }
        .auto-style8 {
            width: 10px;
            height: 22px;
        }
        .auto-style11 {
            width: 131px
        }
        .auto-style12 {
            width: 131px;
            height: 22px;
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
    <h1>Client Search/Edit</h1>
    <form id="clientForm" runat="server">  
        <asp:Panel ID="pnlProtectedContent" runat="server">
            <div>
                <%--<asp:Table ID="SearchTable" CssClass="table table-responsive" runat="server">
                    <asp:TableRow runat="server" ID="TableRow1">
                        <asp:TableCell class="auto-style11"><h4>Search by:</h4></asp:TableCell>
                        <asp:TableCell>&nbsp;</asp:TableCell>
                        <asp:TableCell>&nbsp;</asp:TableCell>
                        <asp:TableCell>&nbsp;</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server" ID="Row1">
                        <asp:TableCell class="auto-style11">Name:</asp:TableCell>
                        <asp:TableCell>
                            <asp:TextBox ID="TextBox1" runat="server" TabIndex="1"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>Project Name:</asp:TableCell>
                        <asp:TableCell class="auto-style4">
                            <asp:TextBox ID="TextBox2" runat="server" TabIndex="5"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server" ID="Row2">
                        <asp:TableCell class="auto-style2">Address:</asp:TableCell>
                        <asp:TableCell class="auto-style3">
                            <asp:TextBox ID="TextBox3" runat="server" TabIndex="2"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell class="auto-style3">Project Site:</asp:TableCell>
                        <asp:TableCell class="auto-style5">
                            <asp:TextBox ID="TextBox4" runat="server" TabIndex="6"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server" ID="Row3">
                        <asp:TableCell class="auto-style12">City:</asp:TableCell>
                        <asp:TableCell class="auto-style7">
                            <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="asp:TableRow runat="server" ID="NameRow"ue" DataSourceID="odsClientCity" DataTextField="city" DataValueField="ID">
                                <asp:ListItem Selected="asp:TableRow runat="server" ID="NameRow"ue">None</asp:ListItem>
                            </asp:DropDownList>
                        </asp:TableCell>
                        <asp:TableCell class="auto-style7">Project Phase:</asp:TableCell>
                        <asp:TableCell class="auto-style8">
                            <asp:TextBox ID="TextBox5" runat="server" TabIndex="7"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server" ID="Row4">
                        <asp:TableCell class="auto-style12">&nbsp;</asp:TableCell>
                        <asp:TableCell class="auto-style7">
                            <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Search"  TabIndex="4" OnClick="btnSearchClient_Click"/>
                        </asp:TableCell>
                        <asp:TableCell class="auto-style7">&nbsp;</asp:TableCell>
                        <asp:TableCell class="auto-style8">
                            <asp:Button ID="Button2" class="btn btn-primary" runat="server" Text="Search" TabIndex="8" OnClick="btnSearchClientProj_Click"/>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>--%>
                <table class="table table-responsive">
                    <tr>
                        <td class="auto-style11"><h4>Search by:</h4></td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style11">Name:</td>
                        <td>
                            <asp:TextBox ID="txtSearchName" runat="server" TabIndex="1"></asp:TextBox>
                        </td>
                        <td>Project Name:</td>
                        <td class="auto-style4">
                            <asp:TextBox ID="txtSearchProjName" runat="server" TabIndex="5"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Address:</td>
                        <td class="auto-style3">
                            <asp:TextBox ID="txtSearchAddress" runat="server" TabIndex="2"></asp:TextBox>
                        </td>
                        <td class="auto-style3">Project Site:</td>
                        <td class="auto-style5">
                            <asp:TextBox ID="txtSearchProjSite" runat="server" TabIndex="6"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style12">City:</td>
                        <td class="auto-style7">
                            <asp:DropDownList ID="ddlSearchCity" runat="server" AppendDataBoundItems="True" DataSourceID="odsClientCity" DataTextField="city" DataValueField="ID">
                                <asp:ListItem Selected="True">None</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td class="auto-style7">Project Phase:</td>
                        <td class="auto-style8">
                            <asp:TextBox ID="txtSearchProjPhase" runat="server" TabIndex="7"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style12">&nbsp;</td>
                        <td class="auto-style7">
                            <asp:Button ID="btnSearchClient" class="btn btn-primary" runat="server" Text="Search"  TabIndex="4" OnClick="btnSearchClient_Click"/>
                        </td>
                        <td class="auto-style7">&nbsp;</td>
                        <td class="auto-style8">
                            <asp:Button ID="btnSearchClientProj" class="btn btn-primary" runat="server" Text="Search" TabIndex="8" OnClick="btnSearchClientProj_Click"/>
                        </td>
                    </tr>
                </table>
                <asp:Label ID="lblStatus" runat="server"></asp:Label>
                <br />
                <asp:ListBox ID="lbClients" CssClass="form-control" runat="server"></asp:ListBox>
                <asp:Button ID="btnEdit" runat="server" class="btn btn-primary" Text="Edit" OnClick="btnEdit_Click" />
                &nbsp;&nbsp;
                <asp:Button ID="btnClearLB" runat="server" class="btn btn-primary" OnClick="btnClearLB_Click" Text="Clear" />
                <br />
                <br />
                <asp:Table ID="ClientTable" CssClass="table" runat="server" Visible="false">
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
                        <asp:TableCell><asp:Button ID="btnCancel" runat="server" Text="Cancel" onclick="btnCancel_Click"/></asp:TableCell>                        
                    </asp:TableRow>
                </asp:Table>
                <br />
                <br />
                <br />
                <asp:ObjectDataSource ID="odsClientCity" runat="server" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="NBDLibrary.NBDViewClientDataSetTableAdapters.CITYTableAdapter">
                    <InsertParameters>
                        <asp:Parameter Name="city" Type="String" />
                    </InsertParameters>
                </asp:ObjectDataSource>
                <asp:ObjectDataSource ID="odsClients" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="NBDLibrary.NBDViewClientDataSetTableAdapters.CLIENTTableAdapter" UpdateMethod="Update">
                    <UpdateParameters>
                        <asp:Parameter Name="cliName" Type="String" />
                        <asp:Parameter Name="cliAddress" Type="String" />
                        <asp:Parameter Name="cityID" Type="Int32" />
                        <asp:Parameter Name="cliProvince" Type="String" />
                        <asp:Parameter Name="cliPCode" Type="String" />
                        <asp:Parameter Name="cliPhone" Type="String" />
                        <asp:Parameter Name="cliConFName" Type="String" />
                        <asp:Parameter Name="cliConLName" Type="String" />
                        <asp:Parameter Name="cliConPosition" Type="String" />
                        <asp:Parameter Name="Original_ID" Type="Int32" />
                        <asp:Parameter Name="Original_cliName" Type="String" />
                        <asp:Parameter Name="Original_cliAddress" Type="String" />
                        <asp:Parameter Name="Original_cityID" Type="Int32" />
                        <asp:Parameter Name="Original_cliProvince" Type="String" />
                        <asp:Parameter Name="Original_cliPCode" Type="String" />
                        <asp:Parameter Name="Original_cliPhone" Type="String" />
                        <asp:Parameter Name="Original_cliConFName" Type="String" />
                        <asp:Parameter Name="Original_cliConLName" Type="String" />
                        <asp:Parameter Name="Original_cliConPosition" Type="String" />
                    </UpdateParameters>
                </asp:ObjectDataSource>
                <br />
            </div>
        </asp:Panel>
    </form>
</div>
</body>
</html>
