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
    public partial class PaymentHistory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoginCheck();
            DisplayPaymentHistory();
        }

        public void DisplayPaymentHistory()
        {
            string FK_UserID = User.Identity.GetUserId();

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString());
            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = "select PaymentID, PayeeName, FK_PayeeId, PaymentAmount, PaymentCardType, PaymentCardNumber, DateOfPayment from PaymentHistory INNER JOIN PayeeData ON FK_PayeeId = PayeeId where FK_UserID = @FKUserIdentityValue ORDER BY PaymentID DESC";

            cmd.Parameters.Add("@FKUserIdentityValue", SqlDbType.NVarChar).Value = FK_UserID;

            cmd.Connection = conn;

            conn.Open();

            cmd.ExecuteNonQuery();

            GVPaymentHistory.DataSource = cmd.ExecuteReader();
            GVPaymentHistory.DataBind();

            conn.Close();
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