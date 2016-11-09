using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UniversityManagementSystem
{
    public partial class student : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["student"] == null)
            {
                Response.Redirect("~/login.aspx");
            }
            else
            {
                ScheduleLoad();
            }
            
        }

        private void ScheduleLoad()
        {
            string connStr = ConfigurationManager.ConnectionStrings["DBS"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();

            SqlDataAdapter adapter = new SqlDataAdapter("select * from Schedule s, Information i where s.Faculty=i.Id and s.Semester = (select Semester from Student where Id = '" + Session["username"] + "' )", conn);
            SqlCommandBuilder builder = new SqlCommandBuilder(adapter);
            DataSet ds = new DataSet();

            adapter.Fill(ds, "Schedule");
            adapter.Fill(ds, "Information");

            if (ds.Tables[0].Rows.Count == 0)
            {
                LabelNoCourse.Text = "No Courses Found";
                GridView1.Visible = false;
            }
            else
            {
                LabelNoCourse.Text = "";
                GridView1.DataSource = ds;
                GridView1.DataBind();
                GridView1.Visible = true;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("student.aspx");
        }
        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("studentOptions.aspx");
        }
        protected void Button8_Click(object sender, EventArgs e)
        {
            Response.Redirect("studentProfile.aspx");
        }
        protected void Button9_Click(object sender, EventArgs e)
        {
            Session["student"] = null;
            Response.Redirect("login.aspx");
        }
    }
}