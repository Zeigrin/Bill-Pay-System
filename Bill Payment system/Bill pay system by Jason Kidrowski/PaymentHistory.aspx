<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaymentHistory.aspx.cs" Inherits="Jason_Kidrowski_Final_Project_2._0.PaymentHistory" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Payment History</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
<asp:Menu ID="MainMenu" runat="server" BackColor="#F7F6F3" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#7C6F57" Orientation="Horizontal" StaticSubMenuIndent="10px">
                <DynamicHoverStyle BackColor="#7C6F57" ForeColor="White" />
                <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <DynamicMenuStyle BackColor="#F7F6F3" />
                <DynamicSelectedStyle BackColor="#5D7B9D" />
                <Items>
                    <asp:MenuItem NavigateUrl="~/Login.aspx" Text="Home" Value="Home"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/PayABill.aspx" Text="Pay Bill" Value="Pay Bill"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/ManagePayees.aspx" Text="Manage Payees" Value="Manage Payees"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/PaymentHistory.aspx" Text="Payment History" Value="Payment History"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/AccountSettings.aspx" Text="Account Settings" Value="Account Settings"></asp:MenuItem>
                    <asp:MenuItem Text="Logout" Value="Logout" NavigateUrl="~/Logout.aspx"></asp:MenuItem>
                </Items>
                <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" />
                <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <StaticSelectedStyle BackColor="#5D7B9D" />
            </asp:Menu>
        </div>

        <div>
            <header><h1>Payment History</h1></header>
            <p>Below is a list of your previous payments</p>
        </div>

        <br />
        <br />
        <asp:GridView ID="GVPaymentHistory" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
    </form>
</body>
</html>
