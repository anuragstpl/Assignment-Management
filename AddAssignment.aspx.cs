using DataLayer.DAL;
using EntityLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineAssignment
{
    public partial class AddAssignment : System.Web.UI.Page
    {
        DocumentDAL documentHelper = new DocumentDAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                this.BindAssignments();
            }
            if (Session["UserType"].ToString().Equals("L"))
            {
                pnlAssignmentAdd.Visible = true;
            }
            else
            {
                pnlAssignmentAdd.Visible = false;
            }
        }

        private void BindAssignments()
        {
            List<DocumentEL> lstDocument = documentHelper.GetUserDocuments(Session["Subject"].ToString());
            lstDocuments.DataSource = lstDocument;
            lstDocuments.DataBind();
        }

        protected void DownloadFile(object sender, EventArgs e)
        {
            
        }

        protected void btnAddProduct_Click(object sender, EventArgs e)
        {
            string flName = "";
            if (assignmentDoc.HasFile)
            {
                flName = DateTime.Now.Ticks + assignmentDoc.FileName;
                assignmentDoc.SaveAs(Server.MapPath("~/Uploads/" + flName));
            }
            DocumentEL document = new DocumentEL();
            document.DocumentName = txtName.Text;
            document.DocumentPath = "~/Uploads/" + flName;
            document.EducationLevel = Session["EducationLevel"].ToString();
            document.Subject = Session["Subject"].ToString();
            document.Course = Session["Course"].ToString();
            bool isAdded = documentHelper.AddDocument(document);
            if (isAdded)
            {
                this.BindAssignments();
                //Response.Write("<script>alert('Document added successfully.');</script>");
            }
            else
            {
                Response.Write("<script>alert('Some error occured.');</script>");
            }
        }

        protected void lstDocuments_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            if (e.CommandName == "DeleteDocument")
            {
                if (documentHelper.DeleteDocument(Convert.ToInt32(e.CommandArgument)))
                {
                    //Response.Write("<script>alert('Document deleted successfully.');</script>");
                    this.BindAssignments();
                }
                else
                {
                    Response.Write("<script>alert('Some error occured.');</script>");
                }
            }
            else
                if (e.CommandName == "Download")
                {
                    string filePath = e.CommandArgument.ToString();
                    Response.ContentType = ContentType;
                    Response.AppendHeader("Content-Disposition", "attachment; filename=" + e.CommandArgument.ToString());
                    Response.WriteFile(filePath);
                    Response.End();
                }
        }

        protected void lstDocuments_PagePropertiesChanging(object sender, PagePropertiesChangingEventArgs e)
        {
            (lstDocuments.FindControl("DataPager1") as DataPager).SetPageProperties(e.StartRowIndex, e.MaximumRows, false);
            this.BindAssignments();
        }

        protected void lstDocuments_ItemDataBound(object sender, ListViewItemEventArgs e)
        {
            if (e.Item.ItemType == ListViewItemType.DataItem)
            {
                if (Session["UserType"].ToString() == "S")
                {
                    LinkButton lnkBtn = e.Item.FindControl("lnkDocs") as LinkButton;
                    lnkBtn.Visible = false;
                }
                
            }
        }
    }
}