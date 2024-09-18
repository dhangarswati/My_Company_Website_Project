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
    public partial class register : System.Web.UI.Page
    {
        SqlConnection CON =new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insertIntoRegister", CON);  
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("Email",txtEmail.Text);
            cmd.Parameters.AddWithValue("Username",txtUserName.Text);
            cmd.Parameters.AddWithValue("Password",txtPassword.Text);
            cmd.Parameters.AddWithValue("CPassword", txtCPassword.Text);
            //cmd.Parameters.AddWithValue("FullName", txtFullName.Text);
            //cmd.Parameters.AddWithValue("Gender", rblGender.SelectedItem.Text);
            //cmd.Parameters.AddWithValue("City", txtCity.Text);
            //cmd.Parameters.AddWithValue("State", txtState.Text);
            //cmd.Parameters.AddWithValue("CreditCardType", ddlCards.SelectedItem.Text);
            //cmd.Parameters.AddWithValue("CreditCardNumber", txtCardNo.Text);
            //cmd.Parameters.AddWithValue("CVC", txtCVC.Text);
            //// Get the selected values from the dropdowns
            //string value1 = ddlMonth.SelectedItem.Value; // e.g., "08"
            //string value2 = ddlYear.SelectedItem.Value;  // e.g., "2024"

            //// Create a DateTime object with the first day of the selected month and year
            //string formattedDate = $"{value1}-{value2}"; // "08-2024"

            //// Add the DateTime object as a parameter
            //cmd.Parameters.AddWithValue("ExpirationDate", formattedDate);
            string termscondition = customCheck.Checked ? "Yes" : "No";
            cmd.Parameters.AddWithValue("Terms", termscondition);
            CON.Open();
            cmd.ExecuteNonQuery();
            lblRegister.Text = "Account Created Successfully!";
            lblRegister.ForeColor = System.Drawing.Color.Red;
            CON.Close();
        }
    }
}