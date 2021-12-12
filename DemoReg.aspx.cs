using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace ClassManageApp
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            string constr = "Data Source=DESKTOP-F0U0098;Initial Catalog=DemoDetails;Integrated Security=True";
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into demotbl values (@fname,@mname,@lname)", con);
            cmd.Parameters.AddWithValue("fname", fname.Text);
            cmd.Parameters.AddWithValue("mname", mname.Text);
            cmd.Parameters.AddWithValue("lname", lname.Text);
            int i = cmd.ExecuteNonQuery();
            if (i == 1)
            {
                Response.Write("<script>alert('Data Is Inserted Successfully') </script>");
            }
            else

            {
                Response.Write("<script>alert('Data Is Not Insert') </script>");
            }
            con.Close();
        }
    }
}