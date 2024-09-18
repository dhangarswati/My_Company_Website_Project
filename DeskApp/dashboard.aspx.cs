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
    public partial class dashboard : System.Web.UI.Page
    {
        SqlConnection CON = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        protected void btnSaveEvent_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("SaveEventDetails", CON);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@EventName", txtEventName.Text);
            cmd.Parameters.AddWithValue("@EventDate", Convert.ToDateTime(txtEventDate.Text));
            cmd.Parameters.AddWithValue("@EventDescription", txtEventDescription.Text);
            cmd.Parameters.AddWithValue("@EventColor", ddlEventColor.SelectedValue);
            cmd.Parameters.AddWithValue("@EventIcon", ddlEventIcon.SelectedValue);

            CON.Open();
            cmd.ExecuteNonQuery();
            lblSave.Text = "Event Saved successfully!";
            lblSave.ForeColor = System.Drawing.Color.Red;

            // Clear the form fields
            txtEventName.Text = "";
            txtEventDate.Text = "";
            txtEventDescription.Text = "";
            ddlEventColor.SelectedIndex = 0;
            ddlEventIcon.SelectedIndex = 0;
            CON.Close();
        }
    }
}