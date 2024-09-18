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
    public partial class employee : System.Web.UI.Page
    {
        SqlConnection CON = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insertIntoEmployee", CON);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("EmpName", txtFullName.Text);
            cmd.Parameters.AddWithValue("Gender", rblGender.SelectedItem.Text);
            cmd.Parameters.AddWithValue("JoiningDate", txtJoin.Text);
            cmd.Parameters.AddWithValue("City", txtCity.Text);
            cmd.Parameters.AddWithValue("State", txtState.Text);
            cmd.Parameters.AddWithValue("Pincode", txtPincode.Text);
            cmd.Parameters.AddWithValue("Mobile", txtMobile.Text);
            cmd.Parameters.AddWithValue("Degree", ddlDegree.SelectedItem.Text);
            cmd.Parameters.AddWithValue("Branch", ddlBranch.SelectedItem.Text);
            cmd.Parameters.AddWithValue("Email", txtEmail.Text);
            cmd.Parameters.AddWithValue("Username", txtUserName.Text);
            cmd.Parameters.AddWithValue("Password", txtPassword.Text);
            cmd.Parameters.AddWithValue("Class", ddlClass.SelectedItem.Text);
            //cmd.Parameters.AddWithValue("BasicPay", txtPay.Text);
            //cmd.Parameters.AddWithValue("Salary", txtSalary.Text);
            cmd.Parameters.AddWithValue("BankAccount", txtAccount.Text);
            cmd.Parameters.AddWithValue("CreditCardType", ddlCards.SelectedItem.Text);
            cmd.Parameters.AddWithValue("CreditCardNumber", txtCardNo.Text);
            cmd.Parameters.AddWithValue("CVC", txtCVC.Text);
            // Get the selected values from the dropdowns
            string value1 = ddlMonth.SelectedItem.Value; // e.g., "08"
            string value2 = ddlYear.SelectedItem.Value;  // e.g., "2024"

            // Create a DateTime object with the first day of the selected month and year
            string formattedDate = $"{value1}-{value2}"; // "08-2024"

            // Add the DateTime object as a parameter
            cmd.Parameters.AddWithValue("ExpirationDate", formattedDate);
            string termscondition = customCheck.Checked ? "Yes" : "No";
            cmd.Parameters.AddWithValue("Terms", termscondition);
            CON.Open();
            SqlDataReader reader = cmd.ExecuteReader();

            if (reader.Read())
            {
                // Displaying fetched data in TextBoxes
                txtPay.Text = reader["BasicPay"].ToString();
                txtSalary.Text = reader["Salary"].ToString();
            }

            lblAdd.Text = "Employee Details Added Successfully!";
            lblAdd.ForeColor = System.Drawing.Color.Red;
            CON.Close();
        }

        // This method will reset all form fields when the "Refresh" button is clicked.
        protected void btnRefresh_Click(object sender, EventArgs e)
        {
            // Reset TextBox controls
            txtFullName.Text = string.Empty;
            txtJoin.Text = string.Empty;
            txtCity.Text = string.Empty;
            txtState.Text = string.Empty;
            txtPincode.Text = string.Empty;
            txtMobile.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtUserName.Text = string.Empty;
            //txtPassword.Text = string.Empty;
            //txtCPassword.Text = string.Empty;
            txtPay.Text = string.Empty;
            txtSalary.Text = string.Empty;
            txtAccount.Text = string.Empty;
            txtCardNo.Text = string.Empty;
            txtCVC.Text = string.Empty;

            // Reset DropDownList controls
            ddlDegree.ClearSelection();
            ddlBranch.ClearSelection();
            ddlClass.ClearSelection();
            ddlCards.ClearSelection();
            ddlMonth.ClearSelection();
            ddlYear.ClearSelection();

            // Reset RadioButtonList controls
            rblGender.ClearSelection();

            // Uncheck the CheckBox
            customCheck.Checked = false;

            // Optionally, clear any labels or validation summaries
            lblAdd.Text = string.Empty;
            ValidationSummary1.Controls.Clear();
        }
    }
}