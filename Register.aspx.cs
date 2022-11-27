using DataLayer.DAL;
using EntityLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineBidding
{
    public partial class Register : System.Web.UI.Page
    {
        UserDAL userHelper = new UserDAL();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            UsersEL usr = new UsersEL();
            usr.Email = txtEmail.Text;
            usr.Name = txtName.Text;
            usr.Password = txtPassword.Text;
            usr.Username = txtUserName.Text;
            usr.Address = txtAddress.Text;
            usr.UserType = "S";
            bool isAdded = userHelper.RegisterUser(usr);
            if (isAdded)
            {
                Response.Write("<script>alert('User saved successfully.');</script>");
            }
            else
            {
                Response.Write("<script>alert('Either your username or email already exist.');</script>");
            }
        }

        protected void btnSignin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}