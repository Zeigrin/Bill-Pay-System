using System;
using System.Linq;
using System.Web;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI;

namespace Jason_Kidrowski_Final_Project_2._0
{

    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void CreateUser_Click(object sender, EventArgs e)
        {
            var userStore = new UserStore<IdentityUser>();
            var manager = new UserManager<IdentityUser>(userStore);
            var user = new IdentityUser() { UserName = UserName.Text };

            IdentityResult result = manager.Create(user, Password.Text);

            if (result.Succeeded)
            {
                var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
                var userIdentity = manager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);
                authenticationManager.SignIn(new AuthenticationProperties() { }, userIdentity);

                string FirstName = TXTFName.Text;
                string LastName = TXTLName.Text;
                string Address = TXTAddress.Text;
                string City = TXTCity.Text;
                string Zipcode = TXTZipcode.Text;
                string State = DDLState.SelectedValue.ToString();
                string EmailAddress = TXTEmail.Text;
                string PhoneNumber = TXTPhoneNumber.Text;
                string User = UserName.Text;

                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString());
                SqlCommand cmd = new SqlCommand();

                cmd.CommandText = "UPDATE AspNetUsers SET FirstName = @FirstNameValue, LastName = @LastNameValue, Address = @AddressValue, City = @CityValue, Zipcode = @ZipcodeValue, State = @StateValue, Email = @EmailValue, PhoneNumber = @PhoneValue WHERE UserName = @UserIDValue";

                cmd.Parameters.Add("@FirstNameValue", SqlDbType.NVarChar).Value = FirstName;
                cmd.Parameters.Add("@LastNameValue", SqlDbType.NVarChar).Value = LastName;
                cmd.Parameters.Add("@AddressValue", SqlDbType.NVarChar).Value = Address;
                cmd.Parameters.Add("@CityValue", SqlDbType.NVarChar).Value = City;
                cmd.Parameters.Add("@ZipcodeValue", SqlDbType.NVarChar).Value = Zipcode;
                cmd.Parameters.Add("@StateValue", SqlDbType.NVarChar).Value = State;
                cmd.Parameters.Add("@EmailValue", SqlDbType.NVarChar).Value = EmailAddress;
                cmd.Parameters.Add("@PhoneValue", SqlDbType.NVarChar).Value = PhoneNumber;

                cmd.Parameters.Add("@UserIDValue", SqlDbType.NVarChar).Value = User;

                cmd.Connection = conn;

                conn.Open();

                cmd.ExecuteNonQuery();

                conn.Close();

                Response.Redirect("~/Login.aspx");
            }
            else
            {
                StatusMessage.Text = result.Errors.FirstOrDefault();
            }
        }
    }
}