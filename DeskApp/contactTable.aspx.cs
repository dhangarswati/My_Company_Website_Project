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
    public partial class contactTable : System.Web.UI.Page
    {
        SqlConnection CON = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            displayRecords();
        }
        void displayRecords()
        {
            SqlCommand cmd = new SqlCommand("getContactRecordsForDisplay", CON);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            CON.Open();
            sda.Fill(ds);
            rptContactDetails.DataSource = ds;
            rptContactDetails.DataBind();
            CON.Close();
        }

        protected void LBtnDelete_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("deleteContactRecords", CON);
            cmd.CommandType = CommandType.StoredProcedure;
            string idd = (((sender as LinkButton).NamingContainer.FindControl("lblId") as Label).Text);
            cmd.Parameters.AddWithValue("Id", idd);
            CON.Open();
            cmd.ExecuteNonQuery();
            CON.Close();
            displayRecords();
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string searchText = txtSearch.Text.Trim();

            using (SqlCommand cmd = new SqlCommand("filterContactRecordByIdEmail", CON))
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
                    rptContactDetails.DataSource = ds;
                    rptContactDetails.DataBind();
                    lblNoRecords.Visible = false; // Hide "No records found" message
                }
                else
                {
                    rptContactDetails.DataSource = null;
                    rptContactDetails.DataBind();
                    lblNoRecords.Visible = true; // Show "No records found" message
                }
            }
                     // Clear the TextBox after search
                    txtSearch.Text = string.Empty;
        }
    }
}