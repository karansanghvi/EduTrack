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
    public partial class WebForm16 : System.Web.UI.Page
    {
        string classid,className;
        protected void Page_Load(object sender, EventArgs e)
        {
            classid=Request.QueryString["cid"].ToString();
            className = Request.QueryString["cname"].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string Title = assignmentTitle.Text;
            string Desc = assignmentDescription.Text;
            DateTime Due = DateTime.Parse(dueDate.Text);
            int marks = int.Parse(pointsText.Text);
            string id = Common.GenerateRandomString(16);

            using(SqlConnection con = new SqlConnection(Common.connectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into Assignments (Title, CourseId, Id, Description, Points, Due) values (@title, @cid, @id, @desc, @pts, @due)",con);
                cmd.Parameters.AddWithValue("@title", Title);
                cmd.Parameters.AddWithValue("@cid", classid);
                cmd.Parameters.AddWithValue("@id", id);
                cmd.Parameters.AddWithValue("@desc", Desc);
                cmd.Parameters.AddWithValue("@pts", marks);
                cmd.Parameters.AddWithValue("@due", Due);
                cmd.ExecuteNonQuery();
                Response.Redirect("ClassworkTeacherClass.aspx?id="+classid+"&name="+className);
            }
        }
    }
}