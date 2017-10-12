using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Jason_Kidrowski_Final_Project_2._0
{
    public partial class LoginNull : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.AddHeader("REFRESH", "3;URL=Login.aspx");
        }
    }
}