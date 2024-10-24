using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EduTrack.CommonClasses;

namespace EduTrack
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                BindRepeater();
            }
            if (Session["isTeacher"] == null || Session["email"] == null)
            {
                Response.Redirect("Login.aspx");
            }
        }

        private void BindRepeater()
        {
            using (SqlConnection con = new SqlConnection(Common.connectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select Name, ID from Courses where OwnerEmail = @email", con);
                cmd.Parameters.AddWithValue("@email", Session["email"].ToString());
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    Repeater1.DataSource = dt;
                    Repeater1.DataBind();
                    Repeater1.Visible = true;
                }
                else
                {
                    Repeater1.Visible = false;
                }

            }
        }

        protected void createClass_Click(object sender, EventArgs e)
        {
            Response.Redirect("CreateClass.aspx");
        }

        protected void Remove_Click(object sender, EventArgs e)
        {
            Button clickedBtn = sender as Button;
            string id = clickedBtn.CommandArgument;
            using(SqlConnection con = new SqlConnection(Common.connectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("delete from Courses where ID = @id",con);
                cmd.Parameters.AddWithValue("@id", id);
                cmd.ExecuteNonQuery();
                cmd = new SqlCommand("delete from AssignmentSubs where AssignmentId in (select Id from Assignments where CourseId = @cid);", con);
                cmd.Parameters.AddWithValue("@cid", id);
                cmd.ExecuteNonQuery();
                cmd = new SqlCommand("delete from Assignments where CourseId = @cid",con);
                cmd.Parameters.AddWithValue("@cid", id);
                cmd.ExecuteNonQuery();
                cmd = new SqlCommand("delete from CourseSubs where CourseId = @cid", con);
                cmd.Parameters.AddWithValue("@cid", id);
                cmd.ExecuteNonQuery();
            }
            BindRepeater();
        }

        protected void ViewClass_Click(object sender, EventArgs e)
        {
            Button clickedBtn = sender as Button;
            string id = clickedBtn.CommandArgument;
            string name = clickedBtn.CommandName;
            Response.Redirect("ClassworkTeacherClass.aspx?id=" + id + "&name=" + name);
        }
    }
}