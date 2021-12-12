using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace ClassManageApp
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        string constr = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //string constr = "Data Source=DESKTOP-F0U0098;Initial Catalog=ClassManageApp;Integrated Security=True";
                StandGridGet();
                SectionGridGet();
                BatchGridGet();
                Clear();
            }
        }

        void Clear()
        {
            Standard.Text = "";
            StdDesc.Text = "";
            Section.Text = "";
            SecDesc.Text = "";

        }

        private void StandGridGet()
        {
            using (SqlConnection con = new SqlConnection(constr))
            {
                string query = "select * from Standard";
                SqlCommand cmd = new SqlCommand(query, con);
                con.Open();
                StandGrid.DataSource = cmd.ExecuteReader();
                StandGrid.DataBind();
                con.Close();
            }
        }

        private void SectionGridGet()
        {
            using (SqlConnection con = new SqlConnection(constr))
            {
                string query = "select * from Section";
                SqlCommand cmd = new SqlCommand(query, con);
                con.Open();
                SectionGrid.DataSource = cmd.ExecuteReader();
                SectionGrid.DataBind();
                con.Close();
            }
        }

        private void BatchGridGet()
        {
            using (SqlConnection con = new SqlConnection(constr))
            {
                string query = "select * from Batch";
                SqlCommand cmd = new SqlCommand(query, con);
                con.Open();
                BatchGrid.DataSource = cmd.ExecuteReader();
                BatchGrid.DataBind();
                con.Close();
            }
        }
        protected void AddStandard_Click1(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(constr);
            string spname = "uspManageStandard";
            con.Open();
            SqlCommand cmd = new SqlCommand(spname, con)
            {
                CommandType = System.Data.CommandType.StoredProcedure
            };
            cmd.Parameters.AddWithValue("@ACTION", "CREATE");
            cmd.Parameters.AddWithValue("@StandardName", Standard.Text);
            cmd.Parameters.AddWithValue("@Description", StdDesc.Text);
            int i = cmd.ExecuteNonQuery();
            if (i == 1)
            {
                Response.Write("<script>alert('One more standard added!') </script>");
                StandGridGet();
                Clear();
            }
            else
            {
                Response.Write("<script>alert('Sorry! Something went wrong...') </script>");
            }
            con.Close();
        }

        protected void StandGrid_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(StandGrid.DataKeys[e.RowIndex].Value);

            using (SqlConnection con = new SqlConnection(constr))
            {
                string query = "Delete from Standard Where StandardID=" + id;
                SqlCommand cmd = new SqlCommand(query, con);
                con.Open();
                int row = cmd.ExecuteNonQuery();
                con.Close();

                if (row == 1)
                {
                    Response.Write("<script>alert('Are you sure you want to delete this item?') </script>");
                    StandGridGet();
                }
                else
                {
                    Response.Write("<script>alert('Somethiong went wrong!') </script>");
                }
            }
        }

        protected void StandGrid_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {

                using (SqlConnection con = new SqlConnection(constr))
                {
                    int id = Convert.ToInt32(StandGrid.DataKeys[e.RowIndex].Value);
                    TextBox StandardName = (TextBox)StandGrid.Rows[e.RowIndex].FindControl("StandardName");
                    TextBox Description = (TextBox)StandGrid.Rows[e.RowIndex].FindControl("Description");
                    string spname = "uspManageStandard";
                    SqlCommand cmd = new SqlCommand(spname, con)
                    {
                        CommandType = System.Data.CommandType.StoredProcedure
                    };
                    cmd.Parameters.AddWithValue("@ACTION", "UPDATE");
                    cmd.Parameters.AddWithValue("@StandardName", Convert.ToString(Standard.Text.Trim()));
                    cmd.Parameters.AddWithValue("@Description", Convert.ToString(StdDesc.Text.Trim()));
                    int row = cmd.ExecuteNonQuery();
                    if (row == 1)
                    {
                        Response.Write("<script>alert('Data is edited') </script>");
                        StandGrid.EditIndex = -1;
                        StandGridGet();
                    }
                    else
                    {
                        Response.Write("<script>alert('Somethiong went wrong!') </script>");
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Somethiong went wrong! Please check your input data') </script>");
            }

        }

        //here this is Section code
        protected void AddSection_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(constr);
            string spname = "uspManageSection";
            con.Open();
            SqlCommand cmd = new SqlCommand(spname, con)
            {
                CommandType = System.Data.CommandType.StoredProcedure
            };
            cmd.Parameters.AddWithValue("@ACTION", "CREATE");
            cmd.Parameters.AddWithValue("@sectionName", Section.Text);
            cmd.Parameters.AddWithValue("@Description", SecDesc.Text);
            int i = cmd.ExecuteNonQuery();
            if (i == 1)
            {
                Response.Write("<script>alert('One more section added!') </script>");
                SectionGridGet();
                Clear();
            }
            else
            {
                Response.Write("<script>alert('Sorry! Something went wrong...') </script>");
            }
            con.Close();
        }

        protected void SectionGrid_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(SectionGrid.DataKeys[e.RowIndex].Value);

            using (SqlConnection con = new SqlConnection(constr))
            {
                string query = "Delete from Section Where SectionID=" + id;
                SqlCommand cmd = new SqlCommand(query, con);
                con.Open();
                int row = cmd.ExecuteNonQuery();
                con.Close();

                if (row == 1)
                {
                    Response.Write("<script>alert('Are you sure you want to delete this item?') </script>");
                    SectionGridGet();
                }
                else
                {
                    Response.Write("<script>alert('Somethiong went wrong!') </script>");
                }
            }
        }
        //here is the batch code
        protected void AddBatch_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(constr);
                string spname = "uspManageBatch";
                con.Open();
                SqlCommand cmd = new SqlCommand(spname, con)
                {
                    CommandType = System.Data.CommandType.StoredProcedure
                };
                cmd.Parameters.AddWithValue("@ACTION", "CREATE");
                cmd.Parameters.AddWithValue("@BatchName", Batch.Text);
                cmd.Parameters.AddWithValue("@Description", BatchDesc.Text);
                int i = cmd.ExecuteNonQuery();
                if (i == 1)
                {
                    Response.Write("<script>alert('One more batch added!') </script>");
                    BatchGridGet();
                    Clear();
                }
                else
                {
                    Response.Write("<script>alert('Sorry! Something went wrong...') </script>");
                }
                con.Close();
            }
            catch
            {
                Response.Write("<script>alert('Sorry! Something went wrong from catch...') </script>");
            }

        }

        protected void BatchGrid_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(BatchGrid.DataKeys[e.RowIndex].Value);

            using (SqlConnection con = new SqlConnection(constr))
            {
                string query = "Delete from Batch Where BatchID=" + id;
                SqlCommand cmd = new SqlCommand(query, con);
                con.Open();
                int row = cmd.ExecuteNonQuery();
                con.Close();

                if (row == 1)
                {
                    Response.Write("<script>alert('Are you sure you want to delete this item?') </script>");
                    BatchGridGet();
                }
                else
                {
                    Response.Write("<script>alert('Somethiong went wrong!') </script>");
                }
            }

        }

        
    }
}
