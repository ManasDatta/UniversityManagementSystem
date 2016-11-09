using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UniversityManagementSystem
{
    public partial class addmission : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("homeAbout.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("homeAdmission.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("homeFaculty.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }
        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx");
        }
    }
}