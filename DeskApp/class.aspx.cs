using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.NetworkInformation;

namespace ImperialDeskApp.DeskApp
{
    public partial class _class : System.Web.UI.Page
    {
        SqlConnection CON = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insertIntoClass", CON);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("Class", txtClass.Text);
            cmd.Parameters.AddWithValue("BasicPay", txtPay.Text);
            cmd.Parameters.AddWithValue("Salary", txtSalary.Text);
            cmd.Parameters.AddWithValue("TravelAllowance", txtTAll.Text);
            cmd.Parameters.AddWithValue("MedicalAllowance", txtMAll.Text);
            cmd.Parameters.AddWithValue("WashingAllowance", txtWAll.Text);
            CON.Open();
            cmd.ExecuteNonQuery();
            lblAdd.Text = "New Class Added Successfully!";
            lblAdd.ForeColor = System.Drawing.Color.Red;
            CON.Close();
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            // Clear the TextBox values
            txtClass.Text = string.Empty;
            txtPay.Text = string.Empty;
            txtSalary.Text = string.Empty;
            txtTAll.Text = string.Empty;
            txtMAll.Text = string.Empty;
            txtWAll.Text = string.Empty;

            // Optionally, reset any labels or messages
            lblAdd.Text = string.Empty;
        }
    }
}