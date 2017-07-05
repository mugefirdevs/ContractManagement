<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="ContractManagment.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="/HomePageStyle.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet"/>
    <title>CMS - Home</title>
</head>
<body>
    <h1>Welcome to CMS</h1>
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <form id="form1" runat="server">
        <div class="navigator">
            <nav>
                <ul>
                    <li><a href="Search.aspx">Search Contract</a></li>
                    <li><a href="Add.aspx">Add Contract</a></li>
                    <li><a href="ContractManagment.aspx">Logout</a></li>
                </ul>
            </nav>

        </div>
        <div class=" dataTable">
            <table width="auto" cellpadding="2" cellspacing="2" border="0" bgcolor="#EAEAEA">
                <tr align="left" style="background-color: white; color: black;">
                    <td>ID </td>
                    <td>Name </td>
                    <td>Pass</td>
                </tr>
            </table>
        </div>
        <div class="Calendar">
            <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px">
                <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt"></DayHeaderStyle>

                <NextPrevStyle VerticalAlign="Bottom"></NextPrevStyle>

                <OtherMonthDayStyle ForeColor="#808080"></OtherMonthDayStyle>

                <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White"></SelectedDayStyle>

                <SelectorStyle BackColor="#CCCCCC"></SelectorStyle>

                <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True"></TitleStyle>

                <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black"></TodayDayStyle>

                <WeekendDayStyle BackColor="#FFFFCC"></WeekendDayStyle>
            </asp:Calendar>
        </div>
    </form>
</body>
</html>