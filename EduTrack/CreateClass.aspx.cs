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
    public partial class WebForm13 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = className.Text;
            string desc = classDescription.Text;
            string code = Common.GenerateRandomString(6);

            using (SqlConnection con = new SqlConnection(Common.connectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into Courses (Name, ID, Description) values (@name, @id, @desc)", con);
                cmd.Parameters.AddWithValue("@name", name);
                cmd.Parameters.AddWithValue("@id", code);
                cmd.Parameters.AddWithValue("@desc", desc);
                cmd.ExecuteNonQuery();
            }

            Response.Redirect("TeacherHomePage.aspx");
        }
    }
}