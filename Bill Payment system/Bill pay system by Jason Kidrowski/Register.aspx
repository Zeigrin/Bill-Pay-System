<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Jason_Kidrowski_Final_Project_2._0.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Bill Pay System Registration</title>
</head>
<body style="font-family: Arial, Helvetica, sans-serif; font-size: small">
    <form id="form1" runat="server">
    <div>
        <h4 style="font-size: medium">Register a new user</h4>
        <hr />
        <p>
            <asp:Literal runat="server" ID="StatusMessage" />
        </p> 
     </div>  
        
        <div style="margin-bottom:10px">
            <asp:Label ID="LBLFName" runat="server" Text="First Name:" Width="100px"></asp:Label>
            <div>
            <asp:TextBox runat="server" ID="TXTFName" Width="300px" />  
            <asp:RequiredFieldValidator
                    ID="VALIDFName"
                    Runat="server"
                    ControlToValidate="TXTFName"
                    Display="Dynamic"
                    ErrorMessage="*A first name is required!"
                    ForeColor="red">
            </asp:RequiredFieldValidator>
            </div>
        </div>

        <div style="margin-bottom:10px">
            <asp:Label ID="LBLLName" runat="server" Text="Last Name:" Width="100px"></asp:Label>
            <div>
            <asp:TextBox runat="server" ID="TXTLName" Width="300px" />  
            <asp:RequiredFieldValidator
                    ID="VALIDLName"
                    Runat="server"
                    ControlToValidate="TXTLName"
                    Display="Dynamic"
                    ErrorMessage="*A last name is required!"
                    ForeColor="red">
             </asp:RequiredFieldValidator>
             </div>
        </div>

        <div style="margin-bottom:10px">
            <asp:Label ID="LBLAddress" runat="server" Text="Address:" Width="100px"></asp:Label>
            <div>
            <asp:TextBox runat="server" ID="TXTAddress" Width="300px" />  
            <asp:RequiredFieldValidator
                    ID="VALIDAddress"
                    Runat="server"
                    ControlToValidate="TXTAddress"
                    Display="Dynamic"
                    ErrorMessage="*An address is required!"
                    ForeColor="red">
            </asp:RequiredFieldValidator>
            </div>
        </div>

        <div style="margin-bottom:10px">
            <asp:Label ID="LBLCity" runat="server" Text="City:" Width="100px"></asp:Label>
            <div>
            <asp:TextBox runat="server" ID="TXTCity" Width="300px" /> 
            <asp:RequiredFieldValidator
                    ID="VALIDCity"
                    Runat="server"
                    ControlToValidate="TXTCity"
                    Display="Dynamic"
                    ErrorMessage="*A city is required!"
                    ForeColor="red">
            </asp:RequiredFieldValidator> 
            </div>
        </div>

        <div style="margin-bottom:10px">
            <asp:Label ID="LBLZipcode" runat="server" Text="Zipcode:" Width="100px"></asp:Label>
            <div>
            <asp:TextBox runat="server" ID="TXTZipcode" TextMode="Number" Width="300px" />  
            <asp:RequiredFieldValidator
                    ID="VALIDZipcode"
                    Runat="server"
                    ControlToValidate="TXTZipcode"
                    Display="Dynamic"
                    ErrorMessage="*A Zipcode is required!"
                    ForeColor="red">
            </asp:RequiredFieldValidator>
            </div>
        </div>

        <div style="margin-bottom:10px">
            <asp:Label ID="LBLState" runat="server" Text="State:" Width="100px"></asp:Label>
            <div>
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
            </div>
        </div>

        <div style="margin-bottom:10px">
            <asp:Label ID="LBLEmail" runat="server" Text="Email:" Width="100px"></asp:Label>
            <div>
            <asp:TextBox runat="server" ID="TXTEmail" TextMode="Email" Width="300px" />
            <asp:RequiredFieldValidator
                    ID="VALIDEmail"
                    Runat="server"
                    ControlToValidate="TXTEmail"
                    Display="Dynamic"
                    ErrorMessage="*A valid Email is required!"
                    ForeColor="red">
            </asp:RequiredFieldValidator> 
            </div>
        </div>

        <div style="margin-bottom:10px">
            <asp:Label ID="LBLPhoneNumber" runat="server" Text="Phone Number:" Width="100px"></asp:Label>
            <div>
            <asp:TextBox runat="server" ID="TXTPhoneNumber" TextMode="Phone" Width="300px" />  
            <asp:RequiredFieldValidator
                    ID="VALIDPhoneNumber"
                    Runat="server"
                    ControlToValidate="TXTPhoneNumber"
                    Display="Dynamic"
                    ErrorMessage="*A valid phone number is required!"
                    ForeColor="red">
            </asp:RequiredFieldValidator>
            </div>
        </div>





        
        <div style="margin-bottom:10px">
            <asp:Label runat="server" AssociatedControlID="UserName" Width="150px">User name</asp:Label>
            <div>
                <asp:TextBox runat="server" ID="UserName" Width="300px" />   
                <asp:RequiredFieldValidator
                    ID="VALIDUserName"
                    Runat="server"
                    ControlToValidate="UserName"
                    Display="Dynamic"
                    ErrorMessage="*A username is required!"
                    ForeColor="red">
                </asp:RequiredFieldValidator>             
            </div>
        </div>

        <div style="margin-bottom:10px">
            <asp:Label runat="server" AssociatedControlID="Password">Password</asp:Label>
            <div>
                <asp:TextBox runat="server" ID="Password" TextMode="Password" Width="300px" />
                <asp:RequiredFieldValidator
                    ID="VALIdPassword"
                    Runat="server"
                    ControlToValidate="Password"
                    Display="Dynamic"
                    ErrorMessage="*Please enter a password!"
                    ForeColor="red">
            </asp:RequiredFieldValidator>                
            </div>
        </div>

        <div style="margin-bottom:10px">
            <asp:Label runat="server" AssociatedControlID="ConfirmPassword">Confirm password</asp:Label>
            <div>
                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" Width="300px" /> 
                <asp:RequiredFieldValidator
                    ID="VALIDConfirmPassword"
                    Runat="server"
                    ControlToValidate="ConfirmPassword"
                    Display="Dynamic"
                    ErrorMessage="*Please confirm your password!"
                    ForeColor="red">
            </asp:RequiredFieldValidator>               
            </div>
        </div>

        <div>
            <div>
                <asp:Button runat="server" OnClick="CreateUser_Click" Text="Register" />
            </div>
        </div>
    </form>
</body>
</html>
