using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UniversityManagementSystem.control
{
    public partial class yearControl : System.Web.UI.UserControl
    {
        public object SelectedValue
        {
            get { return DropDownList1.SelectedValue.ToString(); }
            set { value = DropDownList1.SelectedValue.ToString(); }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            Year();
        }
        private void Year()

        {
            DateTimeFormatInfo info = DateTimeFormatInfo.GetInstance(null);
            int year = DateTime.Now.Year - 25;
            for (int Y = year; Y <= DateTime.Now.Year; Y++)
            {
                DropDownList1.Items.Add(new ListItem(Y.ToString(), Y.ToString()));
            }
        }
    }
}