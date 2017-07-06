<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add.aspx.cs" Inherits="ContractManagment.Add" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CMS - Add Contract</title>
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet"/> 
    <link href="/AddStyle.css" rel="stylesheet" />
    <link href="css/pikaday.css" rel="stylesheet" />
    <link href="css/site.css" rel="stylesheet" />
    <link href="css/theme.css" rel="stylesheet" />
    <link href="css/triangle.css" rel="stylesheet" />
    <script src="pikaday.js"></script>
</head>

<body>
    <form class="form1" runat="server">
        <h1>Add Contract</h1>
        <div class="Info">
            <p>Title: <asp:TextBox ID="TitleBox" runat="server" Width="100px" Height="5px"></asp:TextBox></p>
            <p>Type: <asp:TextBox ID="TypeBox" runat="server" Width="100px" Height="5px"></asp:TextBox></p>
            <p>Party Name: <asp:TextBox ID="PartyNameBox" runat="server" Width="100px" Height="5px"></asp:TextBox></p>
            <p>Stage: <asp:TextBox ID="StageBox" runat="server" Width="100px" Height="5px"></asp:TextBox></p>
            <p>Status: <asp:TextBox ID="StatusBox" runat="server" Width="100px" Height="5px"></asp:TextBox></p>
            <p>Risk: <asp:TextBox ID="RiskBox" runat="server" Width="100px" Height="5px"></asp:TextBox></p>
            <p>EffectiveDate: <asp:TextBox ID="EffectiveBox" runat="server" Width="100px" Height="5px"></asp:TextBox></p>
               <script type="text/javascript">
                   var picker = new Pikaday({
                       field: document.getElementById('EffectiveBox'),
                       firstDay: 1,
                       format: 'D MM YYYY',
                       minDate: new Date('2000-01-01'),
                       maxDate: new Date('2100-12-31'),
                       yearRange: [2000, 2100],
                       numberOfMonths: 1
                   });
                </script>
            <p>Expiry Date: <asp:TextBox ID="ExpiryBox" runat="server" Width="100px" Height="5px"></asp:TextBox></p>
            <script type="text/javascript">
                var picker = new Pikaday({
                    field: document.getElementById('ExpiryBox'),
                    firstDay: 1,
                    format: 'D MM YYYY',
                    minDate: new Date('2000-01-01'),
                    maxDate: new Date('2100-12-31'),
                    yearRange: [2000, 2100],
                    numberOfMonths: 1
                });
            </script>
            <p>Comment: <asp:TextBox ID="CommentBox" runat="server" Width="100px" Height="5px"></asp:TextBox></p>
            
        </div>
    </form>
</body>
</html>
