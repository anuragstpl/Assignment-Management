using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PurcellCompliance
{
    public partial class EducationLevel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Session["EducationLevel"] = "Deegre";
            Response.Redirect("DegreeCourses.aspx");
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Session["EducationLevel"] = "Diploma";
            Response.Redirect("DiplomaCourses.aspx");
        }
    }
}