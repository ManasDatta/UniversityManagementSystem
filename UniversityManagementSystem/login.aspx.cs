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
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Create Connection
            string connStr = ConfigurationManager.ConnectionStrings["DBS"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();

            DataTable dt1 = new DataTable();
            SqlDataAdapter da1 = new SqlDataAdapter("Select * from Users where Id='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "'", conn);
            da1.Fill(dt1);
            if (dt1.Rows.Count > 0)
            {
                DataTable dt2 = new DataTable();
                SqlDataAdapter da2 = new SqlDataAdapter("Select * from Admin where Id='" + TextBox1.Text + "'", conn);
                da2.Fill(dt2);
                if (dt2.Rows.Count > 0)
                {
                    Session["admin"] = "admin";
                    Session["username"] = TextBox1.Text;
                    Response.Redirect("~/admin.aspx");
                }
                else
                {
                    DataTable dt3 = new DataTable();
                    SqlDataAdapter da3 = new SqlDataAdapter("Select * from Faculty where Id='" + TextBox1.Text + "'", conn);
                    da3.Fill(dt3);
                    if (dt3.Rows.Count > 0)
                    {
                        Session["faculty"] = "faculty";
                        Session["username"] = TextBox1.Text;
                        Response.Redirect("~/faculty.aspx");
                    }
                    else
                    {
                        DataTable dt4 = new DataTable();
                        SqlDataAdapter da4 = new SqlDataAdapter("Select * from Student where Id='" + TextBox1.Text + "'", conn);
                        da4.Fill(dt4);
                        if (dt4.Rows.Count > 0)
                        {
                            Session["student"] = "student";
                            Session["username"] = TextBox1.Text;
                            Response.Redirect("~/student.aspx");
                        }
                    }
                }
            }
            else
            {
                DataTable dt5 = new DataTable();
                SqlDataAdapter da5 = new SqlDataAdapter("Select * from Users where Id='" + TextBox1.Text + "'", conn);
                da5.Fill(dt5);
                if (dt5.Rows.Count > 0)
                {
                    Response.Write("<script>alert('Invalid Password!')</script>");
                }
                else
                {
                    Response.Write("<script>alert('Username Not Found!')</script>");
                }
            }
        }
    }
}