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
    public partial class salary : System.Web.UI.Page
    {
        SqlConnection CON = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insertIntoSalary", CON);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@EmpName", txtEmpName.Text);
            cmd.Parameters.AddWithValue("@Class", txtClass.Text);
            cmd.Parameters.AddWithValue("@Deductions", txtDeductions.Text);

            CON.Open();

            using (SqlDataReader reader = cmd.ExecuteReader())
            {
                if (reader.Read())
                {
                    txtPay.Text = reader["BasicPay"].ToString();
                    txtSalary.Text = reader["Salary"].ToString();
                    txtTAll.Text = reader["TravelAllowance"].ToString();
                    txtMAll.Text = reader["MedicalAllowance"].ToString();
                    txtWAll.Text = reader["WashingAllowance"].ToString();
                    txtNetSalary.Text = reader["NetSalary"].ToString();
                }
            }

            lblSubmit.Text = "Salary Generated Successfully!";
            lblSubmit.ForeColor = System.Drawing.Color.Red;
            CON.Close();
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            // Clear the TextBox values
            txtEmpName.Text = string.Empty;
            txtClass.Text = string.Empty;
            txtPay.Text = string.Empty;
            txtSalary.Text = string.Empty;
            txtTAll.Text = string.Empty;
            txtMAll.Text = string.Empty;
            txtWAll.Text = string.Empty;
            txtDeductions.Text = string.Empty;
            txtNetSalary.Text = string.Empty;

            // Optionally, reset any labels or messages
            lblSubmit.Text = string.Empty;
        }
    }
}