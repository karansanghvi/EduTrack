using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EduTrack
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string type = Request.QueryString["type"];
            if(type == "Teacher")
            {
                AdminDiv.Visible = true;
                idLabel.Text = "Enter ID Number";
            }
            else
            {
                AdminDiv.Visible=false;
                idLabel.Text = "Enter Roll Number";
            }
        }
    }
}