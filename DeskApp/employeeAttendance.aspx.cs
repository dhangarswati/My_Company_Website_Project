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
    public partial class employeeAttendance : System.Web.UI.Page
    {
        SqlConnection CON = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insertIntoEmpAttendance", CON);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("EmpId",txtEmployeeID.Text);
            cmd.Parameters.AddWithValue("Date",txtDate.Text);
            cmd.Parameters.AddWithValue("CheckInTime",txtCheckInTime.Text);
            cmd.Parameters.AddWithValue("CheckOutTime",txtCheckOutTime.Text);
            cmd.Parameters.AddWithValue("Status",ddlStatus.SelectedItem.Text);
            cmd.Parameters.AddWithValue("Remarks", txtRemarks.Text);
            string termscondition = customCheck.Checked ? "Yes" : "No";
            cmd.Parameters.AddWithValue("Terms", termscondition);
            CON.Open();
            cmd.ExecuteNonQuery();
            lblSubmit.Text = "Employee Attendance Submit Successfully!";
            lblSubmit.ForeColor = System.Drawing.Color.Red;
            CON.Close();
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            // Clear all input fields
            txtEmployeeID.Text = string.Empty;
            txtDate.Text = string.Empty;
            txtCheckInTime.Text = string.Empty;
            txtCheckOutTime.Text = string.Empty;
            ddlStatus.ClearSelection();
            txtRemarks.Text = string.Empty;
            lblEmployeeIDOverview.Text = string.Empty;
            lblDateOverview.Text = string.Empty;
            lblCheckInTimeOverview.Text = string.Empty;
            lblCheckOutTimeOverview.Text = string.Empty;
            lblStatusOverview.Text = string.Empty;
            lblRemarksOverview.Text = string.Empty;
            customCheck.Checked = false;
            // Optionally, clear any labels or validation summaries
            lblSubmit.Text = string.Empty;
            ValidationSummaryAttendance.Controls.Clear();
        }

        // Override the Render method to register any controls for event validation if needed
        protected override void Render(HtmlTextWriter writer)
        {
            // Ensure any dynamically added controls are registered for event validation here, if any
            Page.ClientScript.RegisterForEventValidation(btnSubmit.UniqueID);
            Page.ClientScript.RegisterForEventValidation(btnClear.UniqueID);

            base.Render(writer);
        }
    }
}