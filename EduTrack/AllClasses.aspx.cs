using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EduTrack
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void joinClassButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("JoinClass.aspx");
        }

        protected void viewMore_Click(object sender, EventArgs e)
        {
            Response.Redirect("Class.aspx");
        }
    }
}