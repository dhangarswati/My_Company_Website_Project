using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace ImperialDeskApp.DeskApp
{
    public partial class leave : System.Web.UI.Page
    {
        SqlConnection CON = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadLeaveData();
                BindGrid(); // Bind grid on first load
            }
        }

        private void LoadLeaveData()
        {
            try
            {
                DataTable dtLeave = new DataTable();

                using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString()))
                {
                    using (SqlCommand cmd = new SqlCommand("SELECT Id, EmpName, LeaveType, StartDate, EndDate, Reason, Status FROM TBLLeave", conn))
                    {
                        SqlDataAdapter da = new SqlDataAdapter(cmd);
                        da.Fill(dtLeave);
                        gvLeaveReport.DataSource = dtLeave;
                        gvLeaveReport.DataBind();
                    }
                }
            }
            catch (Exception ex)
            {
                lblMessage.Text = "An error occurred: " + ex.Message;
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insertLeaveRequest", CON);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("EmpName", txtEmpName.Text);
            cmd.Parameters.AddWithValue("LeaveType", ddlLeaveType.SelectedItem.Text);
            cmd.Parameters.AddWithValue("StartDate", txtStartDate.Text);
            cmd.Parameters.AddWithValue("EndDate", txtEndDate.Text);
            cmd.Parameters.AddWithValue("Reason", txtReason.Text);
            cmd.Parameters.AddWithValue("Status", txtStatus.Text);
            CON.Open();
            cmd.ExecuteNonQuery();
            lblSubmit.Text = "Leave Applied Successfully!";
            lblSubmit.ForeColor = System.Drawing.Color.Red;
            CON.Close();
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            // Reset the DropDownList to the default item
            ddlLeaveType.SelectedIndex = -1; // Resets to the first item or default

            // Clear the TextBox values
            txtEmpName.Text = string.Empty;
            txtStartDate.Text = string.Empty;
            txtEndDate.Text = string.Empty;
            txtReason.Text = string.Empty;
            txtStatus.Text = string.Empty;

            // Optionally, reset any labels or messages
            lblSubmit.Text = string.Empty;
        }

        protected void gvLeaveReport_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                // Access the "Status" column, assuming it's the 6th column (index 5)
                string status = DataBinder.Eval(e.Row.DataItem, "Status").ToString();

                // Set background color based on leave status
                switch (status)
                {
                    case "Approved":
                        e.Row.BackColor = System.Drawing.Color.LightGreen;
                        break;
                    case "Pending":
                        e.Row.BackColor = System.Drawing.Color.Yellow;
                        break;
                    case "Rejected":
                        e.Row.BackColor = System.Drawing.Color.LightCoral;
                        break;
                    default:
                        e.Row.BackColor = System.Drawing.Color.White;
                        break;
                }
          
                // Assuming Start Date is in the 4th column (index 3)
                var startDateString = e.Row.Cells[3].Text;
                // Assuming End Date is in the 5th column (index 4)
                var endDateString = e.Row.Cells[4].Text;

                // Use DateTime.TryParse to safely parse dates
                if (DateTime.TryParse(startDateString, out DateTime startDate))
                {
                    e.Row.Cells[3].Text = startDate.ToString("MM/dd/yyyy"); // Format as needed
                }
                else
                {
                    e.Row.Cells[3].Text = "Invalid Date";
                }

                if (DateTime.TryParse(endDateString, out DateTime endDate))
                {
                    e.Row.Cells[4].Text = endDate.ToString("MM/dd/yyyy"); // Format as needed
                }
                else
                {
                    e.Row.Cells[4].Text = "Invalid Date";
                }
            }
        }

        private void BindGrid(int id = 0)
        {
            SqlCommand cmd = new SqlCommand("fetchLeaveData", CON);
            cmd.CommandType = CommandType.StoredProcedure;
          
            cmd.Parameters.AddWithValue("@Id", DBNull.Value); // Pass NULL for all records
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            gvLeaveReport.DataSource = dt;
            gvLeaveReport.DataBind();
        }

        protected void gvLeaveReport_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvLeaveReport.EditIndex = e.NewEditIndex;
            BindGrid(); // Re-bind the grid to show edit controls
        }

        protected void gvLeaveReport_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvLeaveReport.EditIndex = -1;
            BindGrid(); // Re-bind the grid to exit edit mode
        }

        protected void gvLeaveReport_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = gvLeaveReport.Rows[e.RowIndex];
            int id = Convert.ToInt32(gvLeaveReport.DataKeys[e.RowIndex].Value);

            // Retrieve the Status value from the TextBox
            string status = ((TextBox)row.FindControl("txtStatus")).Text;

            using (SqlCommand cmd = new SqlCommand("updateLeaveStatus", CON)) // Stored procedure name
            {
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@Id", id);
                cmd.Parameters.AddWithValue("@Status", status);

                CON.Open();
                cmd.ExecuteNonQuery();
                CON.Close();
            }

            lblMessage.Text = "Status updated successfully!";
            lblMessage.ForeColor = System.Drawing.Color.Red;

            gvLeaveReport.EditIndex = -1;
            BindGrid(); // Refresh grid to show updated data
        }

        protected void gvLeaveReport_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(gvLeaveReport.DataKeys[e.RowIndex].Value);

            using (SqlCommand cmd = new SqlCommand("deleteLeaveData", CON))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Id", id);

                CON.Open();
                cmd.ExecuteNonQuery();
                CON.Close();
            }

            lblMessage.Text = "Record deleted successfully!";
            lblMessage.ForeColor = System.Drawing.Color.Red;

            BindGrid(); // Refresh grid to remove deleted record

        }
    }
}