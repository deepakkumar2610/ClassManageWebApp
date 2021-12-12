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
    public partial class WebForm13 : System.Web.UI.Page
    {
        string constr = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) 
            {
                Clear();
            }
        }

        protected void AddPayment_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(constr);
            string spname = "SpFeesPaymentDetails";
            con.Open();
            SqlCommand cmd = new SqlCommand(spname, con)
            {
                CommandType = System.Data.CommandType.StoredProcedure
            };
            cmd.Parameters.AddWithValue("@Name", Name.Text);
            cmd.Parameters.AddWithValue("@Amount", Amount.Text);
            cmd.Parameters.AddWithValue("@Paid", Paid.Text);
            cmd.Parameters.AddWithValue("@Balance", Balance.Text);
            cmd.Parameters.AddWithValue("@PaymentType", DdlPaymentType.SelectedValue);
            int i = cmd.ExecuteNonQuery();
            if (i == 1)
            {
                Response.Write("<script>alert('Fees Payment Details added!') </script>");
                Clear();
            }
            else
            {
                Response.Write("<script>alert('Sorry! Something went wrong...') </script>");
            }
            con.Close();
        }

        void Clear()
        {
            Name.Text = "";
            Amount.Text = "";
            Paid.Text = "";
            DdlPaymentType.Text = "";

        }
    }
}