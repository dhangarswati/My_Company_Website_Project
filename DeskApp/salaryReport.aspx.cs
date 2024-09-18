using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace ImperialDeskApp.DeskApp
{
    public partial class salaryReport : System.Web.UI.Page
    {
        SqlConnection CON = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadSalaryData();
                int Id = 0; // Fetch all records by default
                BindGrid(Id); // Call with appropriate Id
            }
        }
        private void LoadSalaryData()
        {
            try
            {
                // Create a DataTable to hold salary data
                DataTable dtSalary = new DataTable();

                // Create a connection to the database
                using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString()))
                {
                    // Create a command object to select salary details
                    using (SqlCommand cmd = new SqlCommand("SELECT Id,EmpName,Class,BasicPay,Salary,TravelAllowance,MedicalAllowance,WashingAllowance,Deductions,NetSalary FROM TBLSalary", conn))
                    {
                        // Create a data adapter to fill the DataTable
                        SqlDataAdapter da = new SqlDataAdapter(cmd);

                        // Fill the DataTable with salary data
                        da.Fill(dtSalary);

                        // Bind the DataTable to the GridView
                        gvSalaryReport.DataSource = dtSalary;
                        gvSalaryReport.DataBind();
                    }
                }
            }
            catch (Exception ex)
            {
                // Handle exceptions (e.g., log error or display a message)
                lblMessage.Text = "An error occurred: " + ex.Message;
                lblMessage.ForeColor = System.Drawing.Color.Green;
            }
        }

        protected void gvSalaryReport_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                // Checking and formatting the "Salary" column, assuming it is in the fifth column (index 4)
                var salary = e.Row.Cells[4].Text; // Fifth column
                if (decimal.TryParse(salary, out decimal result))
                {
                    e.Row.Cells[4].Text = result.ToString();
                }
                else
                {
                    e.Row.Cells[4].Text = "";
                }
            }
        }

        private void BindGrid(int id = 0)
        {
            SqlCommand cmd = new SqlCommand("fetchSalaryData", CON);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Id", DBNull.Value); // Pass NULL for all records
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            // Ensure DataTable has the 'Id' column
            if (!dt.Columns.Contains("Id"))
            {
                throw new Exception("DataTable does not contain 'Id' column.");
            }

            gvSalaryReport.DataSource = dt;
            gvSalaryReport.DataBind();
        }

        protected void gvSalaryReport_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvSalaryReport.EditIndex = e.NewEditIndex;
            BindGrid();
        }

        protected void gvSalaryReport_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvSalaryReport.EditIndex = -1;
            BindGrid();
        }

        protected void gvSalaryReport_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            // Ensure that "Id" matches the DataKeyNames value
            string id = gvSalaryReport.DataKeys[e.RowIndex].Value.ToString();

            using (SqlCommand cmd = new SqlCommand("deleteSalaryData", CON))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Id", id);
                CON.Open();
                cmd.ExecuteNonQuery();
                CON.Close();
            }
            // Display success message
            lblMessage.Text = "Record deleted successfully!";
            lblMessage.ForeColor = System.Drawing.Color.Green;

            BindGrid();
        }
        protected void gvSalaryReport_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = gvSalaryReport.Rows[e.RowIndex];

            // Ensure that "Id" matches the DataKeyNames value
            int id = Convert.ToInt32(gvSalaryReport.DataKeys[e.RowIndex].Value);

            // Retrieve updated values from the TextBox controls
            string empName = ((TextBox)row.Cells[1].Controls[0]).Text;
            string empClass = ((TextBox)row.Cells[2].Controls[0]).Text;

            // Simplified conversion with default values on failure
            decimal basicPay = decimal.TryParse(((TextBox)row.Cells[3].Controls[0]).Text, out decimal bp) ? bp : 0;
            decimal salary = decimal.TryParse(((TextBox)row.Cells[4].Controls[0]).Text, out decimal sal) ? sal : 0;
            decimal travelAllowance = decimal.TryParse(((TextBox)row.Cells[5].Controls[0]).Text, out decimal ta) ? ta : 0;
            decimal medicalAllowance = decimal.TryParse(((TextBox)row.Cells[6].Controls[0]).Text, out decimal ma) ? ma : 0;
            decimal washingAllowance = decimal.TryParse(((TextBox)row.Cells[7].Controls[0]).Text, out decimal wa) ? wa : 0;
            decimal deductions = decimal.TryParse(((TextBox)row.Cells[8].Controls[0]).Text, out decimal ded) ? ded : 0;
            decimal netSalary = decimal.TryParse(((TextBox)row.Cells[9].Controls[0]).Text, out decimal ns) ? ns : 0;

            // Update the record using the updateSalaryData stored procedure
            using (SqlCommand cmd = new SqlCommand("updateSalaryData", CON))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@Id", id);
                cmd.Parameters.AddWithValue("@EmpName", empName);
                cmd.Parameters.AddWithValue("@Class", empClass);
                cmd.Parameters.AddWithValue("@BasicPay", basicPay);
                cmd.Parameters.AddWithValue("@Salary", salary);
                cmd.Parameters.AddWithValue("@TravelAllowance", travelAllowance);
                cmd.Parameters.AddWithValue("@MedicalAllowance", medicalAllowance);
                cmd.Parameters.AddWithValue("@WashingAllowance", washingAllowance);
                cmd.Parameters.AddWithValue("@Deductions", deductions);
                cmd.Parameters.AddWithValue("@NetSalary", netSalary);

                CON.Open();
                cmd.ExecuteNonQuery();
                CON.Close();
            }

            // Fetch the updated record to confirm the changes
            using (SqlCommand cmd = new SqlCommand("fetchUpdatedSalaryData", CON))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Id", id);

                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);

                // Optional: Use this DataTable to display updated record or perform additional actions
                if (dt.Rows.Count > 0)
                {
                    // Example: Display updated record in a label or other control
                    lblMessage.Text = "Record updated successfully!";
                    lblMessage.ForeColor = System.Drawing.Color.Green;
                }
            }

            // Reset the edit index and re-bind the GridView
            gvSalaryReport.EditIndex = -1;
            BindGrid();
        }
    }
}