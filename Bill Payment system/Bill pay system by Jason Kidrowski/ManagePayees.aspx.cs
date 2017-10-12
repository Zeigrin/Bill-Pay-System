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
    public partial class ManagePayees : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            LoginCheck();
        }

        protected void Page_PreRender(object sender, EventArgs e)
        {
            LBLUserID.Text = User.Identity.GetUserId().ToString();
        }


        protected void BTNAddNew_Click(object sender, EventArgs e)
        {
            string PayeeName = TXTPayeeName.Text;
            string AccountNumber = TXTAccountNumber.Text;
            string RoutingNumber = TXTRoutingNumber.Text;
            string FK_UserID = User.Identity.GetUserId();

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString());
            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = "INSERT INTO PayeeData (PayeeName, PayeeAccountNumber, PayeeRoutingNumber, FK_UserID) VALUES (@PayeeNameValue, @PayeeAccountNumberValue, @PayeeRoutingNumberValue, @FKUserIdentityValue)";

            cmd.Parameters.Add("@PayeeNameValue", SqlDbType.NVarChar).Value = PayeeName;
            cmd.Parameters.Add("@PayeeAccountNumberValue", SqlDbType.NVarChar).Value = AccountNumber;
            cmd.Parameters.Add("@PayeeRoutingNumberValue", SqlDbType.NVarChar).Value = RoutingNumber;
            cmd.Parameters.Add("@FKUserIdentityValue", SqlDbType.NVarChar).Value = FK_UserID;

            cmd.Connection = conn;

            conn.Open();

            cmd.ExecuteNonQuery();

            conn.Close();

            TXTPayeeName.Text = "";
            TXTAccountNumber.Text = "";
            TXTRoutingNumber.Text = "";

            GVPayeeData.DataBind();
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