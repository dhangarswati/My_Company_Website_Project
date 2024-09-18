﻿using System;
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
    public partial class employeeTable : System.Web.UI.Page
    {
        SqlConnection CON = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            displayRecords();
        }
        void displayRecords()
        {
            SqlCommand cmd = new SqlCommand("getEmployeeRecordsForDisplay", CON);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            CON.Open();
            adapter.Fill(ds);
            rptEmployeeDetails.DataSource = ds;
            rptEmployeeDetails.DataBind();
            CON.Close();
        }

        protected void LBtnDelete_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("deleteEmployeeRecords", CON);
            cmd.CommandType = CommandType.StoredProcedure;
            string idd = (((sender as LinkButton).NamingContainer.FindControl("lblId") as Label).Text);
            cmd.Parameters.AddWithValue("EmpId", idd);
            CON.Open();
            cmd.ExecuteNonQuery();
            CON.Close();
            displayRecords();
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string searchText = txtSearch.Text.Trim();

            using (SqlCommand cmd = new SqlCommand("filterEmployeeRecordByIdEmail", CON))
            {
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@SearchText", searchText);

            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            CON.Open();
            sda.Fill(ds);
            CON.Close();

            if (ds.Tables[0].Rows.Count > 0)
            {
                rptEmployeeDetails.DataSource = ds;
                rptEmployeeDetails.DataBind();
                lblNoRecords.Visible = false; // Hide "No records found" message
            }
            else
            {
                rptEmployeeDetails.DataSource = null;
                rptEmployeeDetails.DataBind();
                lblNoRecords.Visible = true; // Show "No records found" message
            }
        }
        // Clear the TextBox after search
        txtSearch.Text = string.Empty;
        }
    }
}