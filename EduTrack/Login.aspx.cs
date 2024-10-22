using EduTrack.CommonClasses;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EduTrack
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginButton_Click(object sender, EventArgs e)
        {
            string mail = email.Text;
            string pass = password.Text;
            bool loggedIn = false;
            string hash = Common.ComputeSha256Hash(pass);

            try
            {
                SqlConnection con = new SqlConnection("data source=.\\SQLEXPRESS; database=EduTrack; integrated security=SSPI");
                con.Open();

                SqlCommand cmd = new SqlCommand("select * from students where Email = '" + mail + "';", con);
                SqlDataReader reader = cmd.ExecuteReader();
                loggedIn = false;
                while (reader.Read())
                {
                    if (hash == reader["Password"].ToString())
                    {
                        loggedIn = true;
                        Session["name"] = reader["Name"];
                        Session["id"] = reader["Id"];
                        Session["email"] = reader["Email"];
                        Session["isTeacher"] = null;
                        Session["isStudent"] = true;
                    }
                    break;
                }

                if (!loggedIn)
                {
                    reader.Close();
                    cmd = new SqlCommand("select * from teachers where Email = '" + mail + "';", con);
                    reader = cmd.ExecuteReader();
                    loggedIn = false;
                    while (reader.Read())
                    {
                        if (hash == reader["Password"].ToString())
                        {
                            loggedIn = true;
                            Session["name"] = reader["Name"];
                            Session["id"] = reader["Id"];
                            Session["email"] = reader["Email"];
                            Session["admin"] = reader.GetBoolean(reader.GetOrdinal("Admin")) ? 1 : 0;
                            Session["isTeacher"] = true;
                            Session["isStudent"] = null;
                            break;
                        }
                    }
                }

                if (loggedIn && Session["isTeacher"] != null)
                {
                    Response.Redirect("TeacherHomePage.aspx");
                }
                else if (loggedIn && Session["isStudent"] != null)
                {
                    Response.Redirect("HomePage.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Incorrect Login')</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Unable to Connect " + ex.Message + "')</script>");
            }
        }
    }
}