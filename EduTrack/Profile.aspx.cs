using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EduTrack.CommonClasses;

namespace EduTrack
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Div_Pass1.Visible = false;
            Div_Pass2.Visible = false;
            Div_Pass3.Visible = false;
            if (Session["name"]!=null)
                firstName.Text = Session["name"].ToString();
            if (Session["email"]!=null)
                emailAddress.Text = Session["email"].ToString();
        }

        protected void signupButton_Click(object sender, EventArgs e)
        {
            Div_Pass1.Visible=true;
            Div_Pass2.Visible=true;
            Div_Pass3.Visible=true;
        }

        protected void ResetBtn_Click(object sender, EventArgs e)
        {
            string newpass = newPassword.Text;
            bool canChange = false;
            using(SqlConnection con = new SqlConnection("data source=.\\SQLEXPRESS; database=EduTrack; integrated security=SSPI"))
            {
                if (Session["isStudent"]!=null)
                {
                    SqlCommand cmd = new SqlCommand("select Password from students where Email = @email");
                    cmd.Parameters.AddWithValue("@email", Session["email"]);

                    try
                    {
                        con.Open();
                        SqlDataReader reader = cmd.ExecuteReader();

                        while (reader.Read())
                        {
                            if (reader["Password"].ToString() == Common.ComputeSha256Hash(password.Text))
                            {
                                canChange = true;
                                break;
                            }
                        }

                        if(canChange)
                        {
                            cmd = new SqlCommand("update students set Password = @pass where Email = @email");
                            cmd.Parameters.AddWithValue("@email", Session["email"]);
                            cmd.Parameters.AddWithValue("@pass", Common.ComputeSha256Hash(newpass));
                            cmd.ExecuteNonQuery();
                            
                        }
                    }
                    catch (Exception ex)
                    {

                    }
                }
                else if (Session["isTeacher"] != null)
                {
                    SqlCommand cmd = new SqlCommand("select Password from teachers where Email = @email");
                    cmd.Parameters.AddWithValue("@email", Session["email"]);

                    try
                    {
                        con.Open();
                        SqlDataReader reader = cmd.ExecuteReader();

                        while (reader.Read())
                        {
                            if (reader["Password"].ToString() == Common.ComputeSha256Hash(password.Text))
                            {
                                canChange = true;
                                break;
                            }
                        }

                        if (canChange)
                        {
                            cmd = new SqlCommand("update teachers set Password = @pass where Email = @email");
                            cmd.Parameters.AddWithValue("@email", Session["email"]);
                            cmd.Parameters.AddWithValue("@pass", Common.ComputeSha256Hash(newpass));
                            cmd.ExecuteNonQuery();
                        }
                    }
                    catch (Exception ex)
                    {

                    }
                }
            }
        }
    }
}