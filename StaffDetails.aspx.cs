using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace ClassManageApp
{
    public partial class WebForm12 : System.Web.UI.Page
    {
        string constr = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) 
            {
                StaffDetailsGridGet();
            }
        }

        private void StaffDetailsGridGet()
        {
            using (SqlConnection con = new SqlConnection(constr))
            {
                string query = "select * from StaffDetails";
                SqlCommand cmd = new SqlCommand(query, con);
                con.Open();
                StaffDetailsGrid.DataSource = cmd.ExecuteReader();
                StaffDetailsGrid.DataBind();
                con.Close();
            }
        }


    }

}