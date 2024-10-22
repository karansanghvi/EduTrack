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
                        Div_Username.InnerHtml = "<a href=\"Profile.aspx\" class=\"nav-link\">" + Session["name"].ToString() +"</a>";
                    }
                    else
                    {
                        Div_Admin.Visible = false;
                        Div_Login.Visible = false;
                        Div_Username.Visible = true;
                        Div_Username.InnerHtml = "<a href=\"Profile.aspx\" class=\"nav-link\">" + Session["name"].ToString() + "</a>";
                    }
                }
            }
            else if (Session["isStudent"] != null)
            {
                Div_Username.Visible = true;
                Div_Login.Visible = false;
                Div_Admin.Visible = false;
                Div_Username.InnerHtml = "<a href=\"Profile.aspx\" class=\"nav-link\">" + Session["name"].ToString() + "</a>";
            }
            else
            {
                string currentPageName = System.IO.Path.GetFileName(Request.Url.AbsolutePath);
                if (currentPageName != "Login.aspx")
                {
                    Response.Redirect("Login.aspx");
                }
            }
        }
    }
}