using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PurcellCompliance
{
    public partial class ComplianceMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lnkLogout_Click(object sender, EventArgs e)
        {
            Session["Username"] = null;
            Session["UserType"] = null;
            Response.Redirect("Login.aspx");
        }
    }
}