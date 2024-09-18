using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace ImperialDeskApp.Imperial
{
    public partial class Index : System.Web.UI.Page
    {
        SqlConnection CON = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //protected void btnSubmit_Click(object sender, EventArgs e)
        //{
        //    SqlCommand cmd = new SqlCommand("insertIntoContact", CON);
        //    cmd.CommandType = CommandType.StoredProcedure;
        //    cmd.Parameters.AddWithValue("Name", txtName.Text);
        //    cmd.Parameters.AddWithValue("Email", txtEmail.Text);
        //    cmd.Parameters.AddWithValue("Subject", txtSubject.Text);
        //    cmd.Parameters.AddWithValue("Message", textareaMessage.Value);

        //    CON.Open();
        //    cmd.ExecuteNonQuery();
        //    lblSubmit.Text = "Your message has been sent. Thank you!";
        //    lblSubmit.ForeColor = System.Drawing.Color.Red;
        //    CON.Close();
        //}
    }
}