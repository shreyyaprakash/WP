using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Data.Sql;
using System.Data.OleDb;
using System.Windows.Forms;
using System.Configuration;

namespace WebApplication11
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedValue == "")
            {
                Label3.Text = "Please select speciality";
            }
            else
            {
                DropDownList2.Visible = true;
                string x = DropDownList1.SelectedValue;
                string connStr = ConfigurationManager.ConnectionStrings["mydb"].ConnectionString;
                SqlConnection con = new SqlConnection(connStr);
                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT name from dbo." + x, con);
                SqlDataReader dr;
                dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {
                    DropDownList2.Items.Clear();
                    while (dr.Read())
                    {


                          
                        DropDownList2.Items.Add(new ListItem(dr[0].ToString(), dr[0].ToString()));
                    }
                }
            }
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedValue == "" || DropDownList2.SelectedValue == "")
            { Label3.Text = "Invalid Entries"; }
           
            else
            {
                string s = TextBox1.Text;
                string connStr = ConfigurationManager.ConnectionStrings["mydb"].ConnectionString;
                SqlConnection con = new SqlConnection(connStr);
                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT id,password,pic FROM dbo.Userid where id='" + TextBox2.Text + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();

                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    //Label3.Text= "Insert into dbo.Reviews (Speciality,Doctor,Experience,Review) values ('" + DropDownList1.SelectedValue + "','" + DropDownList2.SelectedValue + "','" + DropDownList3.SelectedValue + "','" + TextBox1.Text+"')";
                    SqlCommand cmd1 = new SqlCommand("Insert into dbo.Reviews (Speciality,Doctor,Experience,Review) values ('" + DropDownList1.SelectedValue + "','" + DropDownList2.SelectedValue + "','" + DropDownList3.SelectedValue + "','" + TextBox1.Text + "')", con);
                    
                    
                    
                    cmd1.ExecuteNonQuery();
                    MessageBox.Show("Review Submitted!");
                    Response.Redirect("WebForm5.aspx");
                }
                else
                {
                    MessageBox.Show("Unauthorized to review our doctors");
                }
                con.Close();
                con.Close();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm5.aspx");
        }
    }
}