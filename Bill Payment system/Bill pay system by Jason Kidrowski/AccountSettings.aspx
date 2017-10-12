<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AccountSettings.aspx.cs" Inherits="Jason_Kidrowski_Final_Project_2._0.AccountSettings" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
                <header><h1>Account settings</h1></header>
                <section><p>Use the form below to edit your user details.</p></section>
            </div>


            <asp:Label ID="LBLFirst" runat="server" Text="First Name:" Width="110px"></asp:Label>
            <asp:TextBox ID="TXTFirst" runat="server" Width="300px"></asp:TextBox>
                <asp:RequiredFieldValidator
                    ID="VALIDFirst"
                    Runat="server"
                    ControlToValidate="TXTFirst"
                    Display="Dynamic"
                    ErrorMessage="*Please enter your first name!"
                    ForeColor="red">
                </asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="LBLLast" runat="server" Text="Last Name:" Width="110px"></asp:Label>
            <asp:TextBox ID="TXTLast" runat="server" Width="300px"></asp:TextBox>
                <asp:RequiredFieldValidator
                    ID="VALIDLast"
                    Runat="server"
                    ControlToValidate="TXTLast"
                    Display="Dynamic"
                    ErrorMessage="*Please enter your last name!"
                    ForeColor="red">
                </asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="LBLAddress" runat="server" Text="Address:" Width="110px"></asp:Label>
            <asp:TextBox ID="TXTAddress" runat="server" Width="300px"></asp:TextBox>
                <asp:RequiredFieldValidator
                    ID="VALIDAddress"
                    Runat="server"
                    ControlToValidate="TXTAddress"
                    Display="Dynamic"
                    ErrorMessage="*Please enter the address you reside at!"
                    ForeColor="red">
                </asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="LBLCity" runat="server" Text="City:" Width="110px"></asp:Label>
            <asp:TextBox ID="TXTCity" runat="server" Width="300px"></asp:TextBox>
                <asp:RequiredFieldValidator
                    ID="VALIDCity"
                    Runat="server"
                    ControlToValidate="TXTCity"
                    Display="Dynamic"
                    ErrorMessage="*Please enter the city where you live!"
                    ForeColor="red">
                </asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="LBLState" runat="server" Text="State:" Width="110px"></asp:Label>
            <asp:DropDownList ID="DDLState" runat="server" Width="300px">
                <asp:ListItem>Alabama</asp:ListItem>
                <asp:ListItem>Alaska</asp:ListItem>
                <asp:ListItem>Arizona</asp:ListItem>
                <asp:ListItem>Arkansas</asp:ListItem>
                <asp:ListItem>California</asp:ListItem>
                <asp:ListItem>Colorado</asp:ListItem>
                <asp:ListItem>Connecticut</asp:ListItem>
                <asp:ListItem>Delaware</asp:ListItem>
                <asp:ListItem>Florida</asp:ListItem>
                <asp:ListItem>Georgia</asp:ListItem>
                <asp:ListItem>Hawaii</asp:ListItem>
                <asp:ListItem>Idaho</asp:ListItem>
                <asp:ListItem>Illinois</asp:ListItem>
                <asp:ListItem>Indiana</asp:ListItem>
                <asp:ListItem>Iowa</asp:ListItem>
                <asp:ListItem>Kansas</asp:ListItem>
                <asp:ListItem>Kentucky</asp:ListItem>
                <asp:ListItem>Louisiana</asp:ListItem>
                <asp:ListItem>Maine</asp:ListItem>
                <asp:ListItem>Maryland</asp:ListItem>
                <asp:ListItem>Massachusetts</asp:ListItem>
                <asp:ListItem>Michigan</asp:ListItem>
                <asp:ListItem>Minnesota</asp:ListItem>
                <asp:ListItem>Mississippi</asp:ListItem>
                <asp:ListItem>Missouri</asp:ListItem>
                <asp:ListItem>Montana</asp:ListItem>
                <asp:ListItem>Nebraska</asp:ListItem>
                <asp:ListItem>Nevada</asp:ListItem>
                <asp:ListItem>New Hampshire</asp:ListItem>
                <asp:ListItem>New Jersey</asp:ListItem>
                <asp:ListItem>New Mexico</asp:ListItem>
                <asp:ListItem>New York</asp:ListItem>
                <asp:ListItem>North Carolina</asp:ListItem>
                <asp:ListItem>North Dakota</asp:ListItem>
                <asp:ListItem>Ohio</asp:ListItem>
                <asp:ListItem>Oklahoma</asp:ListItem>
                <asp:ListItem>Oregon</asp:ListItem>
                <asp:ListItem>Pennsylvania</asp:ListItem>
                <asp:ListItem>Rhode Island</asp:ListItem>
                <asp:ListItem>South Carolina</asp:ListItem>
                <asp:ListItem>South Dakota</asp:ListItem>
                <asp:ListItem>Tennessee</asp:ListItem>
                <asp:ListItem>Texas</asp:ListItem>
                <asp:ListItem>Utah</asp:ListItem>
                <asp:ListItem>Vermont</asp:ListItem>
                <asp:ListItem>Virginia</asp:ListItem>
                <asp:ListItem>Washington</asp:ListItem>
                <asp:ListItem>West Virginia</asp:ListItem>
                <asp:ListItem>Wisconsin</asp:ListItem>
                <asp:ListItem>Wyoming</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Label ID="LBLZipCode" runat="server" Text="Zip Code:" Width="110px"></asp:Label>
            <asp:TextBox ID="TXTZipcode" runat="server" Width="300px" TextMode="Number"></asp:TextBox>
                <asp:RequiredFieldValidator
                    ID="VALIDZipcode"
                    Runat="server"
                    ControlToValidate="TXTZipcode"
                    Display="Dynamic"
                    ErrorMessage="*Enter in your zipcode"
                    ForeColor="red">
                </asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="LBLPhoneNumber" runat="server" Text="Phone Number:" Width="110px"></asp:Label>
            <asp:TextBox ID="TXTPhoneNumber" runat="server" Width="300px" TextMode="Phone"></asp:TextBox>
                <asp:RequiredFieldValidator
                    ID="VALIDPhoneNumber"
                    Runat="server"
                    ControlToValidate="TXTPhoneNumber"
                    Display="Dynamic"
                    ErrorMessage="*Please Enter in your phone number"
                    ForeColor="red">
                </asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="LBLEmail" runat="server" Text="Email:" Width="110px"></asp:Label>
            <asp:TextBox ID="TXTEmail" runat="server" TextMode="Email" Width="300px" ValidateRequestMode="Enabled"></asp:TextBox>
                <asp:RequiredFieldValidator
                    ID="VALIDEmail"
                    Runat="server"
                    ControlToValidate="TXTEmail"
                    Display="Dynamic"
                    ErrorMessage="*Please enter a valid email address!"
                    ForeColor="red">
                </asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Button ID="BTNSubmit" runat="server" Text="Save Changes" Height="50px" Width="100px" OnClick="BTNSubmit_Click" />



        
    </form>
</body>
</html>
