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
    public partial class adminAddSchedule : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null)
            {
                Response.Redirect("~/login.aspx");
            }
            else
            {
                if (!IsPostBack)
                {
                    LoadFaculty();
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin.aspx");
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminAddAdmin.aspx");
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminAddFaculty.aspx");
        }
        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminAddStudent.aspx");
        }
        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminAddSchedule.aspx");
        }
        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminUpdateInfo.aspx");
        }
        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminOptions.aspx");
        }
        protected void Button8_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminProfile.aspx");
        }
        protected void Button9_Click(object sender, EventArgs e)
        {
            Session["admin"] = null;
            Response.Redirect("login.aspx");
        }
        protected void Button10_Click(object sender, EventArgs e)
        {
            //Create Connection
            string connStr = ConfigurationManager.ConnectionStrings["DBS"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();

            DataTable dt1 = new DataTable();
            SqlDataAdapter da1 = new SqlDataAdapter("Select Id from Schedule where Id='" + TextBoxCourseId.Text + "'", conn);
            da1.Fill(dt1);
            if (dt1.Rows.Count > 0)
            {
                Response.Write("<script>alert('Id already exist, try with another one')</script>");
            }
            else
            {
                DataTable dt2 = new DataTable();
                SqlDataAdapter da2 = new SqlDataAdapter("Select Name from Schedule where Name='" + TextBoxCourseName.Text + "'", conn);
                da2.Fill(dt2);
                if (dt2.Rows.Count > 0)
                {
                    Response.Write("<script>alert('Already has this course, you can not assign same course twice')</script>");
                }
                else
                {
                    // Insert into Schedule Table
                    string sqlSchedule = "SELECT * FROM Schedule";
                    SqlDataAdapter adapterSchedule = new SqlDataAdapter(sqlSchedule, conn);
                    SqlCommandBuilder builderSchedule = new SqlCommandBuilder(adapterSchedule);
                    DataSet dsSchedule = new DataSet();
                    adapterSchedule.Fill(dsSchedule, "Schedule");
                    DataRow drSchedule = dsSchedule.Tables["Schedule"].NewRow();

                    drSchedule["Id"] = TextBoxCourseId.Text;
                    drSchedule["CourseName"] = TextBoxCourseName.Text;
                    drSchedule["Timing"] = TextBoxTiming.Text;
                    drSchedule["Faculty"] = DropDownListFaculty.SelectedValue.ToString();
                    drSchedule["Room"] = DropDownListRoom.SelectedValue.ToString();
                    drSchedule["Semester"] = DropDownListSemester.SelectedValue.ToString();

                    dsSchedule.Tables["Schedule"].Rows.Add(drSchedule);
                    adapterSchedule.Update(dsSchedule.Tables["Schedule"]);

                    ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                    "alert('Added Successfully!'); window.location='" +
                    Request.ApplicationPath + "adminAddSchedule.aspx';", true);
                }
            }
        }
        private void LoadFaculty()
        {
            //Create Connection
            string connStr = ConfigurationManager.ConnectionStrings["DBS"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();
            string sql = "SELECT * FROM Information i, Faculty f where i.Id=f.Id";
            SqlDataAdapter adapter = new SqlDataAdapter(sql, conn);
            SqlCommandBuilder builder = new SqlCommandBuilder(adapter);
            DataSet ds = new DataSet();
            adapter.Fill(ds, "Information");
            DropDownListFaculty.DataSource = ds.Tables["Information"];
            DropDownListFaculty.DataTextField = "Name";
            DropDownListFaculty.DataValueField = "Id";
            DropDownListFaculty.DataBind();
        }
    }
}