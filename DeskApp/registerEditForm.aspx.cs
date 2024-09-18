using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Xml.Linq;


namespace ImperialDeskApp.DeskApp
{
    public partial class registerEditForm : System.Web.UI.Page
    {
        SqlConnection CON = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string ids = Request.QueryString["Id"];
                Session["registerid"] = ids;
                SqlCommand cmd = new SqlCommand("getRegisterRecordsById", CON);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("Id", ids);
                CON.Open();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                sda.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    string email = ds.Tables[0].Rows[0]["Email"].ToString();
                    string username = ds.Tables[0].Rows[0]["Username"].ToString();
                    string password = ds.Tables[0].Rows[0]["Password"].ToString();
                   

                    txtEmail.Text = email;
                    txtUserName.Text = username;
                    txtPassword.Text = password;
                }
                CON.Close();
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("updateRegisterRecords", CON);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("Id", Session["registerid"].ToString());
            cmd.Parameters.AddWithValue("Email", txtEmail.Text);
            cmd.Parameters.AddWithValue("Username", txtUserName.Text);
            cmd.Parameters.AddWithValue("Password", txtPassword.Text);
            CON.Open();
            cmd.ExecuteNonQuery();
            Response.Redirect("registerTable.aspx");
            CON.Close();
        }
    }
}