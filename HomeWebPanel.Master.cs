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
    public partial class HomeWebPanel : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                DdlDynamicFunction();
                Clear();
            }
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
        void Clear() 
        {
            //for enquiry details
            txten_name.Text = "";
            txten_mobile.Text = "";
            txten_email.Text = "";

            //for preadmission details
            PreAdFname.Text = "";
            PreAdMname.Text = "";
            PreAdLname.Text = "";
            PreAdNumber.Text = "";
            PreAdEmail.Text = "";
            ddlStandard.ClearSelection();
            ddlSection.ClearSelection();
            ddlBatch.ClearSelection();
        }
        protected void SubmitEnquiry_Click(object sender, EventArgs e)
        {
            string constr = "Data Source=DESKTOP-F0U0098;Initial Catalog=ClassManageApp;Integrated Security=True";
            SqlConnection con = new SqlConnection(constr);
            string spname = "SpEnquiryDetails";
            con.Open();
            SqlCommand cmd = new SqlCommand(spname, con)
            {
                CommandType = System.Data.CommandType.StoredProcedure
            };
            cmd.Parameters.AddWithValue("@fullName",txten_name.Text);
            cmd.Parameters.AddWithValue("@mobile", txten_mobile.Text);
            cmd.Parameters.AddWithValue("@email", txten_email.Text);
            int i = cmd.ExecuteNonQuery();
            if (i == 1)
            {
                Response.Write("<script>alert('Your Response is Submitted') </script>");
            }
            else
            {
                Response.Write("<script>alert('Your Response is Not Submittted') </script>");
            }
            con.Close();
            Clear();
        }

        protected void PreadSubmit_Click(object sender, EventArgs e)
        {
            string constr = "Data Source=DESKTOP-F0U0098;Initial Catalog=ClassManageApp;Integrated Security=True";
            SqlConnection con = new SqlConnection(constr);
            string spname = "SpPreAddmission";
            con.Open();
            SqlCommand cmd = new SqlCommand(spname, con)
            {
                CommandType = System.Data.CommandType.StoredProcedure
            };
            cmd.Parameters.AddWithValue("@PreAdFname",PreAdFname.Text);
            cmd.Parameters.AddWithValue("@PreAdMname",PreAdMname.Text);
            cmd.Parameters.AddWithValue("@PreAdLname",PreAdLname.Text);
            cmd.Parameters.AddWithValue("@PreAdMobileno",PreAdNumber.Text);
            cmd.Parameters.AddWithValue("@PreAdEmail",PreAdEmail.Text);
            cmd.Parameters.AddWithValue("@PreAdStandard", ddlStandard.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@PreAdSection", ddlSection.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@PreAdBatch", ddlBatch.SelectedItem.Text);


            int i = cmd.ExecuteNonQuery();
            if (i == 1)
            {
                Response.Write("<script>alert('Thankyou! Your Response is Submitted') </script>");
            }
            else
            {
                Response.Write("<script>alert('Your Response is Not Submittted') </script>");
            }
            con.Close();
            Clear();
        }
    }
    }


