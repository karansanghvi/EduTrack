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
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
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
                SqlCommand cmd = new SqlCommand("select Name, ID from Courses", con);
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

        protected void joinClassButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("JoinClass.aspx");
        }

        protected void viewMore_Click(object sender, EventArgs e)
        {
            Button clickedbtn = sender as Button;

            string id = clickedbtn.CommandArgument;
            string name = clickedbtn.CommandName;

            Response.Redirect("Class.aspx?id="+id+"&name="+name);
        }

        protected void LeaveBtn_Click(object sender, EventArgs e)
        {

        }
    }
}