<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="ExpansiveNDB.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register New User</title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap-theme.min.css" rel="stylesheet" />
    <script src="scripts/jquery-3.1.1.min.js"></script>
    <script src="scripts/bootstrap.min.js"></script>
    <style type="text/css">
        .auto-style1 {
            width: 152px;
        }
        .auto-style2 {
            width: 152px;
            height: 49px;
        }
        .auto-style3 {
            height: 49px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container well well-lg" style="width: 471px" id="tblRegister">
    
            <h2>Register New User:</h2>
            <table style="width:100%;" class="table">
                <tr>
                    <td class="auto-style1">Username:<asp:RequiredFieldValidator ID="rfvUsername" runat="server" ControlToValidate="tbUsername" ErrorMessage="Username is Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                    <td>
            <asp:TextBox class="form-control" ID="tbUsername" runat="server" TabIndex="1"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style2">Password:<asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="tbPassword" ErrorMessage="Password is Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style3"><asp:TextBox class="form-control" ID="tbPassword" runat="server" TabIndex="2" TextMode="Password"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style1">Confirm Password:<asp:CompareValidator ID="cvPassword" runat="server" ControlToCompare="tbPassword" ControlToValidate="tbConfPass" ErrorMessage="Passwords do not match." ForeColor="Red">*</asp:CompareValidator>
            
                        <asp:RequiredFieldValidator ID="rfvConfPass" runat="server" ControlToValidate="tbConfPass" ErrorMessage="Password Confirmation Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                    <td><asp:TextBox class="form-control" ID="tbConfPass" runat="server" TabIndex="3" TextMode="Password"></asp:TextBox></td>
                </tr>
           </table>
            
            <asp:ValidationSummary ID="vsRegister" runat="server" ForeColor="Red" />
            <asp:Label ID="lblStatus" runat="server" ForeColor="Red"></asp:Label>
            
            <br />
            <asp:Button ID="btnRegister" runat="server" Text="Register" class="btn btn-primary" OnClick="btnRegister_Click"  TabIndex="4"/><br />
        </div>
    </form>
</body>
</html>
