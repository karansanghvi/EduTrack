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
    public partial class WebForm2 : System.Web.UI.Page
    {
        string id, cid, cname;
        string title, desc;

        

        int points;
        DateTime duedate;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["id"];
            cid = Request.QueryString["cid"];
            cname = Request.QueryString["cname"];
            bool hasExistingSubmission = false;

            using (SqlConnection con = new SqlConnection(Common.connectionString))
            {
                string email = Session["email"].ToString();
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from Assignments where id = @id", con);
                cmd.Parameters.AddWithValue("@id", id);

                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        title = reader["Title"].ToString();
                        desc = reader["Description"].ToString();
                        points = int.Parse(reader["Points"].ToString());
                        duedate = DateTime.Parse(reader["Due"].ToString());
                        break;
                    }
                }
                P_CourseName.InnerHtml = cname;
                h1_ExperimentName.InnerHtml = title;
                P_TotalMarks.InnerHtml = points.ToString() + "points";
                P_Due.InnerHtml = duedate.ToString("dd-MM-yy");
                ExpDesc.InnerHtml = desc;

                cmd = new SqlCommand("select * from AssignmentSubs where StudentEmail = @email and AssignmentId = @id");
                cmd.Parameters.AddWithValue("@email", email);
                cmd.Parameters.AddWithValue("@id", id);
                
                
                using(SqlDataReader reader = cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        hasExistingSubmission = true;
                        TextBox1.Text = reader["SubData"].ToString();
                        TextBox1.Enabled = false;
                        upload.Visible = false;
                        Grade_Div.Visible = true;
                        if (reader["isMarked"].ToString() == "1")
                        {
                            P_Score.InnerHtml = "Points: " + reader["Marks"].ToString() + "/" + points.ToString();
                        }
                        else
                        {
                            P_Score.InnerHtml = "Not Scored";
                        }
                    }

                    if(!hasExistingSubmission)
                    {
                        Grade_Div.Visible = false;
                        upload.Visible = true;
                    }
                }
            }
        }

        protected void upload_Click(object sender, EventArgs e)
        {
            using(SqlConnection con = new SqlConnection(Common.connectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into AssignmentSubs (StudentEmail, AssignmentId, SubData, SubDate, Marks, isMarked) values (@email, @id, @subData, @subDate, @marks, @isMarked)", con);
                cmd.Parameters.AddWithValue("@email", Session["email"].ToString());
                cmd.Parameters.AddWithValue("@id", id);
                cmd.Parameters.AddWithValue("@subData", TextBox1.Text);
                cmd.Parameters.AddWithValue("@subDate", DateTime.Now);
                cmd.Parameters.AddWithValue("@marks", 0);
                cmd.Parameters.AddWithValue("@isMarked", 0);
            }
        }

    }
}