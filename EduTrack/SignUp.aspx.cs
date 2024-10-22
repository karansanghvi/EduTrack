using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using EduTrack.CommonClasses;

namespace EduTrack
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        string type;
        protected void Page_Load(object sender, EventArgs e)
        {
            type = Request.QueryString["type"];

            if (Session["isTeacher"]==null)
            {
                Session["isStudent"] = null;
                Response.Redirect("Login.aspx");
            }

            
            if(type == "Teacher")
            {
                AdminDiv.Visible = true;
                idLabel.Text = "Enter ID Number";
            }
            else
            {
                AdminDiv.Visible=false;
                idLabel.Text = "Enter Roll Number";
            }
        }

        protected void signupButton_Click(object sender, EventArgs e)
        {
            string name = firstName.Text;
            string id = TB_id.Text;
            string email = emailAddress.Text;
            string passwordTxt = Common.ComputeSha256Hash(password.Text);
            bool isAdmin = AdminBox.Checked;

            using(SqlConnection con = new SqlConnection("data source=.\\SQLEXPRESS; database=EduTrack; integrated security=SSPI"))
            {
                if (type == "Teacher")
                {
                    SqlCommand cmd = new SqlCommand("insert into teachers (Name, Email, Id, Password, Admin) values (@Name, @Email, @Id, @Password, @Admin)", con);
                    cmd.Parameters.AddWithValue("@Name", name);
                    cmd.Parameters.AddWithValue("@Email", email);
                    cmd.Parameters.AddWithValue("@Id", id);
                    cmd.Parameters.AddWithValue("@Password", passwordTxt);
                    cmd.Parameters.AddWithValue("@Admin", isAdmin);

                    try
                    {
                        con.Open();
                        cmd.ExecuteNonQuery();
                        Response.Redirect("EditTeacher.aspx");
                    }
                    catch (Exception ex)
                    {
                    }
                }
                else
                {
                    SqlCommand cmd = new SqlCommand("insert into students (Name, Email, Id, Password) values (@Name, @Email, @Id, @Password)", con);
                    cmd.Parameters.AddWithValue("@Name", name);
                    cmd.Parameters.AddWithValue("@Email", email);
                    cmd.Parameters.AddWithValue("@Id", id);
                    cmd.Parameters.AddWithValue("@Password", passwordTxt);
                    try
                    {
                        con.Open();
                        cmd.ExecuteNonQuery();
                        Response.Redirect("EditStudent.aspx");
                    }
                    catch (Exception ex)
                    {
                        Response.Write("<script>alert('" + ex.Message + "')</script>");
                    }
                }
            }
            
        }
    }
}