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
    public partial class changePassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null)
            {
                Response.Redirect("~/login.aspx");
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
            SqlDataAdapter da1 = new SqlDataAdapter("Select * from Users where Id='" + Session["username"] + "'", conn);
            da1.Fill(dt1);

            //string id = dt1.Rows[0]["Id"].ToString();


            if (TextBox1.Text != dt1.Rows[0]["Password"].ToString())
            {
                Response.Write("<script>alert('Invalid Old Password!')</script>");
            }
            else
            {
                DataTable dt2 = new DataTable();
                SqlDataAdapter da2 = new SqlDataAdapter("Select * from Users where Id='" + Session["username"] + "'", conn);
                da2.Fill(dt2);
                string val = dt2.Rows[0]["Id"].ToString();

                SqlCommand cmd = new SqlCommand("UPDATE Users SET Password = '" + TextBox3.Text + "' WHERE Id = '" + val + "'", conn);
                cmd.ExecuteNonQuery();

                Session["username"] = null;
                ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                "alert('Password has been changed successfully. Please login with your new password!'); window.location='" +
                Request.ApplicationPath + "login.aspx';", true);
            }
        }
    }
}