using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UniversityManagementSystem
{
    public partial class facultyProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["faculty"] == null)
            {
                Response.Redirect("~/login.aspx");
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("faculty.aspx");
        }
        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("facultyOptions.aspx");
        }
        protected void Button8_Click(object sender, EventArgs e)
        {
            Response.Redirect("facultyProfile.aspx");
        }
        protected void Button9_Click(object sender, EventArgs e)
        {
            Session["faculty"] = null;
            Response.Redirect("login.aspx");
        }
    }
}