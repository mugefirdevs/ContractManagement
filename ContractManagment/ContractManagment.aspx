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
            <asp:Login ID="Login1" runat="server" >
                <LayoutTemplate>
                    <table cellspacing="0" cellpadding="1">
                        <tr>
                            <td>
                                <table cellpadding="0">
                                    <tr>
                                        <td align="center" colspan="2" >Log In</td>
                                    </tr>
                                    <tr> 
                                        <td align="right">
                                            <asp:Label runat="server" AssociatedControlID="UserName" ID="UserNameLabel" >User Name:</asp:Label></td>
                                        <td>
                                            <asp:TextBox runat="server" ID="UserName" ></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ValidationGroup="Login1" ToolTip="User Name is required." ID="UserNameRequired">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <asp:Label runat="server" AssociatedControlID="Password" ID="PasswordLabel">Password:</asp:Label></td>
                                        <td>
                                            <asp:TextBox runat="server" TextMode="Password" ID="Password"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ValidationGroup="Login1" ToolTip="Password is required." ID="PasswordRequired">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <asp:CheckBox runat="server" Text="Remember me next time." ID="RememberMe"></asp:CheckBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" colspan="2">
                                            <asp:Literal runat="server" ID="FailureText" EnableViewState="False"></asp:Literal>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" colspan="2">
                                            <asp:Button runat="server" CommandName="Login" Text="Log In" ValidationGroup="Login1" ID="LoginButton" OnClientClick =" window.location.href = 'HomePage.aspx'; return false;"></asp:Button>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
            </asp:Login>
        </div>
    </form>
</body>
</html>
