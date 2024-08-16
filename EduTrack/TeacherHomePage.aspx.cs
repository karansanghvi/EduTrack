using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EduTrack
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void createClass_Click(object sender, EventArgs e)
        {
            Response.Redirect("CreateClass.aspx");
        }

        protected void viewTeacherClass_Click(object sender, EventArgs e)
        {
            Response.Redirect("StreamTeacherClass.aspx");
        }
    }
}