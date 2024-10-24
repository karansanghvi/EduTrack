using EduTrack.CommonClasses;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EduTrack
{
    public partial class WebForm18 : System.Web.UI.Page
    {
        string cid, cname, assignId, assignName;
        protected void Page_Load(object sender, EventArgs e)
        {
            cid = Request.QueryString["cid"];
            cname = Request.QueryString["cname"];
            assignId = Request.QueryString["id"];
            assignName = Request.QueryString["name"];

            H1_ExperimentName.InnerHtml = assignName;
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
                SqlCommand cmd = new SqlCommand("select * from AssignmentSubs where AssignmentId = @id and isMarked = 0", con);
                cmd.Parameters.AddWithValue("@id", assignId);
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

        protected void Submit_Marks_Click(object sender, EventArgs e)
        {
            Button clickedbtn = sender as Button;
            RepeaterItem item = clickedbtn.NamingContainer as RepeaterItem;
            TextBox marksTextBox = item.FindControl("Textbox1") as TextBox;
            string id = clickedbtn.CommandName;
            string email = clickedbtn.CommandArgument;
            int marks = int.Parse(marksTextBox.Text);

            using (SqlConnection con = new SqlConnection(Common.connectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("update AssignmentSubs set Marks = @marks, isMarked = 1 where AssignmentId = @id and StudentEmail = @email",con);
                cmd.Parameters.AddWithValue("@marks", marks);
                cmd.Parameters.AddWithValue("@id", id);
                cmd.Parameters.AddWithValue("@email", email);
                cmd.ExecuteNonQuery();
            }

            BindRepeater();
        }
    }
}