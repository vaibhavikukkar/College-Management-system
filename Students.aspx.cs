using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;

namespace College_Management
{
    public partial class Students : System.Web.UI.Page
    {
        SqlDataAdapter da;
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-JCM7G8I\\SQLEXPRESS;Initial Catalog=College_Management_System;Integrated Security=True");
            SqlCommand cmd = new SqlCommand(@"INSERT INTO [College_Management_System].[dbo].[Students]([StudentID],[FirstName],[LastName],[DOB],[Gender],[Email],[Phone],[Address],[GuardianName],[GuardianPhone])
     VALUES('" + txtStudentID.Text + "','" + txtFirstName.Text + "','" + txtLastName.Text + "','" + txtDOB.Text + "','" + txtGender.Text + "','" + txtEmail.Text + "','" + txtPhone.Text + "','" + txtAddress.Text + "','" + txtGuardianName.Text + "','" + txtGuardianPhone.Text+"')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("Data Inserted Successfully");
            con.Close();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-JCM7G8I\\SQLEXPRESS;Initial Catalog=College_Management_System;Integrated Security=True");
            SqlCommand cmd = new SqlCommand(@"UPDATE [College_Management_System].[dbo].[Students] SET [StudentID] = '" + txtStudentID.Text + "',[FirstName] = '" + txtFirstName.Text + "',[LastName] = '" + txtLastName.Text + "',[DOB] = '" + txtDOB.Text + "',[Gender] = '" + txtGender.Text + "',[Email] = '" + txtEmail.Text + "',[Phone] = '" + txtPhone.Text + "',[Address] = '" + txtAddress.Text + "',[GuardianName] = '" + txtGuardianName.Text + "',[GuardianPhone] = '" + txtGuardianPhone.Text + "' WHERE [StudentID] = '" + txtStudentID.Text + "'",con);
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("Data Updated Successfully");
            con.Close();
        }

        protected void btnDDelete_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-JCM7G8I\\SQLEXPRESS;Initial Catalog=College_Management_System;Integrated Security=True");
            SqlCommand cmd = new SqlCommand(@"DELETE FROM [College_Management_System].[dbo].[Students] WHERE [StudentID] = '" + txtStudentID.Text + "'", con);
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("Data Deleted Successfully");
            con.Close();
        }

        protected void btnGo_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-JCM7G8I\\SQLEXPRESS;Initial Catalog=College_Management_System;Integrated Security=True");
            int StudentID = Convert .ToInt32(txtStudentID.Text);

            da = new SqlDataAdapter("select * from Students WHERE StudentID='" + StudentID + "'",con);
            dt = new DataTable();
            da.Fill(dt);

            txtStudentID.Text = dt.Rows[1][0].ToString();
            txtFirstName.Text = dt.Rows[1][1].ToString();
            txtLastName.Text = dt.Rows[1][2].ToString();
            txtDOB.Text = dt.Rows[1][3].ToString();
            txtGender.Text = dt.Rows[1][4].ToString();
            txtEmail.Text = dt.Rows[1][5].ToString();
            txtPhone.Text = dt.Rows[1][6].ToString();
            txtAddress.Text = dt.Rows[1][7].ToString();
            txtGuardianName.Text = dt.Rows[1][8].ToString();
            txtGuardianPhone.Text = dt.Rows[1][9].ToString();
        }

        protected void btnFetchAll_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-JCM7G8I\\SQLEXPRESS;Initial Catalog=College_Management_System;Integrated Security=True");

            da = new SqlDataAdapter("select * from Students", con);
            dt = new DataTable();
            da.Fill(dt);

            GridView2.DataSource =dt;
            GridView2.DataBind();

        }
    }
}