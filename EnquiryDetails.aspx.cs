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
    public partial class WebForm9 : System.Web.UI.Page
    {
        string constr = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //string constr = "Data Source=DESKTOP-F0U0098;Initial Catalog=ClassManageApp;Integrated Security=True";
                GridviewGet();
            }
        }

        private void GridviewGet()
        {
            using (SqlConnection con = new SqlConnection(constr))
            {
                string query = "select * from EnquiryDetails";
                SqlCommand cmd = new SqlCommand(query, con);
                con.Open();
                EnquiryGrid.DataSource = cmd.ExecuteReader();
                EnquiryGrid.DataBind();
                con.Close();
            }
        }
        
        protected void EnquiryGrid_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(EnquiryGrid.DataKeys[e.RowIndex].Value);

            using (SqlConnection con = new SqlConnection(constr))
            {
                string query = "Delete from EnquiryDetails Where Enquiry_id=" + id;
                SqlCommand cmd = new SqlCommand(query, con);
                con.Open();
                int row = cmd.ExecuteNonQuery();
                con.Close();

                if (row == 1) {
                    Response.Write("<script>alert('Enquiry Data is Deleted') </script>");
                }
                GridviewGet();
            }

        }
    }
}