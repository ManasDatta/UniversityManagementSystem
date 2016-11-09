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
    public partial class facultyOptions : System.Web.UI.Page
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