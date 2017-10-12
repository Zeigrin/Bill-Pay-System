<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PayABill.aspx.cs" Inherits="Jason_Kidrowski_Final_Project_2._0.PayABill" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Make a payment</title>
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
            <header><h1>Pay a bill</h1></header>
            <section><p>Choose a payee and submit the payment using the form below.</p></section>
        </div>
        <br />
        <br />
        <asp:Label ID="LBLPayee" runat="server" Text="Payee to issue payment to:" Width="200px"></asp:Label>
        <asp:DropDownList ID="DDLPayee" runat="server" Width="300px"></asp:DropDownList>
        <br />
        <br />
        <asp:Label ID="LBLAmountToPay" runat="server" Text="Amount of the payment:" Width="200px"></asp:Label>
        <asp:TextBox ID="TXTAmountToPay" runat="server" Width="300px" TextMode="Number"></asp:TextBox>
                <asp:RequiredFieldValidator
                    ID="VALIDAmountToPay"
                    Runat="server"
                    ControlToValidate="TXTAmountToPay"
                    Display="Dynamic"
                    ErrorMessage="*Please enter the amount that you wish to pay!"
                    ForeColor="red">
                </asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="LBLCardType" runat="server" Text="Card type:" Width="200px"></asp:Label>
        <asp:DropDownList ID="DDLCardType" runat="server" Width="300px">
            <asp:ListItem>Visa</asp:ListItem>
            <asp:ListItem>Mastercard</asp:ListItem>
            <asp:ListItem>American Express</asp:ListItem>
            <asp:ListItem>Discover</asp:ListItem>
        </asp:DropDownList>

        <br />
        <br />
        <asp:Label ID="LBLCardNumber" runat="server" Text="Card number to be billed:" Width="200px"></asp:Label>
        <asp:TextBox ID="TXTCardNumber" runat="server" Width="300px" TextMode="Number"></asp:TextBox>
                <asp:RequiredFieldValidator
                    ID="VALIDCardNumber"
                    Runat="server"
                    ControlToValidate="TXTCardNumber"
                    Display="Dynamic"
                    ErrorMessage="*Please provie a valid credit card number"
                    ForeColor="red">
                </asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="LBLDateOfPayment" runat="server" Text="Date for the payment to be issued:" Width="200px"></asp:Label>
        <asp:TextBox ID="TXTDateOfPayment" runat="server" Width="300px" TextMode="Date"></asp:TextBox>
                 <asp:RequiredFieldValidator
                    ID="VALIDDateOfPayment"
                    Runat="server"
                    ControlToValidate="TXTDateOfPayment"
                    Display="Dynamic"
                    ErrorMessage="*Please assign a date for the payment."
                    ForeColor="red">
                </asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Button ID="BTNSubmitPayment" runat="server" Text="Submit Payment" OnClick="BTNSubmitPayment_Click" />
    </form>
</body>
</html>
