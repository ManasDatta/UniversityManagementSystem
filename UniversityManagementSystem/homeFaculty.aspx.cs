using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UniversityManagementSystem
{
    public partial class homeFaculty : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataAccess da = new DataAccess();

            string sql = "SELECT * FROM Information i, Faculty f WHERE i.Id=f.Id";
            SqlDataReader reader = da.getData(sql);
            GridView1.DataSource = reader;
            GridView1.DataBind();
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