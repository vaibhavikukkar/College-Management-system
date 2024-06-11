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
    public partial class Library : System.Web.UI.Page
    {
        SqlDataAdapter da;
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-JCM7G8I\\SQLEXPRESS;Initial Catalog=College_Management_System;Integrated Security=True");
            SqlCommand cmd = new SqlCommand(@"INSERT INTO [College_Management_System].[dbo].[Library]([BookID],[Title],[Author],[ISBN],[Quantity],[Avaliable]) VALUES('" + txtBookID.Text + "','" + txtTitle.Text + "','" + txtAuthor.Text + "','" + txtISBN.Text + "','" + txtQuantity.Text + "','" + txtAvaliable.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("data inserted successfully");
            con.Close();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-JCM7G8I\\SQLEXPRESS;Initial Catalog=College_Management_System;Integrated Security=True");
            SqlCommand cmd = new SqlCommand(@"UPDATE [College_Management_System].[dbo].[Library] SET [BookID] = '" + txtBookID.Text + "',[Title] = '" + txtTitle.Text + "',[Author] = '" + txtAuthor.Text + "',[ISBN] = '" + txtISBN.Text + "',[Quantity] = '" + txtQuantity.Text + "',[Avaliable]='" + txtAvaliable.Text + "'", con);
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("Data Updated Successfully");
            con.Close();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-JCM7G8I\\SQLEXPRESS;Initial Catalog=College_Management_System;Integrated Security=True");
            SqlCommand cmd = new SqlCommand(@"DELETE FROM [College_Management_System].[dbo].[Library] WHERE [BookID] = '" + txtBookID.Text + "'", con);
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("Data Deleted Successfully");
            con.Close();
        }

        protected void btnFetchAll_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-JCM7G8I\\SQLEXPRESS;Initial Catalog=College_Management_System;Integrated Security=True");
            da = new SqlDataAdapter("select * from Library;", con);
            dt = new DataTable();
            da.Fill(dt);

            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}