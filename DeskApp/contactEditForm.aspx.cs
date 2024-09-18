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
    public partial class contactEditForm : System.Web.UI.Page
    {
        SqlConnection CON = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string ids = Request.QueryString["Id"];
                Session["contactid"] = ids;
                SqlCommand cmd = new SqlCommand("getContactRecordsById", CON);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("Id", ids);
                CON.Open();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                sda.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    string name = ds.Tables[0].Rows[0]["Name"].ToString();
                    string email = ds.Tables[0].Rows[0]["Email"].ToString();
                    string subject = ds.Tables[0].Rows[0]["Subject"].ToString();
                    string message = ds.Tables[0].Rows[0]["Message"].ToString();

                    txtName.Text = name;
                    txtEmail.Text = email;
                    txtSubject.Text = subject;
                    textareaMessage.Value = message;
                }
                CON.Close();
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("updateContactRecords", CON);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("Id", Session["contactid"].ToString());
            cmd.Parameters.AddWithValue("Name", txtName.Text);
            cmd.Parameters.AddWithValue("Email", txtEmail.Text);
            cmd.Parameters.AddWithValue("Subject", txtSubject.Text);
            cmd.Parameters.AddWithValue("Message", textareaMessage.Value);
            CON.Open();
            cmd.ExecuteNonQuery();
            Response.Redirect("contactTable.aspx");
            CON.Close();
        }
    }
}