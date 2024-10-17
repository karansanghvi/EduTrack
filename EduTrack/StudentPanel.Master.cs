using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EduTrack
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        int adminAccess;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["isTeacher"] != null)
            {
                if (int.TryParse(Session["admin"].ToString(),out adminAccess))
                {
                    if(adminAccess == 1)
                    {
                        Div_Admin.Visible = true;
                        Div_Login.Visible = false;
                        Div_Username.Visible = true;
                        Div_Username.InnerText = Session["name"].ToString();
                    }
                    else
                    {
                        Div_Admin.Visible = false;
                        Div_Login.Visible = false;
                        Div_Username.Visible = true;
                        Div_Username.InnerText = Session["name"].ToString();
                    }
                }
            }
            else if (Session["isStudent"] != null)
            {
                Div_Username.Visible = true;
                Div_Username.InnerText = Session["name"].ToString();
            }
            else
            {
                string currentPageName = System.IO.Path.GetFileName(Request.Url.AbsolutePath);
                if (currentPageName != "StudentLogin.aspx")
                {
                    Response.Redirect("StudentLogin.aspx");
                }
            }
        }
    }
}