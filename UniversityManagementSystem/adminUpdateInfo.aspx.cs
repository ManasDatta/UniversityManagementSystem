using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UniversityManagementSystem
{
    public partial class updateInfo : System.Web.UI.Page
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

        protected void Button36_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex++;
            GridView1.Visible = false;
            GridView7.Visible = true;
        }

        protected void Button37_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex += 2;
            GridView2.Visible = false;
            GridView8.Visible = true;
        }

        protected void Button38_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex += 3;
            GridView3.Visible = false;
            GridView9.Visible = true;
        }

        protected void Button39_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex += 4;
            GridView4.Visible = false;
            GridView10.Visible = true;
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex += 5;
            GridView5.Visible = false;
            GridView11.Visible = true;
        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            TextBox1.Text = String.Empty;
            MultiView1.ActiveViewIndex--;
        }

        protected void Button12_Click(object sender, EventArgs e)
        {
            TextBox2.Text = String.Empty;
            MultiView1.ActiveViewIndex -= 2;
        }

        protected void Button13_Click(object sender, EventArgs e)
        {
            TextBox3.Text = String.Empty;
            MultiView1.ActiveViewIndex -= 3;
        }

        protected void Button14_Click(object sender, EventArgs e)
        {
            TextBox4.Text = String.Empty;
            MultiView1.ActiveViewIndex -= 4;
        }

        protected void Button15_Click(object sender, EventArgs e)
        {
            TextBox5.Text = String.Empty;
            MultiView1.ActiveViewIndex -= 5;
        }

        protected void Button16_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex += 6;
            GridView6.Visible = false;
            GridView12.Visible = true;
        }

        protected void Button18_Click(object sender, EventArgs e)
        {
            TextBox6.Text = String.Empty;
            MultiView1.ActiveViewIndex -= 6;
        }

        protected void Button31_Click(object sender, EventArgs e)
        {
            if(String.IsNullOrEmpty(TextBox1.Text.Trim()))
            {
                GridView1.Visible = false;
                GridView7.Visible = true;
            }
            else
            {
                GridView7.Visible = false;
                GridView1.Visible = true;
            }
        }

        protected void Button32_Click(object sender, EventArgs e)
        {
            if (String.IsNullOrEmpty(TextBox2.Text.Trim()))
            {
                GridView2.Visible = false;
                GridView8.Visible = true;
            }
            else
            {
                GridView8.Visible = false;
                GridView2.Visible = true;
            }
        }

        protected void Button33_Click(object sender, EventArgs e)
        {
            if (String.IsNullOrEmpty(TextBox3.Text.Trim()))
            {
                GridView3.Visible = false;
                GridView9.Visible = true;
            }
            else
            {
                GridView9.Visible = false;
                GridView3.Visible = true;
            }
        }

        protected void Button34_Click(object sender, EventArgs e)
        {
            if (String.IsNullOrEmpty(TextBox4.Text.Trim()))
            {
                GridView4.Visible = false;
                GridView10.Visible = true;
            }
            else
            {
                GridView10.Visible = false;
                GridView4.Visible = true;
            }
        }

        protected void Button35_Click(object sender, EventArgs e)
        {
            if (String.IsNullOrEmpty(TextBox5.Text.Trim()))
            {
                GridView5.Visible = false;
                GridView11.Visible = true;
            }
            else
            {
                GridView11.Visible = false;
                GridView5.Visible = true;
            }
        }

        protected void Button17_Click(object sender, EventArgs e)
        {
            if (String.IsNullOrEmpty(TextBox6.Text.Trim()))
            {
                GridView6.Visible = false;
                GridView12.Visible = true;
            }
            else
            {
                GridView12.Visible = false;
                GridView6.Visible = true;
            }
        }

        protected void Button19_Click(object sender, EventArgs e)
        {
            GridView1.Visible = false;
            GridView7.Visible = true;
        }

        protected void Button20_Click(object sender, EventArgs e)
        {
            GridView2.Visible = false;
            GridView8.Visible = true;
        }

        protected void Button21_Click(object sender, EventArgs e)
        {
            GridView3.Visible = false;
            GridView9.Visible = true;
        }

        protected void Button22_Click(object sender, EventArgs e)
        {
            GridView4.Visible = false;
            GridView10.Visible = true;
        }

        protected void Button23_Click(object sender, EventArgs e)
        {
            GridView5.Visible = false;
            GridView11.Visible = true;
        }

        protected void Button24_Click(object sender, EventArgs e)
        {
            GridView6.Visible = false;
            GridView12.Visible = true;
        }
    }
}