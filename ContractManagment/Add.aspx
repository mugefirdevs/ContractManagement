<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add.aspx.cs" Inherits="ContractManagment.Add" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CMS - Add Contract</title>
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet"/> 
    <link href="/AddStyle.css" rel="stylesheet" />
</head>
<body>
    <form class="form1" runat="server">
        <h1>Add Contract</h1>
        <div class="Info">
            <p>Title: <asp:TextBox ID="TitleBox" runat="server"></asp:TextBox></p>
            <p>Type: <asp:TextBox ID="TypeBox" runat="server"></asp:TextBox></p>
            <p>Party Name: <asp:TextBox ID="PartyNameBox" runat="server"></asp:TextBox></p>
            <p>Stage: <asp:TextBox ID="StageBox" runat="server"></asp:TextBox></p>
            <p>Status: <asp:TextBox ID="StatusBox" runat="server"></asp:TextBox></p>
            <p>Risk: <asp:TextBox ID="RiskBox" runat="server"></asp:TextBox></p>
            <p>EffectiveDate: <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox></p>
            <p>Expiry Date: <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox></p>
            <p>Comment: <asp:TextBox ID="CommentBox" runat="server"></asp:TextBox></p>
            
        </div>
    </form>
</body>
</html>
