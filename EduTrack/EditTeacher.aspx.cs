using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EduTrack.CommonClasses;

namespace EduTrack
{
    public partial class WebForm20 : System.Web.UI.Page
    {
        string connectionString = "data source=.\\SQLEXPRESS; database=EduTrack; integrated security=SSPI";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridView();
            }
        }

        private void BindGridView()
        {
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = "Select Id, Name, Email from teachers";
                SqlCommand cmd = new SqlCommand(query, con);
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int rowIndex = e.RowIndex;
            string email = GridView1.DataKeys[rowIndex].Values["Email"].ToString();


            if (email != "admin@admin.com")
            {
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    string query = "delete from teachers where Email = @email";
                    SqlCommand cmd = new SqlCommand(query, conn);
                    cmd.Parameters.AddWithValue("@email", email);
                    conn.Open();
                    cmd.ExecuteNonQuery();
                }
            }
            else
            {

            }

            BindGridView();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "ResetPassword")
            {
                string email = e.CommandArgument.ToString();
                if (email != "admin@admin.com")
                {
                    ResetUserPassword(email);
                }
            }
        }

        private void ResetUserPassword(string email)
        {
            string randPass = Common.GenerateRandomString(8);
            string emailContent = "Your Edutrack Password has been reset by Admin. You can use the password: " + randPass + " to login to your account. Please be sure to change the password once you have logged in.";
            string emailSubject = "Your Edutrack Password has been reset";
            string toEmail = email;
            string fromEmail = "edutrack4@gmail.com";
            string password = "9ejYRgXKOV21rl488jJlidfazeDqA5UP";

            if (Common.SendEmail(emailContent, emailSubject, toEmail, fromEmail, password))
            {
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();
                    SqlCommand cmd = new SqlCommand("update teachers set Password = '" + Common.ComputeSha256Hash(randPass) + "' where Email = '" + email + "';",conn);
                    cmd.ExecuteNonQuery();
                }
            }
            else
            {

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Signup.aspx?type=Teacher");
        }
    }
}