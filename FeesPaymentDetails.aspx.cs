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
    public partial class WebForm15 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            PreAdmissionGridGet();
        }
        string constr = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        private void PreAdmissionGridGet()
        {
            using (SqlConnection con = new SqlConnection(constr))
            {
                string query = "select * from FeesPaymentDetails";
                SqlCommand cmd = new SqlCommand(query, con);
                con.Open();
                PreAdmissionGrid.DataSource = cmd.ExecuteReader();
                PreAdmissionGrid.DataBind();
                con.Close();
            }
        }
        protected void PreAdmissionGrid_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }
    }
}