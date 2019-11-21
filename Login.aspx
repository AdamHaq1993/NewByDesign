<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ExpansiveNDB.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Natural by Design</title>
    <script src="scripts/bootstrap.js"></script>
    <link href="Content/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="container well well-lg" style="width: 471px">
    
        Username:
        <asp:TextBox class="form-control" ID="tbUsername" runat="server" TabIndex="1"></asp:TextBox>
        <br />
        Password:
        <asp:TextBox class="form-control" ID="tbPassword" runat="server" TabIndex="2" TextMode="Password"></asp:TextBox>
        <br />
        <asp:Label ID="lblStatus" runat="server" ForeColor="Red"></asp:Label>
        <br />
        <asp:Button ID="btnLogin" class="btn btn-primary" runat="server" OnClick="btnLogin_Click" TabIndex="3" Text="Log In" />
    
    &nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnRegister" class="btn btn-primary" runat="server" OnClick="btnRegister_Click" TabIndex="4" Text="Register" />
    
    </div>
    </form>
</body>
</html>
