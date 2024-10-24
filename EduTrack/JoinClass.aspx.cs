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
    public partial class WebForm8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["isStudent"] == null || Session["email"] == null)
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void cancelButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("AllClasses.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string cid = classCode.Text.Trim();
            string email = Session["email"].ToString();
            using(SqlConnection con = new SqlConnection(Common.connectionString))
            {
                con.Open();
                bool Subscribed = false;
                bool ClassExists = false;
                using (SqlCommand cmd = new SqlCommand("select * from CourseSubs where CourseId = @cid and Email = @email",con))
                {
                    cmd.Parameters.AddWithValue("@cid", cid);
                    cmd.Parameters.AddWithValue("@email", email);
                    using(SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if(reader.HasRows)
                        {
                            Subscribed = true;
                        }
                    }
                }
                using (SqlCommand cmd = new SqlCommand("select Name from Courses where ID = @id",con))
                {
                    cmd.Parameters.AddWithValue("@id", cid);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            ClassExists = true;
                        }
                    }
                }

                if(!Subscribed && ClassExists)
                {
                    using (SqlCommand cmd = new SqlCommand("insert into CourseSubs (Email, CourseId) values (@email, @id)", con))
                    {
                        cmd.Parameters.AddWithValue("@email", email);
                        cmd.Parameters.AddWithValue("@id", cid);
                        cmd.ExecuteNonQuery();
                    }
                }
            }
            Response.Redirect("AllClasses.aspx");
        }
    }
}