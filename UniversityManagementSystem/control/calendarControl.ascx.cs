using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UniversityManagementSystem.control
{
    public partial class calendarControl : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //HiddenTodayDate.Text = DateTime.Today.ToShortDateString();
        }
        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {

            if (e.Day.Date <= DateTime.Today)
            {
                e.Day.IsSelectable = true;
            }
            else
            {
                e.Day.IsSelectable = false;
            }

        }
        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Calendar1.Visible = !Calendar1.Visible;
        }

        public string SelectedDate
        {
            get { return TextBoxDate.Text; }
            set { TextBoxDate.Text = value; }
        }

        protected void Calendar1_SelectionChanged1(object sender, EventArgs e)
        {
            TextBoxDate.Text = Calendar1.SelectedDate.ToString("yyyy-MM-dd");
            Calendar1.Visible = false;
        }
    }
}