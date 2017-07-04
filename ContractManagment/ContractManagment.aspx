<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContractManagment.aspx.cs" Inherits="ContractManagment.ContractManagment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CMS</title>
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet"/> 
    <link href="/ContractManagmentStyle.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <h1>----CMS----</h1>
        <div id =" wrapper">
            <asp:Login ID="Login1" runat="server" OnAuthenticate="Login1_Authenticate">
            </asp:Login>
        </div>
    </form>
</body>
</html>
