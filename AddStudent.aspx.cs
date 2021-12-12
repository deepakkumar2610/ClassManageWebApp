using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace ClassManageApp
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            //string constr = "Data Source=DESKTOP-F0U0098;Initial Catalog=ClassManageApp;Integrated Security=True";
            //SqlConnection con = new SqlConnection(constr);
            //con.Open();
            //SqlCommand cmd = new SqlCommand("insert into StudentDetails values (@fname,@mname,@lname,@email,@contact,@gender,@address,@city,@state,@pin)", con);
            //cmd.Parameters.AddWithValue("fname",txtfname.Text);
            //cmd.Parameters.AddWithValue("mname", txtmname.Text);
            //cmd.Parameters.AddWithValue("lname", txtlname.Text);
            //cmd.Parameters.AddWithValue("email", txtemail.Text);
            //cmd.Parameters.AddWithValue("contact", txtnumber.Text);
            //cmd.Parameters.AddWithValue("gender", txtgender.SelectedValue);
            //cmd.Parameters.AddWithValue("address", txtaddress.Text);
            //cmd.Parameters.AddWithValue("city", txtcity.Text);
            //cmd.Parameters.AddWithValue("state", txtstate.SelectedValue);
            //cmd.Parameters.AddWithValue("pin", txtpin.Text);
            //int i = cmd.ExecuteNonQuery();
            //if (i == 1)
            //{
            //    Response.Write("<script>alert('Data Is Inserted Successfully') </script>");
            //}
            //else

            //{
            //    Response.Write("<script>alert('Data Is Not Insert') </script>");
            //}
            //con.Close();
        }

        protected void AddStudent_Click(object sender, EventArgs e)
        {
            string constr = "Data Source=DESKTOP-F0U0098;Initial Catalog=ClassManageApp;Integrated Security=True";
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into StudentDetails values (@fname,@mname,@lname,@email,@contact,@gender,@address,@city,@state,@pin)", con);
            cmd.Parameters.AddWithValue("fname",txtfname.Text);
            cmd.Parameters.AddWithValue("mname", txtmname.Text);
            cmd.Parameters.AddWithValue("lname", txtlname.Text);
            cmd.Parameters.AddWithValue("email", txtemail.Text);
            cmd.Parameters.AddWithValue("contact", txtnumber.Text);
            cmd.Parameters.AddWithValue("gender", txtgender.SelectedValue);
            cmd.Parameters.AddWithValue("address", txtaddress.Text);
            cmd.Parameters.AddWithValue("city", txtcity.Text);
            cmd.Parameters.AddWithValue("state", txtstate.SelectedValue);
            cmd.Parameters.AddWithValue("pin", txtpin.Text);
            int i = cmd.ExecuteNonQuery();
            if (i == 1)
            {
                Response.Write("<script>alert('One more student is add  Successfully') </script>");
            }
            else
            {
                Response.Write("<script>alert('Student is not added') </script>");
            }
            con.Close();
        }
    }
}