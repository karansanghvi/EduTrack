using EduTrack.CommonClasses;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EduTrack
{
    public partial class WebForm141 : System.Web.UI.Page
    {
        string classId;
        string className;
        protected void Page_Load(object sender, EventArgs e)
        {
            classId = Request.QueryString["id"].ToString();
            className = Request.QueryString["name"].ToString();

            Label1.Text = classId;
            ClassNameHeader.InnerHtml = className;

            if(!IsPostBack)
            {
                BindRepeater();
            }
        }

        private void BindRepeater()
        {
            using (SqlConnection con = new SqlConnection(Common.connectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select Title, Id from Assignments where CourseId = @cid", con);
                cmd.Parameters.AddWithValue("@cid", classId);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if(dt.Rows.Count > 0)
                {
                    Repeater1.DataSource = dt;
                    Repeater1.DataBind();
                    Repeater1.Visible = true;
                }
                else
                {
                    Repeater1.Visible= false;
                }
            }
        }

        protected void createAssignment_Click(object sender, EventArgs e)
        {
            Response.Redirect("CreateAssignment.aspx?cid="+classId+"&cname="+className);
        }

        protected void viewClasswork_Click(object sender, EventArgs e)
        {
            Button clickedBtn = sender as Button;
            string assignId = clickedBtn.CommandArgument;
            Response.Redirect("ClassworkStudentsWorkTeacherClass.aspx?cid=" + classId + "&cname=" + className + "&id=" + assignId);
        }
    }
}