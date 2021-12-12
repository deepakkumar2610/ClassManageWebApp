using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace ClassManageApp
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DdlDynamicFunction();

        }

        private void DdlDynamicFunction()
        {
            PopulateStandardDropDown();
            PopulateSectionDropDown();
            PopulateBatchDropDown();
        }

        private void PopulateStandardDropDown()
        {
            string constr = ConfigurationManager.ConnectionStrings["DBCS"].ToString();
            // connection string  
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlCommand com = new SqlCommand("select * from standard", con);
            // table name   
            SqlDataAdapter da = new SqlDataAdapter(com);
            DataSet ds = new DataSet();
            da.Fill(ds);  // fill dataset  
            ddlStandard.DataTextField = ds.Tables[0].Columns["StandardName"].ToString(); // text field name of table dispalyed in dropdown       
            ddlStandard.DataValueField = ds.Tables[0].Columns["StandardID"].ToString();
            // to retrive specific  textfield name   
            ddlStandard.DataSource = ds.Tables[0];      //assigning datasource to the dropdownlist  
            ddlStandard.DataBind();  //binding dropdownlist  
            con.Close();
        }
        private void PopulateSectionDropDown()
        {
            string constr = ConfigurationManager.ConnectionStrings["DBCS"].ToString();
            // connection string  
            SqlConnection con = new SqlConnection(constr);
            con.Open();

            SqlCommand com = new SqlCommand("select * from section", con);
            // table name   
            SqlDataAdapter da = new SqlDataAdapter(com);
            DataSet ds = new DataSet();
            da.Fill(ds);  // fill dataset  
            ddlSection.DataTextField = ds.Tables[0].Columns["SectionName"].ToString(); // text field name of table dispalyed in dropdown       
            ddlSection.DataValueField = ds.Tables[0].Columns["SectionID"].ToString();
            // to retrive specific  textfield name   
            ddlSection.DataSource = ds.Tables[0];      //assigning datasource to the dropdownlist  
            ddlSection.DataBind();  //binding dropdownlist  
            con.Close();
        }

        private void PopulateBatchDropDown()
        {
            string constr = ConfigurationManager.ConnectionStrings["DBCS"].ToString();
            // connection string  
            SqlConnection con = new SqlConnection(constr);
            con.Open();

            SqlCommand com = new SqlCommand("select * from batch", con);
            // table name   
            SqlDataAdapter da = new SqlDataAdapter(com);
            DataSet ds = new DataSet();
            da.Fill(ds);  // fill dataset  
            ddlBatch.DataTextField = ds.Tables[0].Columns["BatchName"].ToString(); // text field name of table dispalyed in dropdown       
            ddlBatch.DataValueField = ds.Tables[0].Columns["BatchID"].ToString();
            // to retrive specific  textfield name   
            ddlBatch.DataSource = ds.Tables[0];      //assigning datasource to the dropdownlist  
            ddlBatch.DataBind();  //binding dropdownlist  
            con.Close();
        }

        //protected void Button_Click(object sender, EventArgs e)
        //{
        //    string constr = "Data Source=DESKTOP-F0U0098;Initial Catalog=ClassManageApp;Integrated Security=True";
        //    SqlConnection con = new SqlConnection(constr);
        //    con.Open();
        //    SqlCommand cmd = new SqlCommand("insert into addAdminStud values (@fname,@lname,@phone,@email)", con);
        //    cmd.Parameters.AddWithValue("fname", txtsfname.Text);
        //    cmd.Parameters.AddWithValue("lname", txtslname.Text);
        //    cmd.Parameters.AddWithValue("phone", txtsnumber.Text);
        //    cmd.Parameters.AddWithValue("email", txtsemail.Text);
        //    int i = cmd.ExecuteNonQuery();
        //    if (i == 1)
        //    {
        //        Response.Write("<script>alert('Data Is Inserted Successfully') </script>");
        //    }
        //    else

        //    {
        //        Response.Write("<script>alert('Data Is Not Insert') </script>");
        //    }
        //    con.Close();
        //}

        protected void AddStudent_Click(object sender, EventArgs e)
        {
            string constr = "Data Source=DESKTOP-F0U0098;Initial Catalog=ClassManageApp;Integrated Security=True";
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into addAdminStud values (@fname,@lname,@phone,@email)", con);
            cmd.Parameters.AddWithValue("fname", txtsfname.Text);
            cmd.Parameters.AddWithValue("mname", txtsmname.Text);
            cmd.Parameters.AddWithValue("lname", txtslname.Text);
            cmd.Parameters.AddWithValue("phone", txtsnumber.Text);
            cmd.Parameters.AddWithValue("email", txtsemail.Text);
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