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
    public partial class WebForm11 : System.Web.UI.Page
    {
        string constr = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) 
            {
                Clear();
            }
        }

        protected void SaveStaffDetails_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(constr);
            string spname = "SpManageStaffDetails";
            con.Open();
            SqlCommand cmd = new SqlCommand(spname, con)
            {
                CommandType = System.Data.CommandType.StoredProcedure
            };
            cmd.Parameters.AddWithValue("@ACTION", "CREATE");
            cmd.Parameters.AddWithValue("@FirstName", StaffFname.Text);
            cmd.Parameters.AddWithValue("@LastName", StaffLname.Text);
            cmd.Parameters.AddWithValue("@Contact", StaffNumber.Text);
            cmd.Parameters.AddWithValue("@Email", StaffEmail.Text);
            cmd.Parameters.AddWithValue("@Qualification", DdlQualification.SelectedValue);
            cmd.Parameters.AddWithValue("@TeachingSubject", TeachingSubject.Text);
            int i = cmd.ExecuteNonQuery();
            if (i == 1)
            {
                Response.Write("<script>alert('One more Staff added!') </script>");
                Clear();
            }
            else
            {
                Response.Write("<script>alert('Sorry! Something went wrong...') </script>");
            }
            con.Close();
        }

        private void Clear()
        {
            StaffFname.Text = ""; 
            StaffLname.Text = "";
            StaffNumber.Text = "";
            StaffEmail.Text = "";
            DdlQualification.SelectedValue = "";
            TeachingSubject.Text = "";
        }

    }
}