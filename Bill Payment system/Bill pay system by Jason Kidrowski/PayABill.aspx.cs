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
    public partial class PayABill : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            LoginCheck();
        }

        protected void Page_PreRender(object sender, EventArgs e)
        {
            Get_Payee_Data();
        }

        protected void BTNSubmitPayment_Click(object sender, EventArgs e)
        {
            string PaymentValue = TXTAmountToPay.Text;
            string DateOfPaymentValue = TXTDateOfPayment.Text;
            string PayeeValue = DDLPayee.SelectedValue.ToString();
            string PaymentCardTypeValue = DDLCardType.SelectedValue.ToString();
            string PaymentCardNumberValue = TXTCardNumber.Text;

            string UserIdValue = User.Identity.GetUserId(); ;

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString());
            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = "INSERT INTO PaymentHistory (FK_PaymentHistory_UserID, FK_PayeeID, PaymentAmount, PaymentCardType, PaymentCardNumber, DateOfPayment) VALUES (@FKUserIdentityValue, @PayeeIDValue, @PaymentAmountValue, @PaymentCardType, @PaymentCardNumber, @PaymentDateValue)";

            cmd.Parameters.Add("@PayeeIDValue", SqlDbType.NVarChar).Value = PayeeValue;
            cmd.Parameters.Add("@PaymentDateValue", SqlDbType.NVarChar).Value = DateOfPaymentValue;
            cmd.Parameters.Add("@PaymentAmountValue", SqlDbType.NVarChar).Value = PaymentValue;
            cmd.Parameters.Add("@PaymentCardType", SqlDbType.NVarChar).Value = PaymentCardTypeValue;
            cmd.Parameters.Add("@PaymentCardNumber", SqlDbType.NVarChar).Value = PaymentCardNumberValue;

            cmd.Parameters.Add("@FKUserIdentityValue", SqlDbType.NVarChar).Value = UserIdValue;

            cmd.Connection = conn;

            conn.Open();

            cmd.ExecuteNonQuery();

            conn.Close();

            Response.Redirect("BillPaidSuccess.aspx");
        }

        public void Get_Payee_Data()
        {

            string FK_UserID = User.Identity.GetUserId();

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString());
            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = "select PayeeName, PayeeId from PayeeData where FK_UserID = @UserIdentityValue";

            cmd.Parameters.Add("@UserIdentityValue", SqlDbType.NVarChar).Value = FK_UserID;

            cmd.Connection = conn;

            conn.Open();

            cmd.ExecuteNonQuery();

            DDLPayee.DataSource = cmd.ExecuteReader();
            DDLPayee.DataTextField = "PayeeName";
            DDLPayee.DataValueField = "PayeeId";
            DDLPayee.DataBind();

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