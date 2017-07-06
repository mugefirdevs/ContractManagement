<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="ContractManagment.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="/HomePageStyle.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet"/>
    <script src="pikaday.js"></script>

    <title>CMS - Home</title>
</head>
<body>
    <h1>Welcome to CMS</h1>
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
        <div class="dataTable">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource3" ForeColor="Black" GridLines="Vertical" Height="324px" Style="margin-right: 34px" Width="1230px"  DataKeyNames="ContractId" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px">
            <AlternatingRowStyle BackColor="White" />

            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="ContractId" HeaderText="ContractId" ReadOnly="True" InsertVisible="False" SortExpression="ContractId"></asp:BoundField>
                <asp:BoundField DataField="Titel" HeaderText="Titel" SortExpression="Titel"></asp:BoundField>
                <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type"></asp:BoundField>
                <asp:BoundField DataField="PartyName" HeaderText="PartyName" SortExpression="PartyName"></asp:BoundField>
                <asp:BoundField DataField="Stage" HeaderText="Stage" SortExpression="Stage"></asp:BoundField>
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status"></asp:BoundField>
                <asp:BoundField DataField="Risk" HeaderText="Risk" SortExpression="Risk"></asp:BoundField>
                <asp:BoundField DataField="EffectiveDate" HeaderText="EffectiveDate" SortExpression="EffectiveDate"></asp:BoundField>
                <asp:BoundField DataField="ExpiryDate " HeaderText="ExpiryDate " SortExpression="ExpiryDate "></asp:BoundField>
                <asp:BoundField DataField="Comment" HeaderText="Comment" SortExpression="Comment"></asp:BoundField>
            </Columns>

            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>


        <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString='<%$ ConnectionStrings:ContractDatabaseConnectionString %>' SelectCommand="SELECT * FROM [ContractTable]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [ContractTable] WHERE [ContractId] = @original_ContractId AND (([Titel] = @original_Titel) OR ([Titel] IS NULL AND @original_Titel IS NULL)) AND (([Type] = @original_Type) OR ([Type] IS NULL AND @original_Type IS NULL)) AND (([PartyName] = @original_PartyName) OR ([PartyName] IS NULL AND @original_PartyName IS NULL)) AND (([Stage] = @original_Stage) OR ([Stage] IS NULL AND @original_Stage IS NULL)) AND (([Status] = @original_Status) OR ([Status] IS NULL AND @original_Status IS NULL)) AND (([Risk] = @original_Risk) OR ([Risk] IS NULL AND @original_Risk IS NULL)) AND (([EffectiveDate] = @original_EffectiveDate) OR ([EffectiveDate] IS NULL AND @original_EffectiveDate IS NULL)) AND (([ExpiryDate ] = @original_ExpiryDate_) OR ([ExpiryDate ] IS NULL AND @original_ExpiryDate_ IS NULL)) AND (([Comment] = @original_Comment) OR ([Comment] IS NULL AND @original_Comment IS NULL))" InsertCommand="INSERT INTO [ContractTable] ([Titel], [Type], [PartyName], [Stage], [Status], [Risk], [EffectiveDate], [ExpiryDate ], [Comment]) VALUES (@Titel, @Type, @PartyName, @Stage, @Status, @Risk, @EffectiveDate, @ExpiryDate_, @Comment)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [ContractTable] SET [Titel] = @Titel, [Type] = @Type, [PartyName] = @PartyName, [Stage] = @Stage, [Status] = @Status, [Risk] = @Risk, [EffectiveDate] = @EffectiveDate, [ExpiryDate ] = @ExpiryDate_, [Comment] = @Comment WHERE [ContractId] = @original_ContractId AND (([Titel] = @original_Titel) OR ([Titel] IS NULL AND @original_Titel IS NULL)) AND (([Type] = @original_Type) OR ([Type] IS NULL AND @original_Type IS NULL)) AND (([PartyName] = @original_PartyName) OR ([PartyName] IS NULL AND @original_PartyName IS NULL)) AND (([Stage] = @original_Stage) OR ([Stage] IS NULL AND @original_Stage IS NULL)) AND (([Status] = @original_Status) OR ([Status] IS NULL AND @original_Status IS NULL)) AND (([Risk] = @original_Risk) OR ([Risk] IS NULL AND @original_Risk IS NULL)) AND (([EffectiveDate] = @original_EffectiveDate) OR ([EffectiveDate] IS NULL AND @original_EffectiveDate IS NULL)) AND (([ExpiryDate ] = @original_ExpiryDate_) OR ([ExpiryDate ] IS NULL AND @original_ExpiryDate_ IS NULL)) AND (([Comment] = @original_Comment) OR ([Comment] IS NULL AND @original_Comment IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_ContractId" Type="Int32" />
                <asp:Parameter Name="original_Titel" Type="String" />
                <asp:Parameter Name="original_Type" Type="String" />
                <asp:Parameter Name="original_PartyName" Type="String" />
                <asp:Parameter Name="original_Stage" Type="String" />
                <asp:Parameter Name="original_Status" Type="String" />
                <asp:Parameter Name="original_Risk" Type="String" />
                <asp:Parameter DbType="Date" Name="original_EffectiveDate" />
                <asp:Parameter DbType="Date" Name="original_ExpiryDate_" />
                <asp:Parameter Name="original_Comment" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Titel" Type="String" />
                <asp:Parameter Name="Type" Type="String" />
                <asp:Parameter Name="PartyName" Type="String" />
                <asp:Parameter Name="Stage" Type="String" />
                <asp:Parameter Name="Status" Type="String" />
                <asp:Parameter Name="Risk" Type="String" />
                <asp:Parameter DbType="Date" Name="EffectiveDate" />
                <asp:Parameter DbType="Date" Name="ExpiryDate_" />
                <asp:Parameter Name="Comment" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Titel" Type="String" />
                <asp:Parameter Name="Type" Type="String" />
                <asp:Parameter Name="PartyName" Type="String" />
                <asp:Parameter Name="Stage" Type="String" />
                <asp:Parameter Name="Status" Type="String" />
                <asp:Parameter Name="Risk" Type="String" />
                <asp:Parameter DbType="Date" Name="EffectiveDate" />
                <asp:Parameter DbType="Date" Name="ExpiryDate_" />
                <asp:Parameter Name="Comment" Type="String" />
                <asp:Parameter Name="original_ContractId" Type="Int32" />
                <asp:Parameter Name="original_Titel" Type="String" />
                <asp:Parameter Name="original_Type" Type="String" />
                <asp:Parameter Name="original_PartyName" Type="String" />
                <asp:Parameter Name="original_Stage" Type="String" />
                <asp:Parameter Name="original_Status" Type="String" />
                <asp:Parameter Name="original_Risk" Type="String" />
                <asp:Parameter DbType="Date" Name="original_EffectiveDate" />
                <asp:Parameter DbType="Date" Name="original_ExpiryDate_" />
                <asp:Parameter Name="original_Comment" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    </form>
    
</body>
</html>