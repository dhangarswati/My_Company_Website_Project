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
    public partial class employeeEditForm : System.Web.UI.Page
    {
        SqlConnection CON = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string ids = Request.QueryString["Id"];
                Session["employeeid"] = ids;
                SqlCommand cmd = new SqlCommand("getEmployeeRecordsById", CON);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("EmpId", ids);
                CON.Open();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                sda.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    string empname = ds.Tables[0].Rows[0]["EmpName"].ToString();
                    string gender = ds.Tables[0].Rows[0]["Gender"].ToString();
                    string joiningdate = ds.Tables[0].Rows[0]["JoiningDate"].ToString();
                    string city = ds.Tables[0].Rows[0]["City"].ToString();
                    string state = ds.Tables[0].Rows[0]["State"].ToString();
                    string pincode = ds.Tables[0].Rows[0]["Pincode"].ToString();
                    string mobile = ds.Tables[0].Rows[0]["Mobile"].ToString();
                    string degree = ds.Tables[0].Rows[0]["Degree"].ToString();
                    string branch = ds.Tables[0].Rows[0]["Branch"].ToString();
                    string email = ds.Tables[0].Rows[0]["Email"].ToString();
                    string username = ds.Tables[0].Rows[0]["Username"].ToString();
                    string password = ds.Tables[0].Rows[0]["Password"].ToString();
                    string classname = ds.Tables[0].Rows[0]["Class"].ToString();
                    string basicpay = ds.Tables[0].Rows[0]["BasicPay"].ToString();
                    string salary = ds.Tables[0].Rows[0]["Salary"].ToString();
                    string bankaccount = ds.Tables[0].Rows[0]["BankAccount"].ToString();
                    string creditcardtype = ds.Tables[0].Rows[0]["CreditCardType"].ToString();

                    txtFullName.Text = empname;
                    rblGender.Text = gender;
                    txtJoin.Text=joiningdate;
                    txtCity.Text = city;
                    txtState.Text = state;
                    txtPincode.Text = pincode;
                    txtMobile.Text = mobile;
                    ddlDegree.Text = degree;
                    ddlBranch.Text = branch;
                    txtEmail.Text = email;
                    txtUserName.Text = username;
                    txtPassword.Text = password;
                    ddlClass.Text = classname;
                    txtPay.Text = basicpay;
                    txtSalary.Text = salary;
                    txtAccount.Text = bankaccount;
                    ddlCards.Text = creditcardtype;
                }
                CON.Close();
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("updateEmployeeRecords", CON);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("EmpId", Session["employeeid"].ToString());
            cmd.Parameters.AddWithValue("EmpName", txtFullName.Text);
            cmd.Parameters.AddWithValue("Gender", rblGender.SelectedItem.Text);
            cmd.Parameters.AddWithValue("JoiningDate", txtJoin.Text);
            cmd.Parameters.AddWithValue("City", txtCity.Text);
            cmd.Parameters.AddWithValue("State", txtState.Text);
            cmd.Parameters.AddWithValue("Pincode", txtPincode.Text);
            cmd.Parameters.AddWithValue("Mobile", txtMobile.Text);
            cmd.Parameters.AddWithValue("Degree", ddlDegree.SelectedItem.Text);
            cmd.Parameters.AddWithValue("Branch", ddlBranch.SelectedItem.Text);
            cmd.Parameters.AddWithValue("Email", txtEmail.Text);
            cmd.Parameters.AddWithValue("Username", txtUserName.Text);
            cmd.Parameters.AddWithValue("Password", txtPassword.Text);
            cmd.Parameters.AddWithValue("Class", ddlClass.SelectedItem.Text);
            cmd.Parameters.AddWithValue("BasicPay", txtPay.Text);
            cmd.Parameters.AddWithValue("Salary", txtSalary.Text);
            cmd.Parameters.AddWithValue("BankAccount", txtAccount.Text);
            cmd.Parameters.AddWithValue("CreditCardType", ddlCards.SelectedItem.Text);
            CON.Open();
            cmd.ExecuteNonQuery();
            Response.Redirect("employeeTable.aspx");
            CON.Close();
        }
    }
}