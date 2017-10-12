<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Jason_Kidrowski_Final_Project_2._0.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Bill Pay System</title>
</head>
<body>
   <form id="form1" runat="server">

       <div>

           <asp:Menu ID="MainMenu" runat="server" BackColor="#F7F6F3" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#7C6F57" Orientation="Horizontal" StaticSubMenuIndent="10px" Visible="False">
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
         <h4 style="font-size: medium">Log In</h4>
         <hr />
         <asp:PlaceHolder runat="server" ID="LoginStatus" Visible="false">
            <p>
               <asp:Literal runat="server" ID="StatusText" />
            </p>
         </asp:PlaceHolder>
         <asp:PlaceHolder runat="server" ID="LoginForm" Visible="false">
            <div style="margin-bottom: 10px">
               <asp:Label runat="server" AssociatedControlID="UserName">User name</asp:Label>
               <div>
                  <asp:TextBox runat="server" ID="UserName" />
               </div>
            </div>
            <div style="margin-bottom: 10px">
               <asp:Label runat="server" AssociatedControlID="Password">Password</asp:Label>
               <div>
                  <asp:TextBox runat="server" ID="Password" TextMode="Password" />
               </div>
            </div>
            <div style="margin-bottom: 10px">
               <div>
                  <asp:Button runat="server" OnClick="SignIn" Text="Log in" />
               </div>
            </div>
         </asp:PlaceHolder>
         <asp:PlaceHolder runat="server" ID="LogoutButton" Visible="false">
            <div>
               <div>
                  <asp:Button runat="server" OnClick="SignOut" Text="Log out" />
               </div>
            </div>
         </asp:PlaceHolder>
      </div>


       <div id ="RegisterAccount" runat="server">
           <h1>Don't have an account?</h1>
           <p>register for one here!!!</p> 
           <asp:Button ID="BTNRegister" runat="server" Text="Register for an account!" OnClick="BTNRegister_Click" />
       </div>


   </form>
</body>
</html>