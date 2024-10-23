using EduTrack.CommonClasses;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EduTrack
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        string className, classId;
        protected void Page_Load(object sender, EventArgs e)
        {
            classId = Request.QueryString["id"];
            className = Request.QueryString["name"];
            h1_className.InnerHtml = className;

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
                SqlCommand cmd = new SqlCommand("select Title, Id, Due from Assignments where CourseId = @cid", con);
                cmd.Parameters.AddWithValue("@cid", classId);
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

        protected void viewAssignment_Click(object sender, EventArgs e)
        {
            Button clickedbtn = sender as Button;
            string assignId = clickedbtn.CommandArgument.ToString();
            Response.Redirect("Assignment.aspx?id="+assignId+"&cid="+classId+"&cname="+className);
        }
    }
}