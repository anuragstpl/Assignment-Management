using DataLayer.DAL;
using EntityLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PurcellCompliance
{
    public partial class Dashboard : System.Web.UI.Page
    {
        UserDAL userdal = new UserDAL();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                //this.BindCustomers();
            }
        }

        //private void BindCustomers()
        //{
        //    List<UsersEL> lstUsers = userdal.GetAllCustomers().Take(10).ToList();
        //    lstCustomers.DataSource = lstUsers;
        //    lstCustomers.DataBind();
        //}
    }
}