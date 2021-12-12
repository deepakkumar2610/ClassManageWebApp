using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClassManageApp
{
    public partial class Student : System.Web.UI.Page
    {
        string constr = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            StudentDetailsGridGet();
        }

        //there is student get code
        private void StudentDetailsGridGet()
        {
            using (SqlConnection con = new SqlConnection(constr))
            {
                string query = "select * from StudentDetails";
                SqlCommand cmd = new SqlCommand(query, con);
                con.Open();
                StudentsDetailsGrid.DataSource = cmd.ExecuteReader();
                StudentsDetailsGrid.DataBind();
                con.Close();
            }
        }

        protected void StudentsDetailsGrid_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            
        }

  
        protected void StudentsDetailsGrid_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow gr = StudentsDetailsGrid.SelectedRow;
            Session["StudentID"] = gr.Cells[0];
            Response.Redirect("WebForm10.aspx");
        }

        protected void StudentsDetailsGrid_RowCommand(object sender, GridViewCommandEventArgs e)
        {
        //    if (e.CommandName == "ViewStudent")
        //    {
        //        int rowIndex = Convert.ToInt32(e.CommandArgument);

        //        //Reference the GridView Row.
        //        GridViewRow row = StudentsDetailsGrid.Rows[rowIndex];

        //        //Fetch value of Name.
        //        //string name = (row.FindControl("txtName") as TextBox).Text;
        //        int id = Convert.ToInt32(StudentsDetailsGrid.DataKeys[rowIndex].Value);
        //        using (SqlConnection con = new SqlConnection(constr))
        //        {
        //            string query = "select * from StudentDetails Where StudentID=" + id;
        //            SqlCommand cmd = new SqlCommand(query, con);
        //            con.Open();
        //            int rowdata = cmd.ExecuteNonQuery();
        //            con.Close();

        //            if (rowdata == 1)
        //            {
        //                Response.Write("<script>alert('Are you sure you want to delete this item?') </script>");
        //            }
        //            else
        //            {
        //                Response.Write("<script>alert('Somethiong went wrong!') </script>");
        //            }
        //        }

        //    if (e.CommandName == "EditStudent")
        //    {

        //    }

        //    if (e.CommandName == "AddFees")
        //    {

        //    }

        //    if (e.CommandName == "MarkAttendance")
        //    {

        //    }

        //    if (e.CommandName == "Delete")
        //    {

        //    }
        }

        protected void StudentsDetailsGrid_RowDeleting1(object sender, GridViewDeleteEventArgs e)
        {
            using (SqlConnection con = new SqlConnection(constr))
            {
                string query = "Delete * from StudentDetails";
                SqlCommand cmd = new SqlCommand(query, con);
                con.Open();
                StudentsDetailsGrid.DataSource = cmd.ExecuteReader();
                StudentsDetailsGrid.DataBind();
                con.Close();
            }
        }
    }
}