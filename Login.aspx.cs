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
    public partial class Login : System.Web.UI.Page
    {
        UserDAL userDAL = new UserDAL();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignIn_Click(object sender, EventArgs e)
        {
            UsersEL userData = userDAL.Login(txtEmailORUsername.Text, txtPassword.Text);
            if (userData.UserID != 0)
            {
                Response.Write("<script>alert('Enter valid credentials.');</script>");                
            }
            else
            {
                Session["Username"] = userData.Username;
                Session["UserType"] = userData.UserType;
                Response.Redirect("EducationLevel.aspx");
            }
        }
    }
}