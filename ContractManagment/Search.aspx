<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="ContractManagment.Search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CMS - Search Contract</title>
    <link href="SearchCSS.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Search Contract</h1>
        <div class ="wrapper">
            <td align="center">
                <asp:Label runat="server" AssociatedControlID="UserName" ID="UserNameLabel">Properity 1:</asp:Label>
            </td>
            <td>
                <asp:TextBox runat="server" ID="UserName"></asp:TextBox>
            </td>
             <td align="center">
                <asp:Label runat="server" AssociatedControlID="UserName" ID="Label1">Properity 1:</asp:Label>
            </td>
            <td>
                <asp:TextBox runat="server" ID="TextBox1"></asp:TextBox>
            </td>
        </div>
    </form>
</body>
</html>
