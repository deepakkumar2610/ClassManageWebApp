using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClassManageApp
{
    public partial class WebForm14 : System.Web.UI.Page
    {
        string constr = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                PreAdmissionGridGet();
            }
            
        }

        private void PreAdmissionGridGet()
        {
            using (SqlConnection con = new SqlConnection(constr))
            {
                string query = "select * from PreAdmissionDetails";
                SqlCommand cmd = new SqlCommand(query, con);
                con.Open();
                PreAdmissionGrid.DataSource = cmd.ExecuteReader();
                PreAdmissionGrid.DataBind();
                con.Close();
            }
        }

        protected void PreAdmissionGrid_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(PreAdmissionGrid.DataKeys[e.RowIndex].Value);

            using (SqlConnection con = new SqlConnection(constr))
            {
                string query = "Delete from PreAdmissionDetails Where PreAdmissionID=" + id;
                SqlCommand cmd = new SqlCommand(query, con);
                con.Open();
                int row = cmd.ExecuteNonQuery();
                con.Close();

                if (row == 1)
                {
                    Response.Write("<script>alert('Are you sure you want to delete this item?') </script>");
                    PreAdmissionGridGet();
                }
                else
                {
                    Response.Write("<script>alert('Somethiong went wrong!') </script>");
                }
            }
        }

        protected void ApproveStudent_Click(object sender, EventArgs e)
        {
            
        }

        protected void PreAdmissionGrid_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "ApproveStudent")
            {
                //Determine the RowIndex of the Row whose Button was clicked.
                int rowIndex = Convert.ToInt32(e.CommandArgument);

                //Reference the GridView Row.
                GridViewRow row = PreAdmissionGrid.Rows[rowIndex];

                //Fetch value of Name.
                //string name = (row.FindControl("txtName") as TextBox).Text;
                int id = Convert.ToInt32(PreAdmissionGrid.DataKeys[rowIndex].Value);

                
                //string StudentID = row.Cells[0].Text;


                SqlConnection con = new SqlConnection(constr);
                string spname = "approveStudent";
                con.Open();
                SqlCommand cmd = new SqlCommand(spname, con)
                {
                    CommandType = System.Data.CommandType.StoredProcedure
                };
                cmd.Parameters.AddWithValue("@PreStudentID", id);
                int i = cmd.ExecuteNonQuery();
                if (i == 1)
                {
                    //Response.Write("<script>alert('Student Approved') </script>");
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Approved Successfully : " + id.ToString() + "');", true);
                }
                else
                {
                    Response.Write("<script>alert('Sorry! Something is worng in approval...') </script>");
                }
                con.Close();
                //ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('ID: " + id.ToString() + "\\nStudentID: " + StudentID + "');", true);

                
            }
        }
    }
}