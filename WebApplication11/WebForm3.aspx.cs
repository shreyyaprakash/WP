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
    public partial class WebForm3 : System.Web.UI.Page
    {
        string x = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["Name"] != null)
                x = Request.QueryString["Name"];
            string connStr = ConfigurationManager.ConnectionStrings["mydb"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);
            con.Open();
           
            SqlCommand cmd = new SqlCommand("SELECT name from dbo." + x, con);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();

            if (dr.HasRows)
            {
                //DropDownList1.Items.Clear();
                //DropDownList1.Items.Add(new ListItem("Please Select", ""));
                while (dr.Read())
                {
                    DropDownList1.Items.Add(new ListItem(dr[0].ToString(), dr[0].ToString()));
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedValue == "")
            {
                DropDownList1.Enabled = true;
                Label3.Text = "Choose Doctor";
               
            }
            else
            {
                DropDownList2.Visible = true;
                string connStr = ConfigurationManager.ConnectionStrings["mydb"].ConnectionString;
                SqlConnection con = new SqlConnection(connStr);
                con.Open();
                //Label1.Text = "SELECT Morning,Afternoon,Evening from dbo." + x + "where Name='" + DropDownList1.SelectedValue + "'";


                SqlCommand cmd = new SqlCommand("SELECT Morning,Afternoon,Evening from dbo." + x + " where Name='" + DropDownList1.SelectedValue + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();

                da.Fill(dt);
                string p = dt.Rows[0][0].ToString();
                string a = "Morning ( 9:00 AM to 9:40 AM )";
                string q = dt.Rows[0][1].ToString();
                string b = "Afternoon ( 12:00 PM to 12:40 PM )";
                string r = dt.Rows[0][2].ToString();
                string c = "Evening ( 8:00 PM to 8:40 PM )";
                DropDownList2.Items.Clear();
                DropDownList2.Items.Add(new ListItem("Please Select", ""));
                if (p == "0")
                {
                    DropDownList2.Items.Add(new ListItem(a, "Morning"));

                }
                if (q == "0")
                {
                    DropDownList2.Items.Add(new ListItem(b, "Afternoon"));

                }
                if (r == "0")
                {
                    DropDownList2.Items.Add(new ListItem(c, "Evening"));

                }
                if(p=="1"&&q=="1"&&r=="1")
                {
                     MessageBox.Show("No slot available. Choose another doctor!");
                    
                    Response.Redirect("WebForm3.aspx?Name=" + x);
                }

                con.Close();
                DropDownList1.Enabled = false;

            }

            
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedValue == "" || DropDownList2.SelectedValue == "")
            {
                Label3.Text = "Invalid Entries";
            }
            else
            {
                string connStr = ConfigurationManager.ConnectionStrings["mydb"].ConnectionString;
                SqlConnection con = new SqlConnection(connStr);
                con.Open();
                string s = "";
                if (DropDownList2.SelectedValue == "Morning")
                {
                    s = "M_PNO";
                }
                else if (DropDownList2.SelectedValue == "Afternoon")
                {
                    s = "A_PNO";

                }
                else
                {
                    s = "E_PNO";
                }


                SqlCommand cmd = new SqlCommand("Update dbo." + x + " set " + DropDownList2.SelectedValue + "=1, " + s + "='" + TextBox1.Text + "' where Name = '" + DropDownList1.SelectedValue + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("WebForm4.aspx");
            }
        }

        protected void Reset_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm3.aspx?Name=" + x);
        }
    }
}