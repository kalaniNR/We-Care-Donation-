using System;
using System.Data.SqlClient;
using System.Data;

namespace final_project
{
    public partial class reference : System.Web.UI.Page
    {
        private string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Donation.mdf;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Add record
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                try
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand("INSERT INTO ref (ref_no, name) VALUES (@ref_no, @name)", con))
                    {
                        cmd.Parameters.Add(new SqlParameter("@ref_no", SqlDbType.NVarChar) { Value = TextBox1.Text.Trim() });
                        cmd.Parameters.Add(new SqlParameter("@name", SqlDbType.NVarChar) { Value = TextBox2.Text.Trim() });

                        cmd.ExecuteNonQuery();
                    }

                    clear();
                    Response.Write("<script>alert('Registered successfully!');</script>");
                }
                catch (Exception ex)
                {
                    // Log error in case of failure
                    Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
                }
            }
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            // Update record
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                try
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand("UPDATE ref SET name=@name WHERE ref_no=@ref_no", con))
                    {
                        cmd.Parameters.Add(new SqlParameter("@ref_no", SqlDbType.NVarChar) { Value = TextBox1.Text.Trim() });
                        cmd.Parameters.Add(new SqlParameter("@name", SqlDbType.NVarChar) { Value = TextBox2.Text.Trim() });

                        cmd.ExecuteNonQuery();
                    }

                    clear();
                    Response.Write("<script>alert('Updated successfully!');</script>");
                }
                catch (Exception ex)
                {
                    // Log error in case of failure
                    Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
                }
            }
            GridView1.DataBind();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            // Delete record
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                try
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand("DELETE FROM ref WHERE ref_no=@ref_no", con))
                    {
                        cmd.Parameters.Add(new SqlParameter("@ref_no", SqlDbType.NVarChar) { Value = TextBox1.Text.Trim() });

                        cmd.ExecuteNonQuery();
                    }

                    clear();
                    Response.Write("<script>alert('Deleted successfully!');</script>");
                }
                catch (Exception ex)
                {
                    // Log error in case of failure
                    Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
                }
            }
            GridView1.DataBind();
        }

        private void clear()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
        }
    }
}
