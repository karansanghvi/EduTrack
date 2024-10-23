using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EduTrack
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        int type;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["isTeacher"] != null)
            {
                type = 1;
            }
            else if (Session["isStudent"] != null)
            {
                type = 2;
            }
            else
            {
                //Response.Redirect("Login.aspx");
            }
        }

        protected void ClassConnect_Click(object sender, EventArgs e)
        {
            if(type==1)
            {
                Response.Redirect("TeacherHomePage.aspx");
            }
            else if(type==2)
            {
                Response.Redirect("AllClasses.aspx");
            }
        }
    }
}