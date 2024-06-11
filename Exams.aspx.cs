using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace College_Management
{
    public partial class Exams : System.Web.UI.Page
    {
        SqlDataAdapter da;
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-JCM7G8I\\SQLEXPRESS;Initial Catalog=College_Management_System;Integrated Security=True");
            SqlCommand cmd = new SqlCommand(@"INSERT INTO [College_Management_System].[dbo].[Exams]([ExamID],[CourseID],[ExamDate],[StartTime],[Duration]) VALUES('" + txtExamID.Text + "','" + txtCourseID.Text + "','" + txtExamDate.Text + "','" + txtStartTime.Text + "','"+txtDuration.Text+"')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("data inserted successfully");
            con.Close();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-JCM7G8I\\SQLEXPRESS;Initial Catalog=College_Management_System;Integrated Security=True");
            SqlCommand cmd = new SqlCommand(@"UPDATE [College_Management_System].[dbo].[Exams] SET [ExamID] = '" + txtExamID.Text + "',[CourseID] = '" + txtCourseID.Text + "',[ExamDate] = '" + txtExamDate.Text + "',[StartTime] = '" + txtStartTime.Text + "',[Duration] = '"+txtDuration.Text+"' WHERE [ExamID] = '" + txtExamID.Text + "','"+txtDuration.Text+"'", con);
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("Data Updated Successfully");
            con.Close();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-JCM7G8I\\SQLEXPRESS;Initial Catalog=College_Management_System;Integrated Security=True");
            SqlCommand cmd = new SqlCommand(@"DELETE FROM [College_Management_System].[dbo].[Exams] WHERE [ExamID] = '" + txtExamID.Text + "'", con);
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("Data Deleted Successfully");
            con.Close();
        }

        protected void btnFetchAll_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-JCM7G8I\\SQLEXPRESS;Initial Catalog=College_Management_System;Integrated Security=True");
            da = new SqlDataAdapter("select * from Grades;", con);
            dt = new DataTable();
            da.Fill(dt);

            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}