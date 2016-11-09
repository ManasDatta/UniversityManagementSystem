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
    public partial class faculty : System.Web.UI.Page
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

        protected void Button2_Click(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["DBS"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();
            
            SqlDataAdapter adapter = new SqlDataAdapter("select * from Student s, Information i where s.Id=i.Id and s.Semester = '" + DropDownListSemester.SelectedValue + "' and s.Department = '" + DropDownListDepartment.SelectedValue + "' ", conn);
            SqlCommandBuilder builder = new SqlCommandBuilder(adapter);
            DataSet ds = new DataSet();

            adapter.Fill(ds, "Information");
            adapter.Fill(ds, "Student");
            if (ds.Tables[0].Rows.Count == 0)
            {
                LabelNoStudent.Text = "No Students Found";
                GridView2.Visible = false;
            }
            else
            {
                LabelNoStudent.Text = "";
                GridView2.DataSource = ds;
                GridView2.DataBind();
                GridView2.Visible = true;
            }
        }
    }
}