using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Jason_Kidrowski_Final_Project_2._0
{
    public partial class AccountSettings : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            LoginCheck();
        }

        protected void Page_PreRender(object sender, EventArgs e)
        {
                GetUserData();
        }

        protected void BTNSubmit_Click(object sender, EventArgs e)
        {
            string FirstName = TXTFirst.Text;
            string LastName = TXTLast.Text;
            string Address = TXTAddress.Text;
            string City = TXTCity.Text;
            string Zipcode = TXTZipcode.Text;
            string State = DDLState.SelectedValue.ToString();
            string EmailAddress = TXTEmail.Text;
            string PhoneNumber = TXTPhoneNumber.Text;

            string CurrentUser = User.Identity.GetUserId();

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString());
            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = "UPDATE AspNetUsers SET FirstName = @FirstNameValue, LastName = @LastNameValue, Address = @AddressValue, City = @CityValue, Zipcode = @ZipcodeValue, State = @StateValue, Email = @EmailValue, PhoneNumber = @PhoneValue WHERE Id = @UserIDValue";

            cmd.Parameters.Add("@FirstNameValue", SqlDbType.NVarChar).Value = FirstName;
            cmd.Parameters.Add("@LastNameValue", SqlDbType.NVarChar).Value = LastName;
            cmd.Parameters.Add("@AddressValue", SqlDbType.NVarChar).Value = Address;
            cmd.Parameters.Add("@CityValue", SqlDbType.NVarChar).Value = City;
            cmd.Parameters.Add("@ZipcodeValue", SqlDbType.NVarChar).Value = Zipcode;
            cmd.Parameters.Add("@StateValue", SqlDbType.NVarChar).Value = State;
            cmd.Parameters.Add("@EmailValue", SqlDbType.NVarChar).Value = EmailAddress;
            cmd.Parameters.Add("@PhoneValue", SqlDbType.NVarChar).Value = PhoneNumber;

            cmd.Parameters.Add("@UserIDValue", SqlDbType.NVarChar).Value = CurrentUser;

            cmd.Connection = conn;

            conn.Open();

            cmd.ExecuteNonQuery();

            conn.Close();

            Response.Redirect("ChangesSavedSuccessfull.aspx");

        }

        protected void GetUserData()
        {
            string CurrentUser = User.Identity.GetUserId();
            //string StateValue;

            SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString());
            con1.Open();
            SqlDataReader myReader = null;
            SqlCommand myCommand = new SqlCommand("select * from AspNetUsers where Id = @CurrentUserValue");

            myCommand.Parameters.Add("@CurrentUserValue", SqlDbType.NVarChar).Value = CurrentUser;

            myCommand.Connection = con1;

            myReader = myCommand.ExecuteReader();

            while (myReader.Read())
            {
                TXTFirst.Text = myReader["FirstName"].ToString().Trim();
                TXTLast.Text = myReader["LastName"].ToString().Trim();
                TXTAddress.Text = myReader["Address"].ToString().Trim();
                TXTCity.Text = myReader["City"].ToString().Trim();
                DDLState.SelectedValue = myReader["State"].ToString().Trim();
                TXTZipcode.Text = myReader["Zipcode"].ToString().Trim();
                TXTPhoneNumber.Text = myReader["PhoneNumber"].ToString().Trim();
                TXTEmail.Text = myReader["Email"].ToString().Trim();
            }
            con1.Close();
        }

        public void LoginCheck()
        {
            string LoggedInUser = User.Identity.GetUserId();

            if (LoggedInUser == null)
            {
                Response.Redirect("LoginNull.aspx");
            }
        }
    }
}