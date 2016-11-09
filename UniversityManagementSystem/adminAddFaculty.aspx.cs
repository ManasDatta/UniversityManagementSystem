using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UniversityManagementSystem
{
    public partial class adminAddFaculty : System.Web.UI.Page
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
            MultiView1.ActiveViewIndex++;
        }
        protected void Button11_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex--;
        }
        protected void Button12_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex++;
        }
        protected void Button13_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex--;
        }
        protected void Button14_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex++;
        }
        protected void Button15_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex--;
        }
        protected void Button16_Click(object sender, EventArgs e)
        {
            //Create Connection
            string connStr = ConfigurationManager.ConnectionStrings["DBS"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();

            DataTable dt1 = new DataTable();
            SqlDataAdapter da1 = new SqlDataAdapter("Select Id from Information where Id='" + TextBoxId.Text + "'", conn);
            da1.Fill(dt1);
            if (dt1.Rows.Count > 0)
            {
                Response.Write("<script>alert('Id already exist, try with another one')</script>");
            }
            else
            {
                DataTable dt2 = new DataTable();
                SqlDataAdapter da2 = new SqlDataAdapter("Select Email from Information where Email='" + TextBoxEmail.Text + "'", conn);
                da2.Fill(dt2);
                if (dt2.Rows.Count > 0)
                {
                    Response.Write("<script>alert('Email is used, try with another one!')</script>");
                }
                else
                {
                    DataTable dt3 = new DataTable();
                    SqlDataAdapter da3 = new SqlDataAdapter("Select Phone from Information where Phone='" + TextBoxPhone.Text + "'", conn);
                    da3.Fill(dt3);
                    if (dt3.Rows.Count > 0)
                    {
                        Response.Write("<script>alert('Phone is used, try with another one!')</script>");
                    }
                    else
                    {
                        // Insert into Information Table
                        string sqlInformation = "SELECT * FROM Information";
                        SqlDataAdapter adapterInformation = new SqlDataAdapter(sqlInformation, conn);
                        SqlCommandBuilder builderInformation = new SqlCommandBuilder(adapterInformation);
                        DataSet dsInformation = new DataSet();
                        adapterInformation.Fill(dsInformation, "Information");
                        DataRow drInformation = dsInformation.Tables["Information"].NewRow();

                        drInformation["Id"] = TextBoxId.Text;
                        drInformation["Name"] = TextBoxName.Text;
                        drInformation["Address"] = TextBoxAddress.Text;
                        drInformation["Email"] = TextBoxEmail.Text;
                        drInformation["Phone"] = TextBoxPhone.Text;
                        drInformation["Gender"] = DropDownListGender.SelectedValue.ToString();
                        drInformation["DOB"] = calendarControl.SelectedDate.ToString();
                        drInformation["BloodGroup"] = DropDownListBloodGroup.SelectedValue.ToString();
                        drInformation["Nationality"] = TextBoxNationality.Text;
                        drInformation["Religion"] = TextBoxReligion.Text;
                        drInformation["MaritalStatus"] = DropDownListMaritalStatus.SelectedValue.ToString();

                        dsInformation.Tables["Information"].Rows.Add(drInformation);
                        adapterInformation.Update(dsInformation.Tables["Information"]);

                        // Insert Into Faculty Table
                        string sqlFaculty = "SELECT * FROM Faculty";
                        SqlDataAdapter adapterFaculty = new SqlDataAdapter(sqlFaculty, conn);
                        SqlCommandBuilder builderFaculty = new SqlCommandBuilder(adapterFaculty);
                        DataSet dsFaculty = new DataSet();
                        adapterFaculty.Fill(dsFaculty, "Faculty");
                        DataRow drFaculty = dsFaculty.Tables["Faculty"].NewRow();

                        drFaculty["Id"] = TextBoxId.Text;
                        drFaculty["School"] = TextBoxSchool.Text;
                        drFaculty["SchoolPassingYear"] = yearControl1.SelectedValue.ToString();
                        drFaculty["College"] = TextBoxCollege.Text;
                        drFaculty["CollegePassingYear"] = yearControl2.SelectedValue.ToString();
                        drFaculty["Undergraduate"] = TextBoxUndergraduate.Text;
                        drFaculty["UndergraduatePassingYear"] = yearControl3.SelectedValue.ToString();
                        drFaculty["Postgraduate"] = TextBoxPostgraduate.Text;
                        drFaculty["PostgraduatePassingYear"] = yearControl4.SelectedValue.ToString();
                        drFaculty["PHD"] = TextBoxPHD.Text;
                        drFaculty["PHDPassingYear"] = TextBoxPHDPassingYear.Text;
                        drFaculty["JoiningDate"] = calendarControl1.SelectedDate.ToString();
                        drFaculty["Department"] = DropDownListDepartment.SelectedValue.ToString();
                        drFaculty["Position"] = TextBoxPosition.Text;

                        dsFaculty.Tables["Faculty"].Rows.Add(drFaculty);
                        adapterFaculty.Update(dsFaculty.Tables["Faculty"]);

                        //Insert into User Table
                        string sqlUsers = "SELECT * FROM Users";
                        SqlDataAdapter adapterUsers = new SqlDataAdapter(sqlUsers, conn);
                        SqlCommandBuilder builderUsers = new SqlCommandBuilder(adapterUsers);
                        DataSet dsUsers = new DataSet();
                        adapterUsers.Fill(dsUsers, "Users");
                        DataRow drUsers = dsUsers.Tables["Users"].NewRow();

                        drUsers["Id"] = TextBoxId.Text;
                        drUsers["Password"] = TextBoxConfirmPassword.Text;

                        dsUsers.Tables["Users"].Rows.Add(drUsers);
                        adapterUsers.Update(dsUsers.Tables["Users"]);

                        ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                        "alert('Added Successfully!'); window.location='" +
                        Request.ApplicationPath + "adminAddFaculty.aspx';", true);
                    }
                }
            }
        }
    }
}