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
    public partial class login : System.Web.UI.Page
    {
        SqlConnection CON = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("checkLoginDetails",CON);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("Username",txtUName.Text);
            cmd.Parameters.AddWithValue("Password",txtPassword.Text);
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adapter.Fill(ds);
           
            if (ds.Tables[0].Rows.Count > 0)
            {
                string role = ds.Tables[0].Rows[0]["Code"].ToString().ToLower();
                if (role == "admin")
                {
                    Response.Redirect("dashboard.aspx");
                }
                else if (role == "user")
                {
                    Response.Redirect("../Imperial/Index.aspx");
                }
                else
                {
                    lblLogin.Text = "Invalid role!";
                }

            }
            else 
            {
                lblLogin.Text = "Invalid Username and Password!";
            }
        }
    }
}